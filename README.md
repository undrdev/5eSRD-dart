# FiveEsrd Suite

This repo now hosts a suite of Dart packages for the official D&D 5e SRD API.
The legacy `fiveesrd` package remains available for backwards compatibility and
re-exports the new packages so existing apps continue to build.

| Package | What it does |
| --- | --- |
| `fiveesrd_models` | Generated REST and GraphQL data models plus shared value objects. |
| `fiveesrd_client` | Version-aware REST + GraphQL clients with configurable base URLs. |
| `fiveesrd_datastore` | Caching + persistence layer with in-memory or Hive-backed storage. |
| `fiveesrd` (legacy) | Thin umbrella export that re-exports the three packages above. |

Repository: <https://github.com/undrdev/5eSRD-dart>  
API docs: <https://5e-bits.github.io/docs/api>

## Quick start

### Use the legacy umbrella (simplest)

```bash
dart pub add fiveesrd
```

```dart
import 'package:fiveesrd/fiveesrd.dart';

Future<void> main() async {
  final client = FiveEsrdClient(options: ClientOptions(enableLogging: true));
  final spells = await client.rest.listSpells(query: {'level': 1});
  final datastore = FiveEsrdDatastore.fromClient(client);
  final fighter = await datastore.getClass('fighter');
  print('Fetched ${fighter.name} with ${spells.results?.length ?? 0} spells cached.');
}
```

### Pick and choose packages

```bash
dart pub add fiveesrd_models
dart pub add fiveesrd_client
dart pub add fiveesrd_datastore
```

```dart
import 'package:fiveesrd_client/fiveesrd_client.dart';
import 'package:fiveesrd_datastore/fiveesrd_datastore.dart';

final client = FiveEsrdClient(
  options: ClientOptions(defaultVersion: SrdVersion.v2024),
);
final datastore = FiveEsrdDatastore.fromClient(client);

final monster = await datastore.getMonster('adult-black-dragon');
print(monster.name);
```

### Hive-backed cache

```dart
import 'package:fiveesrd_datastore/fiveesrd_datastore.dart';
import 'package:hive/hive.dart';

Future<FiveEsrdDatastore> buildDatastore(FiveEsrdClient client) async {
  Hive.init('./.hive');
  final box = await Hive.openBox<Map>('fiveesrd_cache');
  return FiveEsrdDatastore.fromClient(
    client,
    store: HiveCacheStore(box),
    defaultTtl: const Duration(hours: 6),
  );
}
```

## Migration from the monolithic package

1. Add direct dependencies on `fiveesrd_models`, `fiveesrd_client`, and
   `fiveesrd_datastore` (or keep the umbrella `fiveesrd` temporarily).
2. Replace imports of `package:fiveesrd/fiveesrd.dart` with the specific package
   you need, e.g. `package:fiveesrd_client/fiveesrd_client.dart`.
3. Adopt the datastore for caching by constructing a `FiveEsrdDatastore` with the
   in-memory or Hive cache store.
4. Once everything compiles and tests pass, remove the umbrella dependency to
   slim down your transitive graph.

## Development & scripts

- `dart run tool/prepare_openapi.dart` – merge/normalize the upstream OpenAPI spec.
- `cd packages/fiveesrd_models && dart run build_runner build --delete-conflicting-outputs`
  – regenerate REST/JSON models.
- `dart run tool/check_coverage.dart` – verify every REST schema has a Dart model
  and probe key REST/GraphQL endpoints.
- `dart test` (run from each package) – unit tests for models, client, datastore,
  plus umbrella smoke tests.

See [CONTRIBUTING.md](CONTRIBUTING.md) for workspace details, code generation
steps, and publishing guidance.

Happy adventuring! 🐉
