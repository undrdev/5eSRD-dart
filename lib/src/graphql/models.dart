import 'package:json_annotation/json_annotation.dart';

part 'models.g.dart';

@JsonSerializable(explicitToJson: true)
class MonstersOverviewResponse {
  const MonstersOverviewResponse({required this.monsters});

  factory MonstersOverviewResponse.fromJson(Map<String, dynamic> json) =>
      _$MonstersOverviewResponseFromJson(json);

  final List<MonsterSummary> monsters;

  Map<String, dynamic> toJson() => _$MonstersOverviewResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MonsterSummary {
  const MonsterSummary({
    required this.index,
    required this.name,
    this.size,
    this.type,
    this.alignment,
    this.hitPoints,
    this.challengeRating,
    List<MonsterArmorClassEntry>? armorClass,
  }) : armorClass = armorClass ?? const [];

  factory MonsterSummary.fromJson(Map<String, dynamic> json) =>
      _$MonsterSummaryFromJson(json);

  final String index;
  final String name;
  final String? size;
  final String? type;
  final String? alignment;
  @JsonKey(name: 'hit_points')
  final int? hitPoints;
  @JsonKey(name: 'challenge_rating')
  final double? challengeRating;
  @JsonKey(name: 'armor_class', defaultValue: <MonsterArmorClassEntry>[])
  final List<MonsterArmorClassEntry> armorClass;

  Map<String, dynamic> toJson() => _$MonsterSummaryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MonsterArmorClassEntry {
  const MonsterArmorClassEntry({
    this.typename,
    this.type,
    this.value,
    this.desc,
    this.armor,
    this.condition,
    this.spell,
  });

  factory MonsterArmorClassEntry.fromJson(Map<String, dynamic> json) =>
      _$MonsterArmorClassEntryFromJson(json);

  @JsonKey(name: '__typename')
  final String? typename;
  final String? type;
  final int? value;
  final String? desc;
  final List<NamedApiResource>? armor;
  final NamedApiResource? condition;
  final NamedApiResource? spell;

  Map<String, dynamic> toJson() => _$MonsterArmorClassEntryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MonsterDetailResponse {
  const MonsterDetailResponse({this.monster});

  factory MonsterDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$MonsterDetailResponseFromJson(json);

  final MonsterDetail? monster;

  Map<String, dynamic> toJson() => _$MonsterDetailResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MonsterDetail extends MonsterSummary {
  const MonsterDetail({
    required super.index,
    required super.name,
    super.size,
    super.type,
    super.alignment,
    super.hitPoints,
    super.challengeRating,
    List<MonsterArmorClassEntry>? armorClass,
    this.hitPointsRoll,
    this.xp,
    this.strength,
    this.dexterity,
    this.constitution,
    this.intelligence,
    this.wisdom,
    this.charisma,
    this.languages,
    this.senses,
    this.speed,
    this.damageResistances = const [],
    this.damageImmunities = const [],
    this.damageVulnerabilities = const [],
    this.conditionImmunities = const [],
    this.proficiencies = const [],
    this.specialAbilities = const [],
  }) : super(armorClass: armorClass);

  factory MonsterDetail.fromJson(Map<String, dynamic> json) =>
      _$MonsterDetailFromJson(json);

  @JsonKey(name: 'hit_points_roll')
  final String? hitPointsRoll;
  final int? xp;
  final int? strength;
  final int? dexterity;
  final int? constitution;
  final int? intelligence;
  final int? wisdom;
  final int? charisma;
  final String? languages;
  final MonsterSenses? senses;
  final MonsterSpeedModel? speed;
  @JsonKey(name: 'damage_resistances')
  final List<String> damageResistances;
  @JsonKey(name: 'damage_immunities')
  final List<String> damageImmunities;
  @JsonKey(name: 'damage_vulnerabilities')
  final List<String> damageVulnerabilities;
  @JsonKey(name: 'condition_immunities')
  final List<NamedApiResource> conditionImmunities;
  final List<MonsterProficiencyNode> proficiencies;
  @JsonKey(name: 'special_abilities')
  final List<GraphQlMonsterSpecialAbility> specialAbilities;

  @override
  Map<String, dynamic> toJson() => _$MonsterDetailToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MonsterSenses {
  const MonsterSenses({
    this.darkvision,
    this.blindsight,
    this.tremorsense,
    this.truesight,
    this.passivePerception,
  });

  factory MonsterSenses.fromJson(Map<String, dynamic> json) =>
      _$MonsterSensesFromJson(json);

  final String? darkvision;
  final String? blindsight;
  final String? tremorsense;
  final String? truesight;
  @JsonKey(name: 'passive_perception')
  final int? passivePerception;

  Map<String, dynamic> toJson() => _$MonsterSensesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MonsterSpeedModel {
  const MonsterSpeedModel({
    this.walk,
    this.fly,
    this.swim,
    this.climb,
    this.burrow,
    this.hover,
  });

  factory MonsterSpeedModel.fromJson(Map<String, dynamic> json) =>
      _$MonsterSpeedModelFromJson(json);

  final String? walk;
  final String? fly;
  final String? swim;
  final String? climb;
  final String? burrow;
  final bool? hover;

  Map<String, dynamic> toJson() => _$MonsterSpeedModelToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MonsterProficiencyNode {
  const MonsterProficiencyNode({this.proficiency, this.value});

  factory MonsterProficiencyNode.fromJson(Map<String, dynamic> json) =>
      _$MonsterProficiencyNodeFromJson(json);

  final NamedApiResource? proficiency;
  final int? value;

  Map<String, dynamic> toJson() => _$MonsterProficiencyNodeToJson(this);
}

@JsonSerializable()
class GraphQlMonsterSpecialAbility {
  const GraphQlMonsterSpecialAbility({required this.name, required this.desc});

  factory GraphQlMonsterSpecialAbility.fromJson(Map<String, dynamic> json) =>
      _$GraphQlMonsterSpecialAbilityFromJson(json);

  final String name;
  final String desc;

  Map<String, dynamic> toJson() => _$GraphQlMonsterSpecialAbilityToJson(this);
}

@JsonSerializable()
class NamedApiResource {
  const NamedApiResource({required this.index, required this.name});

  factory NamedApiResource.fromJson(Map<String, dynamic> json) =>
      _$NamedApiResourceFromJson(json);

  final String index;
  final String name;

  Map<String, dynamic> toJson() => _$NamedApiResourceToJson(this);
}

@JsonSerializable()
class AbilityScoresResponse {
  const AbilityScoresResponse({required this.abilityScores});

  factory AbilityScoresResponse.fromJson(Map<String, dynamic> json) =>
      _$AbilityScoresResponseFromJson(json);

  final List<AbilityScoreNode> abilityScores;

  Map<String, dynamic> toJson() => _$AbilityScoresResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AbilityScoreNode {
  const AbilityScoreNode({
    required this.index,
    required this.name,
    this.fullName,
    required this.desc,
    this.skills = const [],
  });

  factory AbilityScoreNode.fromJson(Map<String, dynamic> json) =>
      _$AbilityScoreNodeFromJson(json);

  final String index;
  final String name;
  @JsonKey(name: 'full_name')
  final String? fullName;
  final List<String> desc;
  final List<NamedApiResource> skills;

  Map<String, dynamic> toJson() => _$AbilityScoreNodeToJson(this);
}
