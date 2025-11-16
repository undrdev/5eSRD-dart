import 'package:fiveesrd/fiveesrd.dart';
import 'package:test/test.dart';

void main() {
  test('ApiEndpoints resolves custom base paths', () {
    final endpoints = ApiEndpoints(
      restBase: Uri.parse('https://example.com/root'),
    );
    final uri = endpoints.resolveRestUri(
      SrdVersion.v2024,
      'spells/arcane-shot',
    );
    expect(
      uri.toString(),
      equals('https://example.com/root/api/2024/spells/arcane-shot'),
    );
  });

  test('GraphQL models round-trip through JSON', () {
    const summary = MonsterSummary(
      index: 'aboleth',
      name: 'Aboleth',
      armorClass: [MonsterArmorClassEntry(type: 'natural', value: 17)],
    );
    final response = MonstersOverviewResponse(monsters: const [summary]);
    final json = response.toJson();
    final roundTrip = MonstersOverviewResponse.fromJson(json);
    expect(roundTrip.monsters.first.name, equals('Aboleth'));
    expect(roundTrip.monsters.first.armorClass.first.value, equals(17));
  });
}
