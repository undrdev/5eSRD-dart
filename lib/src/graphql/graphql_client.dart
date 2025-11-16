import 'package:graphql/client.dart';

import '../options/client_options.dart';
import '../version.dart';
import 'documents.dart';
import 'models.dart';

/// Lightweight wrapper on top of [GraphQLClient] that ships with a few typed
/// helpers mirroring the common use-cases described in the official tutorials.
class DndGraphQlClient {
  DndGraphQlClient._(this.options, this._client);

  factory DndGraphQlClient({ClientOptions? options, GraphQLClient? client}) {
    final resolved = options ?? ClientOptions();
    return DndGraphQlClient._(resolved, client ?? _buildClient(resolved));
  }

  final ClientOptions options;
  final GraphQLClient _client;

  GraphQLClient get raw => _client;

  Future<MonstersOverviewResponse> monstersOverview({
    int? skip,
    int? limit,
    String? name,
    String? type,
  }) async {
    final data = await _executeQuery(
      monstersOverviewQuery,
      variables: _cleanVariables({
        'skip': skip,
        'limit': limit,
        'name': name,
        'type': type,
      }),
    );
    return MonstersOverviewResponse.fromJson(data);
  }

  Future<MonsterDetailResponse> monsterDetail(String index) async {
    final data = await _executeQuery(
      monsterDetailQuery,
      variables: {'index': index},
    );
    return MonsterDetailResponse.fromJson(data);
  }

  Future<AbilityScoresResponse> abilityScores({int? skip, int? limit}) async {
    final data = await _executeQuery(
      abilityScoresQuery,
      variables: _cleanVariables({'skip': skip, 'limit': limit}),
    );
    return AbilityScoresResponse.fromJson(data);
  }

  Future<QueryResult> runRawQuery(
    String document, {
    Map<String, dynamic>? variables,
    FetchPolicy? fetchPolicy,
    ErrorPolicy? errorPolicy,
  }) {
    return _client.query(
      QueryOptions(
        document: gql(document),
        variables: _cleanVariables(variables),
        fetchPolicy: fetchPolicy,
        errorPolicy: errorPolicy,
      ),
    );
  }

  Future<QueryResult> runRawMutation(
    String document, {
    Map<String, dynamic>? variables,
    FetchPolicy? fetchPolicy,
    ErrorPolicy? errorPolicy,
  }) {
    return _client.mutate(
      MutationOptions(
        document: gql(document),
        variables: _cleanVariables(variables),
        fetchPolicy: fetchPolicy,
        errorPolicy: errorPolicy,
      ),
    );
  }

  Future<Map<String, dynamic>> _executeQuery(
    String document, {
    Map<String, dynamic>? variables,
  }) async {
    final result = await runRawQuery(
      document,
      variables: _cleanVariables(variables),
    );
    if (result.hasException) {
      throw result.exception!;
    }
    final data = result.data;
    if (data == null) {
      throw StateError('GraphQL response did not contain a payload.');
    }
    return data;
  }

  static GraphQLClient _buildClient(ClientOptions options) {
    final uri = options.endpoints.resolveGraphQl(
      override: options.graphQlEndpointOverride,
    );
    final link = HttpLink(
      uri.toString(),
      defaultHeaders: options.defaultHeaders,
    );
    return GraphQLClient(
      cache: GraphQLCache(store: InMemoryStore()),
      link: link,
    );
  }

  Map<String, dynamic> _cleanVariables(Map<String, dynamic>? input) {
    if (input == null) return const {};
    final cleanedEntries = input.entries
        .where((entry) => entry.value != null)
        .map(
          (entry) => MapEntry(
            entry.key,
            entry.value is SrdVersion
                ? (entry.value as SrdVersion).label
                : entry.value,
          ),
        )
        .toList();
    if (cleanedEntries.isEmpty) {
      return const {};
    }
    return Map.fromEntries(cleanedEntries);
  }
}
