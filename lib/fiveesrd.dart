// ignore_for_file: unnecessary_library_name

/// Public umbrella library that re-exports the dedicated packages in the
/// FiveEsrd suite. Depending on this single package keeps existing consumers
/// working while enabling incremental migrations to the split packages.
library fiveesrd;

export 'package:fiveesrd_models/fiveesrd_models.dart';
export 'package:fiveesrd_client/fiveesrd_client.dart';
export 'package:fiveesrd_datastore/fiveesrd_datastore.dart';
