import 'package:fiveesrd_client/fiveesrd_client.dart';
import 'package:fiveesrd_models/fiveesrd_models.dart';

/// Minimal interface used by the datastore layer to fetch REST resources.
abstract class RestGateway {
  Future<Class> getClass(String index, {SrdVersion? version});

  Future<Spell> getSpell(String index, {SrdVersion? version});

  Future<Monster> getMonster(String index, {SrdVersion? version});

  Future<APIReferenceList> listSpells({
    SrdVersion? version,
    Map<String, dynamic>? query,
  });
}

class ClientRestGateway implements RestGateway {
  ClientRestGateway(this._client);

  final RestClient _client;

  @override
  Future<Class> getClass(String index, {SrdVersion? version}) {
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
