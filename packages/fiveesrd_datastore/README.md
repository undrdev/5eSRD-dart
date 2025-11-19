# fiveesrd_datastore

Caching and persistence layer for the FiveEsrd package suite. Wraps
`fiveesrd_client` and provides a unified API for fetching SRD resources with
in-memory or Hive-backed caches.

```bash
dart pub add fiveesrd_datastore
```

```dart
import 'package:fiveesrd_client/fiveesrd_client.dart';
import 'package:fiveesrd_datastore/fiveesrd_datastore.dart';

Future<void> main() async {
  final client = FiveEsrdClient();
  final datastore = FiveEsrdDatastore.fromClient(client);

  final fighter = await datastore.getClass('fighter');
  print('Fetched ${fighter.name} with caching');
}
```

See the `example` folder for additional usage patterns, including Hive-backed
storage.

## Storage backends

- **InMemoryCacheStore** (default): best for short-lived CLI tools/tests.
- **HiveCacheStore**: pass an opened `Box<Map>` to persist cache entries across
  launches.

```dart
Hive.init('./.hive');
final box = await Hive.openBox<Map>('fiveesrd_cache');
final datastore = FiveEsrdDatastore.fromClient(
  client,
  store: HiveCacheStore(box),
  defaultTtl: const Duration(hours: 6),
);
```
