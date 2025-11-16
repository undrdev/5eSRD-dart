import 'package:fiveesrd/fiveesrd.dart';

Future<void> main() async {
  final client = FiveEsrdClient(options: ClientOptions(enableLogging: true));

  // REST example: fetch the Fireball spell from the 2014 ruleset.
  final spell = await client.rest.getSpell('fireball');
  print('Fireball (${spell.level}) - ${spell.desc?.first ?? 'No description'}');

  // GraphQL example: pull a condensed monster listing.
  final monsters = await client.graphql.monstersOverview(limit: 3);
  for (final monster in monsters.monsters) {
    print('${monster.name} (CR ${monster.challengeRating ?? 0})');
  }
}
