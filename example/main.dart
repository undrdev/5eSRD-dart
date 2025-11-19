import 'package:fiveesrd/fiveesrd.dart';

/// Simple console example showing how to use both the REST and GraphQL helpers.
Future<void> main() async {
  final client = FiveEsrdClient(options: ClientOptions(enableLogging: false));
  final datastore = FiveEsrdDatastore.fromClient(client);

  // Fetch a few level-1 spells via the REST API.
  final spells = await client.rest.listSpells(query: {'level': 1});
  final firstRestResult = spells.results?.first;
  if (firstRestResult != null) {
    print('First level-1 spell: ${firstRestResult.name}');
  }

  // Fetch monster summaries via GraphQL.
  final monsters = await client.graphql.monstersOverview(limit: 3);
  for (final monster in monsters.monsters) {
    final armorClass = monster.armorClass.isNotEmpty
        ? monster.armorClass.first.value
        : null;
    print('Monster ${monster.name} has AC ${armorClass ?? 'n/a'}');
  }

  // Fetch and cache a class detail via the datastore layer.
  final fighter = await datastore.getClass('fighter');
  print('Datastore cached class: ${fighter.name}');
}
