import 'package:fiveesrd_models/fiveesrd_models.dart';

import 'datastore_resource.dart';

class DatastoreResources {
  const DatastoreResources._();

  static DatastoreResource<Class> classDetail(
    String index, {
    SrdVersion? version,
  }) {
    final key = 'class/${_versionKey(version)}/$index';
    return DatastoreResource<Class>(
      cacheKey: key,
      fetcher: (gateway) => gateway.getClass(index, version: version),
      fromJson: Class.fromJson,
      toJson: (value) => value.toJson(),
    );
  }

  static DatastoreResource<Spell> spellDetail(
    String index, {
    SrdVersion? version,
  }) {
    final key = 'spell/${_versionKey(version)}/$index';
    return DatastoreResource<Spell>(
      cacheKey: key,
      fetcher: (gateway) => gateway.getSpell(index, version: version),
      fromJson: Spell.fromJson,
      toJson: (value) => value.toJson(),
    );
  }

  static DatastoreResource<Monster> monsterDetail(
    String index, {
    SrdVersion? version,
  }) {
    final key = 'monster/${_versionKey(version)}/$index';
    return DatastoreResource<Monster>(
      cacheKey: key,
      fetcher: (gateway) => gateway.getMonster(index, version: version),
      fromJson: Monster.fromJson,
      toJson: (value) => value.toJson(),
    );
  }

  static DatastoreResource<APIReferenceList> spellsIndex({
    Map<String, dynamic>? query,
    SrdVersion? version,
  }) {
    final key = 'spells/${_versionKey(version)}/${_encodeQuery(query)}';
    return DatastoreResource<APIReferenceList>(
      cacheKey: key,
      fetcher: (gateway) => gateway.listSpells(version: version, query: query),
      fromJson: APIReferenceList.fromJson,
      toJson: (value) => value.toJson(),
    );
  }

  static String _versionKey(SrdVersion? version) => version?.label ?? 'default';

  static String _encodeQuery(Map<String, dynamic>? query) {
    if (query == null || query.isEmpty) {
      return 'none';
    }
    final entries = query.entries.toList()
      ..sort((a, b) => a.key.compareTo(b.key));
    return entries.map((entry) => '${entry.key}=${entry.value}').join('&');
  }
}
