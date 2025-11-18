import '../config/api_endpoints.dart';
import '../http/http_client.dart';
import '../models/models.dart';
import '../options/client_options.dart';
import '../version.dart';

typedef _ModelParser<T> = T Function(Map<String, dynamic> json);

/// High-level convenience wrapper around the REST resources exposed by the
/// D&D 5e SRD API.
class RestClient {
  RestClient._(this.options, this._http);

  factory RestClient({ClientOptions? options, RestHttpClient? httpClient}) {
    final resolved = options ?? ClientOptions();
    return RestClient._(resolved, httpClient ?? RestHttpClient(resolved));
  }

  final ClientOptions options;
  final RestHttpClient _http;

  ApiEndpoints get _endpoints => options.endpoints;

  /// Returns the dictionary of all available endpoints for the given version.
  Future<Map<String, String>> getResourceIndex({SrdVersion? version}) async {
    final response = _asMap(await _request('', version: version));
    return response.map((key, value) => MapEntry(key, '$value'));
  }

  /// Returns the canonical list for a given endpoint (e.g. `spells`).
  Future<APIReferenceList> listIndex(
    String endpoint, {
    SrdVersion? version,
    Map<String, dynamic>? query,
  }) {
    return _getModel(
      endpoint,
      APIReferenceList.fromJson,
      version: version,
      query: query,
    );
  }

  Future<AbilityScore> getAbilityScore(String index, {SrdVersion? version}) =>
      _getResource('ability-scores', index, AbilityScore.fromJson, version);

  Future<Alignment> getAlignment(String index, {SrdVersion? version}) =>
      _getResource('alignments', index, Alignment.fromJson, version);

  Future<Background> getBackground(String index, {SrdVersion? version}) =>
      _getResource('backgrounds', index, Background.fromJson, version);

  Future<Class> getClass(String index, {SrdVersion? version}) =>
      _getResource('classes', index, Class.fromJson, version);

  Future<List<ClassLevel>> getClassLevels(
    String classIndex, {
    SrdVersion? version,
  }) async {
    final data = _asList(
      await _request('classes/$classIndex/levels', version: version),
    );
    return data.map((e) => ClassLevel.fromJson(_asMap(e))).toList();
  }

  Future<ClassLevel> getClassLevel(
    String classIndex,
    int level, {
    SrdVersion? version,
  }) => _getModel(
    'classes/$classIndex/levels/$level',
    ClassLevel.fromJson,
    version: version,
  );

  Future<APIReferenceList> listClassLevelSpells(
    String classIndex,
    int spellLevel, {
    SrdVersion? version,
  }) => _getModel(
    'classes/$classIndex/levels/$spellLevel/spells',
    APIReferenceList.fromJson,
    version: version,
  );

  Future<APIReferenceList> listClassFeatures(
    String classIndex, {
    SrdVersion? version,
  }) => _getModel(
    'classes/$classIndex/features',
    APIReferenceList.fromJson,
    version: version,
  );

  Future<APIReferenceList> listClassSubclasses(
    String classIndex, {
    SrdVersion? version,
  }) => _getModel(
    'classes/$classIndex/subclasses',
    APIReferenceList.fromJson,
    version: version,
  );

  Future<APIReferenceList> listClassSpells(
    String classIndex, {
    SrdVersion? version,
  }) => _getModel(
    'classes/$classIndex/spells',
    APIReferenceList.fromJson,
    version: version,
  );

  Future<APIReferenceList> listClassProficiencies(
    String classIndex, {
    SrdVersion? version,
  }) => _getModel(
    'classes/$classIndex/proficiencies',
    APIReferenceList.fromJson,
    version: version,
  );

  Future<Spellcasting> getClassSpellcasting(
    String classIndex, {
    SrdVersion? version,
  }) => _getModel(
    'classes/$classIndex/spellcasting',
    Spellcasting.fromJson,
    version: version,
  );

  Future<Multiclassing> getClassMulticlassing(
    String classIndex, {
    SrdVersion? version,
  }) => _getModel(
    'classes/$classIndex/multi-classing',
    Multiclassing.fromJson,
    version: version,
  );

