import 'package:graphql/client.dart' show GraphQLClient;

import 'graphql/graphql_client.dart';
import 'http/http_client.dart';
import 'options/client_options.dart';
import 'rest/rest_client.dart';

/// Convenience façade bundling the REST and GraphQL clients behind a single
/// entry point.
class FiveEsrdClient {
  FiveEsrdClient._(this.options, this.rest, this.graphql);

  factory FiveEsrdClient({
    ClientOptions? options,
    RestHttpClient? restHttpClient,
    GraphQLClient? graphQlClient,
  }) {
    final resolved = options ?? ClientOptions();
    return FiveEsrdClient._(
      resolved,
      RestClient(options: resolved, httpClient: restHttpClient),
      DndGraphQlClient(options: resolved, client: graphQlClient),
    );
  }

  final ClientOptions options;
  final RestClient rest;
  final DndGraphQlClient graphql;
}
