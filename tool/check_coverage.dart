import 'dart:convert';
import 'dart:io';

Future<void> main() async {
  final restSummary = await _verifyGeneratedModels();
  final restAvailability = await _verifyRestAvailability();
  final graphQlOk = await _verifyGraphQl();

  if (restSummary && restAvailability && graphQlOk) {
    stdout.writeln(
      'All REST schemas have generated Dart classes, REST endpoints responded successfully, and GraphQL queries returned data.',
    );
  } else {
    exitCode = 1;
  }
}

Future<bool> _verifyGeneratedModels() async {
  final swaggerFile = File('tool/spec/swagger/5esrd.swagger.json');
  final modelsFile = File('lib/src/generated/rest/5esrd.models.swagger.dart');
  if (!swaggerFile.existsSync() || !modelsFile.existsSync()) {
    stderr.writeln('Missing swagger or generated models. Run prepare_openapi/build_runner.');
    return false;
  }

  final swagger = jsonDecode(await swaggerFile.readAsString()) as Map<String, dynamic>;
  final schemas = (swagger['components']?['schemas'] as Map<String, dynamic>?)?.keys ?? const Iterable<String>.empty();
  final modelsContent = await modelsFile.readAsString();
  final missingSchemas = <String>[];
  for (final schema in schemas) {
    final candidate = _schemaToClass(schema);
    if (!_containsClass(modelsContent, candidate)) {
      missingSchemas.add(schema);
    }
  }

  if (missingSchemas.isNotEmpty) {
    stderr.writeln('Missing generated Dart classes for schemas:');
    for (final schema in missingSchemas) {
      stderr.writeln(' - $schema');
    }
    return false;
  }
  return true;
}

Future<bool> _verifyRestAvailability() async {
  final client = HttpClient();
  try {
    var ok = true;
    for (final version in ['2014', '2024']) {
      final baseUri = Uri.parse('https://www.dnd5eapi.co/api/$version');
      final index = await _fetchJson(client, baseUri);
      if (index is! Map) {
        stderr.writeln('Unexpected index payload for $version');
        ok = false;
        continue;
      }
      final entries = index.cast<String, dynamic>();
      for (final entry in entries.entries) {
        final path = entry.value.toString();
        final uri = Uri.parse('https://www.dnd5eapi.co$path');
        final success = await _checkGet(client, uri);
        if (!success) {
          stderr.writeln('Failed to fetch $uri');
          ok = false;
        }
      }
    }
    return ok;
  } finally {
    client.close(force: true);
  }
}

Future<bool> _verifyGraphQl() async {
  final client = HttpClient();
  try {
    final endpoint = Uri.parse('https://www.dnd5eapi.co/graphql');
    final queries = [
      'query AbilityScores { abilityScores(limit: 1) { index name } }',
      'query Monsters { monsters(limit: 1) { index name } }',
    ];
    var ok = true;
    for (final query in queries) {
      final data = await _postGraphQl(client, endpoint, {'query': query});
      if (data['errors'] != null) {
        stderr.writeln('GraphQL query failed: $query -> ${data['errors']}');
        ok = false;
      }
    }
    return ok;
  } finally {
    client.close(force: true);
  }
}

Future<dynamic> _fetchJson(HttpClient client, Uri uri) async {
  final request = await client.getUrl(uri);
  final response = await request.close();
  final body = await response.transform(utf8.decoder).join();
  if (response.statusCode < 200 || response.statusCode >= 300) {
    throw HttpException('GET ${uri.toString()} failed: ${response.statusCode}');
  }
  return jsonDecode(body);
}

Future<bool> _checkGet(HttpClient client, Uri uri) async {
  try {
    await _fetchJson(client, uri);
    return true;
  } catch (error) {
    stderr.writeln(error);
    return false;
  }
}

Future<Map<String, dynamic>> _postGraphQl(
  HttpClient client,
  Uri uri,
  Map<String, dynamic> payload,
) async {
  final request = await client.postUrl(uri);
  request.headers.contentType = ContentType.json;
  request.write(jsonEncode(payload));
  final response = await request.close();
  final body = await response.transform(utf8.decoder).join();
  if (response.statusCode < 200 || response.statusCode >= 300) {
    throw HttpException('GraphQL POST failed: ${response.statusCode} -> $body');
  }
  final decoded = jsonDecode(body);
  if (decoded is Map<String, dynamic>) {
    return decoded;
  }
  throw StateError('Unexpected GraphQL payload: $body');
}

String _schemaToClass(String schemaName) {
  final parts = schemaName.split(RegExp(r'[^A-Za-z0-9]+')).where((part) => part.isNotEmpty);
  if (parts.isEmpty) {
    return schemaName;
  }
  return parts.map(_normalizePart).join();
}

String _normalizePart(String part) {
  final first = part.substring(0, 1).toUpperCase();
  if (part.length == 1) {
    return first;
  }
  final rest = part.substring(1);
  final isAllUpper = part.toUpperCase() == part;
  final normalizedRest = isAllUpper ? rest.toLowerCase() : rest;
  return first + normalizedRest;
}

bool _containsClass(String content, String className) {
  final token = 'class $className';
  return content.contains(token);
}