  Future<APIReferenceList> listClassLevelFeatures(
    String classIndex,
    int level, {
    SrdVersion? version,
  }) => _getModel(
    'classes/$classIndex/levels/$level/features',
    APIReferenceList.fromJson,
    version: version,
  );

  Future<Condition> getCondition(String index, {SrdVersion? version}) =>
      _getResource('conditions', index, Condition.fromJson, version);

  Future<DamageType> getDamageType(String index, {SrdVersion? version}) =>
      _getResource('damage-types', index, DamageType.fromJson, version);

  Future<EquipmentCategory> getEquipmentCategory(
    String index, {
    SrdVersion? version,
  }) => _getResource(
    'equipment-categories',
    index,
    EquipmentCategory.fromJson,
    version,
  );

  Future<Equipment> getEquipment(String index, {SrdVersion? version}) =>
      _getResource('equipment', index, Equipment.fromJson, version);

  Future<Feat> getFeat(String index, {SrdVersion? version}) =>
      _getResource('feats', index, Feat.fromJson, version);

  Future<Feature> getFeature(String index, {SrdVersion? version}) =>
      _getResource('features', index, Feature.fromJson, version);

  Future<Language> getLanguage(String index, {SrdVersion? version}) =>
      _getResource('languages', index, Language.fromJson, version);

  Future<MagicItem> getMagicItem(String index, {SrdVersion? version}) =>
      _getResource('magic-items', index, MagicItem.fromJson, version);

  Future<MagicSchool> getMagicSchool(String index, {SrdVersion? version}) =>
      _getResource('magic-schools', index, MagicSchool.fromJson, version);

  Future<Monster> getMonster(String index, {SrdVersion? version}) =>
      _getResource('monsters', index, Monster.fromJson, version);

  Future<APIReferenceList> listMonsters({
    SrdVersion? version,
    Map<String, dynamic>? query,
  }) => listIndex('monsters', version: version, query: query);

  Future<Proficiency> getProficiency(String index, {SrdVersion? version}) =>
      _getResource('proficiencies', index, Proficiency.fromJson, version);

  Future<Race> getRace(String index, {SrdVersion? version}) =>
      _getResource('races', index, Race.fromJson, version);

  Future<APIReferenceList> listRaceTraits(
    String raceIndex, {
    SrdVersion? version,
  }) => _getModel(
    'races/$raceIndex/traits',
    APIReferenceList.fromJson,
    version: version,
  );

  Future<APIReferenceList> listRaceSubraces(
    String raceIndex, {
    SrdVersion? version,
  }) => _getModel(
    'races/$raceIndex/subraces',
    APIReferenceList.fromJson,
    version: version,
  );

  Future<APIReferenceList> listRaceProficiencies(
    String raceIndex, {
    SrdVersion? version,
  }) => _getModel(
    'races/$raceIndex/proficiencies',
    APIReferenceList.fromJson,
    version: version,
  );

  Future<Rule> getRule(String index, {SrdVersion? version}) =>
      _getResource('rules', index, Rule.fromJson, version);

  Future<RuleSection> getRuleSection(String index, {SrdVersion? version}) =>
      _getResource('rule-sections', index, RuleSection.fromJson, version);

  Future<Skill> getSkill(String index, {SrdVersion? version}) =>
      _getResource('skills', index, Skill.fromJson, version);

  Future<APIReferenceList> listSpells({
    SrdVersion? version,
    Map<String, dynamic>? query,
  }) => listIndex('spells', version: version, query: query);

  Future<Spell> getSpell(String index, {SrdVersion? version}) =>
      _getResource('spells', index, Spell.fromJson, version);

  Future<Subclass> getSubclass(String index, {SrdVersion? version}) =>
      _getResource('subclasses', index, Subclass.fromJson, version);

  Future<List<SubclassLevel>> getSubclassLevels(
    String subclassIndex, {
    SrdVersion? version,
  }) async {
    final data = _asList(
      await _request('subclasses/$subclassIndex/levels', version: version),
    );
    return data.map((e) => SubclassLevel.fromJson(_asMap(e))).toList();
  }

  Future<SubclassLevel> getSubclassLevel(
    String subclassIndex,
    int level, {
    SrdVersion? version,
  }) => _getModel(
    'subclasses/$subclassIndex/levels/$level',
    SubclassLevel.fromJson,
    version: version,
  );

