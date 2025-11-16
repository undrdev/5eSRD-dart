# fiveesrd

A Dart client for the official D&D 5e SRD API. It ships strongly typed REST
models generated from the OpenAPI schema and a tiny GraphQL wrapper that mirrors
the tutorials published by 5e-bits [1](https://5e-bits.github.io/docs/tutorials/beginner/getting-started)
[2](https://5e-bits.github.io/docs/tutorials/beginner/graphql).

## Features

- ✔️ Version aware REST helper with 2014 and 2024 endpoints.
- ✔️ Programmatic access to every documented resource (spells, monsters, rules,
  etc.) via typed model classes.
- ✔️ Configurable base URLs so self-hosted mirrors of the API can be targeted.
- ✔️ Batteries-included GraphQL helper with pre-built queries (monsters,
  monster detail, ability scores) plus raw query/mutation helpers.

## Getting started

Add the dependency:

```bash
dart pub add fiveesrd
```

Optional: point the client to your own deployment by overriding the REST base or
GraphQL endpoint via `ClientOptions`.

## Usage

Create a `FiveEsrdClient` to access both APIs:

```dart
import 'package:fiveesrd/fiveesrd.dart';

final client = FiveEsrdClient(
  options: ClientOptions(
    defaultVersion: SrdVersion.v2014,
    enableLogging: true,
  ),
);
```

### REST examples

Fetch the spell index, then retrieve a concrete spell:

```dart
final spells = await client.rest.listSpells(query: {'level': 3});
final spell = await client.rest.getSpell('fireball');
print('Fireball component count: ${spell.components?.length ?? 0}');
```

Switch to the 2024 dataset by passing `version: SrdVersion.v2024` to any REST
call.

### GraphQL examples

Run the documented monsters overview query from the official tutorial [2]:

```dart
final monsters = await client.graphql.monstersOverview(limit: 5);
for (final monster in monsters.monsters) {
  print('${monster.name} (CR ${monster.challengeRating ?? 0})');
}
```

You can execute arbitrary queries/mutations if you need full control:

```dart
final result = await client.graphql.runRawQuery(
  'query AbilityScoreNames { abilityScores(limit: 3) { name } }',
);
print(result.data);
```

## Running the example

```
dart run example/fiveesrd_tmp_example.dart
```

The example demonstrates both a REST lookup (Fireball spell) and a GraphQL
monster listing.

## Contributing

Issues and pull requests are welcome. The generated REST models come from the
OpenAPI file stored under `tool/spec/swagger/5esrd.swagger.json`; run
`dart run tool/prepare_openapi.dart` followed by
`dart run build_runner build --delete-conflicting-outputs` whenever the upstream
spec changes.
