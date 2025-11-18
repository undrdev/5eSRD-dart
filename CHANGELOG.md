## 0.1.0

- Initial release with generated REST models, GraphQL helpers, coverage script,
  and dual REST/GraphQL client façade.

## 0.1.1

- Handle single-object `prerequisite_options` in class multiclassing payloads.
- Add runnable example app and generated-code doc exemptions to prep for pub.

## 0.1.2

- Normalize class payloads inside `RestClient` so `multiclassing.prerequisite_options`
  always deserializes, even when the API returns a single object or null.
