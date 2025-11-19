import 'package:fiveesrd_datastore/fiveesrd_datastore.dart';
import 'package:fiveesrd_models/fiveesrd_models.dart';
import 'package:test/test.dart';

class FakeGateway implements RestGateway {
  int classFetches = 0;

  @override
  Future<Class> getClass(String index, {SrdVersion? version}) async {
    classFetches++;
    return Class(index: index, name: 'Fighter', url: '/api/classes/$index');
  }

  @override
  Future<Monster> getMonster(String index, {SrdVersion? version}) async {
    return Monster(index: index, name: 'Goblin', url: '/api/monsters/$index');
  }

  @override
  Future<Spell> getSpell(String index, {SrdVersion? version}) async {
    return Spell(
        index: index, name: 'Magic Missile', url: '/api/spells/$index');
  }

  @override
  Future<APIReferenceList> listSpells({
    SrdVersion? version,
    Map<String, dynamic>? query,
  }) async {
    return APIReferenceList(
      count: 1,
      results: const [
        APIReference(index: 'magic-missile', name: 'Magic Missile')
      ],
    );
  }
}

void main() {
  test('caches class detail until ttl expires', () async {
    final gateway = FakeGateway();
    final datastore = FiveEsrdDatastore.custom(
      gateway,
      store: InMemoryCacheStore(),
      defaultTtl: const Duration(minutes: 5),
    );

    final one = await datastore.getClass('fighter');
    final two = await datastore.getClass('fighter');

    expect(one.name, equals('Fighter'));
    expect(two.name, equals('Fighter'));
    expect(gateway.classFetches, equals(1));
  });

  test('respects ttl overrides by refetching expired data', () async {
    final gateway = FakeGateway();
    final datastore = FiveEsrdDatastore.custom(
      gateway,
      store: InMemoryCacheStore(),
    );

    await datastore.getClass('fighter', ttl: Duration.zero);
    await datastore.getClass('fighter', ttl: Duration.zero);

    expect(gateway.classFetches, equals(2));
  });
}
