# FiveEsrd Package Suite Architecture

This repository hosts a family of Dart packages built around the D&D 5e SRD API:

- **fiveesrd**: the legacy/umbrella package that re-exports the new packages for
  backwards compatibility.
- **fiveesrd_models**: generated REST/GraphQL models plus shared value objects.
- **fiveesrd_client**: REST + GraphQL clients, configuration, and transport
  utilities. Depends on `fiveesrd_models`.
- **fiveesrd_datastore**: caching + persistence layer built on
  `fiveesrd_client`, with pluggable in-memory or Hive-backed storage.

The packages live under `/packages` and share a single source repository. We use
plain Dart path dependencies (no Melos) so each package can be published
independently.

```
apps ─┬─> fiveesrd_datastore ─┬─> fiveesrd_client ─┬─> fiveesrd_models
      │                       └─> Hive/in-memory storage
      └─> fiveesrd_client ---->
```

## Workspace Commands

From the repo root you can run standard Dart commands by targeting the desired
package folder, e.g.

```
cd packages/fiveesrd_models && dart pub get && dart test
```

The top-level `fiveesrd` package depends on the path versions of the new
packages so existing consumers keep working while we migrate.
