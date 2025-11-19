import 'cached_entry.dart';

/// Abstraction over a persistence layer used by [FiveEsrdDatastore].
abstract class CacheStore {
  /// Looks up the cached payload for the provided [key], returning `null` if
  /// nothing has been persisted.
  Future<CachedEntry?> read(String key);

  /// Persists a serialized [entry] under [key], overriding any previous value.
  Future<void> write(String key, CachedEntry entry);

  /// Removes the cached data associated with [key], if present.
  Future<void> delete(String key);

  /// Clears the entire store, removing every cached entry.
  Future<void> clear();
}
