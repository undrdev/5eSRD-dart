/// Represents the supported SRD dataset versions published by Wizards of the Coast.
///
/// The API currently exposes the 2014 System Reference Document as well as the
/// 2024 revision. Both the REST and GraphQL clients can switch between these
/// versions per request.
enum SrdVersion {
  /// The original 2014 SRD ruleset.
  v2014,

  /// The refreshed 2024 SRD ruleset (work in progress on the upstream API).
  v2024,
}

extension SrdVersionX on SrdVersion {
  /// Human friendly label used in logs and documentation.
  String get label => switch (this) {
    SrdVersion.v2014 => '2014',
    SrdVersion.v2024 => '2024',
  };

  /// Path segment appended to REST endpoints.
  String get restPathSegment => label;
}
