import 'dart:convert';
import 'dart:io';

Future<void> main() async {
  final specFile = File('tool/spec/openapi.json');
  final endpointsFile = File('tool/spec/endpoints_2024.json');
  if (!specFile.existsSync()) {
    stderr.writeln('Missing OpenAPI spec at \'${specFile.path}\'.');
    exitCode = 1;
    return;
  }
  final rawSpec = jsonDecode(await specFile.readAsString()) as Map<String, dynamic>;
  final rawEndpoints = jsonDecode(await endpointsFile.readAsString()) as Map<String, dynamic>;
  final allowedEndpoints = rawEndpoints.keys.toSet();
  final originalPaths = Map<String, dynamic>.from(rawSpec['paths'] as Map);
  final additions = <String, dynamic>{};

  bool shouldDuplicatePath(String path) {
    if (path == '/api/2014' || path == '/api/2014/{endpoint}') {
      return true;
    }
    final segments = path.split('/')..removeWhere((segment) => segment.isEmpty);
    if (segments.length < 3) {
      return false;
    }
    final resource = segments[2];
    return allowedEndpoints.contains(resource);
  }

  dynamic deepCopy(dynamic value) => jsonDecode(jsonEncode(value));

  for (final entry in originalPaths.entries) {
    final path = entry.key;
    if (!path.startsWith('/api/2014')) {
      continue;
    }
    if (!shouldDuplicatePath(path)) {
      continue;
    }
    final replacement = path.replaceFirst('/api/2014', '/api/2024');
    if (originalPaths.containsKey(replacement) || additions.containsKey(replacement)) {
      continue;
    }
    additions[replacement] = deepCopy(entry.value);
  }

  final mergedPaths = <String, dynamic>{
    ...originalPaths,
    ...additions,
  };
  final sortedEntries = mergedPaths.entries.toList()
    ..sort((a, b) => a.key.compareTo(b.key));
  rawSpec['paths'] = {for (final entry in sortedEntries) entry.key: entry.value};

  void normalizeAnyOf(dynamic node) {
    if (node is Map<String, dynamic>) {
      if (node.containsKey('anyOf')) {
        node
          ..remove('anyOf')
          ..putIfAbsent('type', () => 'object')
          ..putIfAbsent('additionalProperties', () => <String, dynamic>{});
      }
      for (final value in node.values) {
        normalizeAnyOf(value);
      }
    } else if (node is List) {
      for (final value in node) {
        normalizeAnyOf(value);
      }
    }
  }

  final schemas =
      (rawSpec['components']?['schemas'] as Map<String, dynamic>?);
  if (schemas != null) {
    for (final schema in schemas.values) {
      normalizeAnyOf(schema);
    }
  }

  final targetFile = File('tool/spec/swagger/5esrd.swagger.json');
  await targetFile.writeAsString(const JsonEncoder.withIndent('  ').convert(rawSpec));
  stdout.writeln('Prepared merged OpenAPI spec with ${additions.length} duplicated paths.');
}
