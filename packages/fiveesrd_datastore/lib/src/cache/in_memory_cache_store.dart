import 'cache_store.dart';
import 'cached_entry.dart';

/// Simple in-memory cache store backed by a [Map].
class InMemoryCacheStore implements CacheStore {
  final Map<String, CachedEntry> _entries = {};

  @override
  Future<CachedEntry?> read(String key) async => _entries[key];

  @override
  Future<void> write(String key, CachedEntry entry) async {
    _entries[key] = entry;
  }

  @override
  Future<void> delete(String key) async {
    _entries.remove(key);
  }

  @override
  Future<void> clear() async {
    _entries.clear();
  }
}
