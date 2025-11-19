import 'package:fiveesrd_client/fiveesrd_client.dart';
import 'package:fiveesrd_datastore/fiveesrd_datastore.dart';

/// Simple example that fetches the Fighter class using the datastore cache.
Future<void> main() async {
  final client = FiveEsrdClient();
  final datastore = FiveEsrdDatastore.fromClient(client);

  final fighter = await datastore.getClass('fighter');
  print('Fetched class: ${fighter.name}');

  // The second call hits the cache.
  final cached = await datastore.getClass('fighter');
  print('Fetched from cache: ${cached.name}');
}
