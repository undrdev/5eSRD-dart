import 'package:meta/meta.dart';

import 'package:fiveesrd_models/fiveesrd_models.dart';

import '../config/api_endpoints.dart';

/// Configuration shared between the REST and GraphQL clients.
@immutable
class ClientOptions {
  ClientOptions({
    this.defaultVersion = SrdVersion.v2014,
    this.restBaseOverride,
    this.graphQlEndpointOverride,
    this.defaultHeaders = const {},
    this.timeout = const Duration(seconds: 10),
    ApiEndpoints? endpoints,
    this.enableLogging = false,
  }) : endpoints = endpoints ?? ApiEndpoints();

  /// Preferred version used when no explicit override is supplied.
  final SrdVersion defaultVersion;

  /// Optional REST base override (allows pointing at self-hosted deployments).
  final Uri? restBaseOverride;

  /// Optional GraphQL endpoint override.
  final Uri? graphQlEndpointOverride;

  /// Headers appended to every outgoing request.
  final Map<String, String> defaultHeaders;

  /// Network timeout applied to REST and GraphQL requests.
  final Duration timeout;

  /// Internal endpoint resolver.
  final ApiEndpoints endpoints;

  /// Enables verbose request/response logging.
  final bool enableLogging;

  ClientOptions copyWith({
    SrdVersion? defaultVersion,
    Uri? restBaseOverride,
    Uri? graphQlEndpointOverride,
    Map<String, String>? defaultHeaders,
    Duration? timeout,
    ApiEndpoints? endpoints,
    bool? enableLogging,
  }) {
    return ClientOptions(
      defaultVersion: defaultVersion ?? this.defaultVersion,
      restBaseOverride: restBaseOverride ?? this.restBaseOverride,
      graphQlEndpointOverride:
          graphQlEndpointOverride ?? this.graphQlEndpointOverride,
      defaultHeaders: defaultHeaders ?? this.defaultHeaders,
      timeout: timeout ?? this.timeout,
      endpoints: endpoints ?? this.endpoints,
      enableLogging: enableLogging ?? this.enableLogging,
    );
  }
}
