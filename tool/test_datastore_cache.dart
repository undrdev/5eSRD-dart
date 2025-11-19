import 'package:fiveesrd_client/fiveesrd_client.dart';
import 'package:fiveesrd_datastore/fiveesrd_datastore.dart';
import 'package:fiveesrd_models/fiveesrd_models.dart';

/// RestGateway wrapper that records how many times the Fighter class was fetched.
class CountingRestGateway implements RestGateway {
  CountingRestGateway(this._client);

  final RestClient _client;
  int classFetches = 0;

  @override
  Future<Class> getClass(String index, {SrdVersion? version}) async {
    classFetches++;
    return _client.getClass(index, version: version);
  }

  @override
  Future<Monster> getMonster(String index, {SrdVersion? version}) {
    return _client.getMonster(index, version: version);
  }

  @override
  Future<Spell> getSpell(String index, {SrdVersion? version}) {
    return _client.getSpell(index, version: version);
  }

  @override
  Future<APIReferenceList> listSpells({
    SrdVersion? version,
    Map<String, dynamic>? query,
  }) {
    return _client.listSpells(version: version, query: query);
  }
}

Future<void> main() async {
  final client = FiveEsrdClient();
  final countingGateway = CountingRestGateway(client.rest);
  final datastore = FiveEsrdDatastore.custom(countingGateway);

  final first = await datastore.getClass('fighter');
  print('First fetch -> ${first.name}, network calls: ${countingGateway.classFetches}');

  final second = await datastore.getClass('fighter');
  print('Second fetch -> ${second.name}, network calls: ${countingGateway.classFetches}');

  if (countingGateway.classFetches != 1) {
    throw StateError('Expected only one network fetch, saw ${countingGateway.classFetches}');
  }

  print('Datastore cache verified: subsequent request was served from cache.');
}
