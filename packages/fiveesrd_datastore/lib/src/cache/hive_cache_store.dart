import 'package:hive/hive.dart';

import 'cache_store.dart';
import 'cached_entry.dart';

/// A [CacheStore] backed by a Hive box.
class HiveCacheStore implements CacheStore {
  HiveCacheStore(this.box);

  final Box<Map> box;

  @override
  Future<CachedEntry?> read(String key) async {
    final raw = box.get(key);
    if (raw == null) {
      return null;
    }
    return CachedEntry.fromJson(Map<String, dynamic>.from(raw));
  }

  @override
  Future<void> write(String key, CachedEntry entry) async {
    await box.put(key, entry.toJson());
  }

  @override
  Future<void> delete(String key) async {
    await box.delete(key);
  }

  @override
  Future<void> clear() async {
    await box.clear();
  }
}
