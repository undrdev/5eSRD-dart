import 'gateways/rest_gateway.dart';

/// Metadata describing how to fetch and serialize a cached resource.
class DatastoreResource<T> {
  const DatastoreResource({
    required this.cacheKey,
    required this.fetcher,
    required this.fromJson,
    required this.toJson,
  });

  final String cacheKey;
  final Future<T> Function(RestGateway gateway) fetcher;
  final T Function(Map<String, dynamic> json) fromJson;
  final Map<String, dynamic> Function(T value) toJson;
}
