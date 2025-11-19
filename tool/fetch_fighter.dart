import 'package:fiveesrd/fiveesrd.dart';

/// Simple utility to fetch the Fighter class via the datastore cache.
Future<void> main() async {
  final client = FiveEsrdClient();
  final datastore = FiveEsrdDatastore.fromClient(client);

  final fighter = await datastore.getClass('fighter');
  final hpDie = fighter.hitDie ?? 'unknown';
  final profCount = fighter.proficiencies?.length ?? 0;

  print('Fetched class: ${fighter.name}');
  print('Hit die: $hpDie');
  print('Proficiencies listed: $profCount');
}
