import 'package:meta/meta.dart';

import '../version.dart';

/// Default endpoints exposed by https://www.dnd5eapi.co.
@immutable
class ApiEndpoints {
  ApiEndpoints({Uri? restBase, Uri? graphQlEndpoint})
    : restBase = restBase ?? defaultRestBase,
      graphQlEndpoint = graphQlEndpoint ?? defaultGraphQlEndpoint;

  /// Primary REST host.
  final Uri restBase;

  /// Primary GraphQL endpoint.
  final Uri graphQlEndpoint;

  static final Uri defaultRestBase = Uri.parse('https://www.dnd5eapi.co');
  static final Uri defaultGraphQlEndpoint = Uri.parse(
    'https://www.dnd5eapi.co/graphql',
  );

  /// Resolves the base URI for a REST call targeting [version].
  Uri restBaseFor(SrdVersion version, {Uri? override}) {
    final base = override ?? restBase;
    final segments = <String>[
      ...base.pathSegments.where((segment) => segment.isNotEmpty),
      'api',
      version.restPathSegment,
    ];
    return base.replace(pathSegments: segments);
  }

  /// Resolves a concrete REST URI by combining [relativePath] with the versioned
  /// base URL.
  Uri resolveRestUri(SrdVersion version, String relativePath, {Uri? override}) {
    final cleaned = relativePath
        .split('/')
        .where((segment) => segment.isNotEmpty)
        .toList(growable: false);
    final base = restBaseFor(version, override: override);
    final segments = <String>[...base.pathSegments, ...cleaned];
    return base.replace(pathSegments: segments);
  }

  /// Ensures GraphQL endpoint allows custom overrides.
  Uri resolveGraphQl({Uri? override}) => override ?? graphQlEndpoint;
}
