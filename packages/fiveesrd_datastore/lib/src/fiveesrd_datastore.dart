import 'package:fiveesrd_client/fiveesrd_client.dart';
import 'package:fiveesrd_models/fiveesrd_models.dart';
import 'package:meta/meta.dart';

import 'cache/cache_store.dart';
import 'cache/cached_entry.dart';
import 'cache/in_memory_cache_store.dart';
import 'datastore_resource.dart';
import 'gateways/rest_gateway.dart';
import 'resources.dart';

/// High-level datastore that composes the FiveEsrd REST client with a cache
/// store.
class FiveEsrdDatastore {
  FiveEsrdDatastore._({
    required RestGateway gateway,
    CacheStore? store,
    Duration? defaultTtl,
  }) : _gateway = gateway,
       _store = store ?? InMemoryCacheStore(),
       _defaultTtl = defaultTtl ?? const Duration(hours: 1);

  factory FiveEsrdDatastore.fromClient(
    FiveEsrdClient client, {
    CacheStore? store,
    Duration? defaultTtl,
  }) {
    return FiveEsrdDatastore._(
      gateway: ClientRestGateway(client.rest),
      store: store,
      defaultTtl: defaultTtl,
    );
  }

  /// Creates a datastore with a custom [RestGateway], useful for testing.
  factory FiveEsrdDatastore.custom(
    RestGateway gateway, {
    CacheStore? store,
    Duration? defaultTtl,
  }) {
    return FiveEsrdDatastore._(
      gateway: gateway,
      store: store,
      defaultTtl: defaultTtl,
    );
  }

  final RestGateway _gateway;
  final CacheStore _store;
  final Duration _defaultTtl;

  Future<T> getResource<T>(
    DatastoreResource<T> resource, {
    bool forceRefresh = false,
    Duration? ttl,
  }) async {
    final effectiveTtl = ttl ?? _defaultTtl;
    if (!forceRefresh) {
      final cached = await _store.read(resource.cacheKey);
      if (cached != null && !cached.isExpired(effectiveTtl)) {
        return resource.fromJson(cached.payload);
      }
    }

    final value = await resource.fetcher(_gateway);
    await _store.write(
      resource.cacheKey,
      CachedEntry(payload: resource.toJson(value)),
    );
    return value;
  }

  Future<Class> getClass(
    String index, {
    bool forceRefresh = false,
    Duration? ttl,
    SrdVersion? version,
  }) {
    final resource = DatastoreResources.classDetail(index, version: version);
    return getResource(resource, forceRefresh: forceRefresh, ttl: ttl);
  }

  Future<Spell> getSpell(
    String index, {
    bool forceRefresh = false,
    Duration? ttl,
    SrdVersion? version,
  }) {
    final resource = DatastoreResources.spellDetail(index, version: version);
    return getResource(resource, forceRefresh: forceRefresh, ttl: ttl);
  }

  Future<Monster> getMonster(
    String index, {
    bool forceRefresh = false,
    Duration? ttl,
    SrdVersion? version,
  }) {
    final resource = DatastoreResources.monsterDetail(index, version: version);
    return getResource(resource, forceRefresh: forceRefresh, ttl: ttl);
  }

  Future<APIReferenceList> listSpells({
    Map<String, dynamic>? query,
    bool forceRefresh = false,
    Duration? ttl,
    SrdVersion? version,
  }) {
    final resource = DatastoreResources.spellsIndex(
      query: query,
      version: version,
    );
    return getResource(resource, forceRefresh: forceRefresh, ttl: ttl);
  }

  @visibleForTesting
  CacheStore get store => _store;

  Future<void> clearCache() => _store.clear();

  Future<void> invalidate(String cacheKey) => _store.delete(cacheKey);
}
