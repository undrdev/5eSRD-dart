# Contributing to FiveEsrd

Thanks for helping expand the FiveEsrd suite! The repo now hosts multiple Dart
packages under `/packages` in addition to the legacy umbrella `fiveesrd`
published on pub.dev. We rely on path dependencies instead of Melos so standard
Dart commands keep working.

## Workspace layout

```
packages/
  fiveesrd_models/     # Generated REST + GraphQL models
  fiveesrd_client/     # REST + GraphQL networking layer
  fiveesrd_datastore/  # Cache + persistence helpers
lib/                   # Legacy fiveesrd export package
```

Use `dart pub get` from the directory you plan to work in. For example, to fetch
client dependencies:

```
cd packages/fiveesrd_client
dart pub get
```

## Code generation

1. Prepare the OpenAPI spec (adds the 2024 endpoints):
   `dart run tool/prepare_openapi.dart`
2. Regenerate REST + JSON models from inside the models package:
   `cd packages/fiveesrd_models && dart run build_runner build --delete-conflicting-outputs`
3. Regenerate GraphQL models if needed by updating the documents in
   `packages/fiveesrd_models/lib/src/graphql/`.

## Testing

Run tests per package:

```
cd packages/fiveesrd_models && dart test
cd packages/fiveesrd_client && dart test
cd packages/fiveesrd_datastore && dart test
cd . && dart test        # umbrella package smoke tests
```

For end-to-end checks (REST index + GraphQL availability) run:
`dart run tool/check_coverage.dart`.

## Publishing

Each package maintains its own version, CHANGELOG, README, and example. When
you're ready to publish new versions:

1. Update the package's CHANGELOG and pubspec version.
2. Run `dart pub publish --dry-run` inside the package folder.
3. Once validated, run `dart pub publish`.
4. Update the legacy `fiveesrd` umbrella package to re-export the new versions
   and cut a matching release if needed.

Please open issues/discussion for major design changes so we can coordinate the
suite roadmap. Happy hacking!