  Future<APIReferenceList> listSubclassFeatures(
    String subclassIndex, {
    SrdVersion? version,
  }) => _getModel(
    'subclasses/$subclassIndex/features',
    APIReferenceList.fromJson,
    version: version,
  );

  Future<APIReferenceList> listSubclassLevelFeatures(
    String subclassIndex,
    int level, {
    SrdVersion? version,
  }) => _getModel(
    'subclasses/$subclassIndex/levels/$level/features',
    APIReferenceList.fromJson,
    version: version,
  );

  Future<Subrace> getSubrace(String index, {SrdVersion? version}) =>
      _getResource('subraces', index, Subrace.fromJson, version);

  Future<APIReferenceList> listSubraceTraits(
    String subraceIndex, {
    SrdVersion? version,
  }) => _getModel(
    'subraces/$subraceIndex/traits',
    APIReferenceList.fromJson,
    version: version,
  );

  Future<APIReferenceList> listSubraceProficiencies(
    String subraceIndex, {
    SrdVersion? version,
  }) => _getModel(
    'subraces/$subraceIndex/proficiencies',
    APIReferenceList.fromJson,
    version: version,
  );

  Future<Trait> getTrait(String index, {SrdVersion? version}) =>
      _getResource('traits', index, Trait.fromJson, version);

  Future<WeaponProperty> getWeaponProperty(
    String index, {
    SrdVersion? version,
  }) => _getResource(
    'weapon-properties',
    index,
    WeaponProperty.fromJson,
    version,
  );

  /// Runs a request against an arbitrary path relative to the versioned base
  /// and returns the decoded JSON payload.
  Future<dynamic> getRaw(
    String relativePath, {
    SrdVersion? version,
    Map<String, dynamic>? query,
  }) => _request(relativePath, version: version, query: query);

  Future<T> _getResource<T>(
    String resource,
    String index,
    _ModelParser<T> parser,
    SrdVersion? version,
  ) {
    return _getModel('$resource/$index', parser, version: version);
  }

  Future<T> _getModel<T>(
    String relativePath,
    _ModelParser<T> parser, {
    SrdVersion? version,
    Map<String, dynamic>? query,
  }) async {
    final data = _asMap(
      await _request(relativePath, version: version, query: query),
    );
    _normalizePayload(relativePath, data);
    return parser(data);
  }

  Future<dynamic> _request(
    String relativePath, {
    SrdVersion? version,
    Map<String, dynamic>? query,
  }) async {
    final resolvedVersion = version ?? options.defaultVersion;
    final uri = _endpoints.resolveRestUri(
      resolvedVersion,
      relativePath,
      override: options.restBaseOverride,
    );
    final response = await _http.get<dynamic>(uri, query: query);
    final data = response.data;
    if (data == null) {
      throw StateError('Empty response for $relativePath');
    }
    return data;
  }

  Map<String, dynamic> _asMap(Object? value) {
    if (value is Map<String, dynamic>) {
      return value;
    }
    if (value is Map) {
      return value.map((key, dynamic value) => MapEntry('$key', value));
    }
    throw StateError('Expected JSON object but received ${value.runtimeType}');
  }

  List<dynamic> _asList(Object? value) {
    if (value is List<dynamic>) {
      return value;
    }
    if (value is List) {
      return List<dynamic>.from(value);
    }
    throw StateError('Expected JSON list but received ${value.runtimeType}');
  }

  void _normalizePayload(String path, Map<String, dynamic> json) {
    if (_isClassDetailPath(path)) {
      _normalizeClassPayload(json);
    }
  }

  bool _isClassDetailPath(String path) {
    if (!path.startsWith('classes/')) return false;
    final remainder = path.substring('classes/'.length);
    return !remainder.contains('/');
  }

  void _normalizeClassPayload(Map<String, dynamic> json) {
    final multi = json['multi_classing'];
    if (multi is! Map<String, dynamic>) return;
    final prerequisiteOptions = multi['prerequisite_options'];
    if (prerequisiteOptions is Map<String, dynamic>) {
      multi['prerequisite_options'] = [prerequisiteOptions];
    } else if (prerequisiteOptions == null) {
      multi['prerequisite_options'] = <Map<String, dynamic>>[];
    }
  }
}
