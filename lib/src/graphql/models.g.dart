// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MonstersOverviewResponse _$MonstersOverviewResponseFromJson(
  Map<String, dynamic> json,
) => MonstersOverviewResponse(
  monsters: (json['monsters'] as List<dynamic>)
      .map((e) => MonsterSummary.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$MonstersOverviewResponseToJson(
  MonstersOverviewResponse instance,
) => <String, dynamic>{
  'monsters': instance.monsters.map((e) => e.toJson()).toList(),
};

MonsterSummary _$MonsterSummaryFromJson(Map<String, dynamic> json) =>
    MonsterSummary(
      index: json['index'] as String,
      name: json['name'] as String,
      size: json['size'] as String?,
      type: json['type'] as String?,
      alignment: json['alignment'] as String?,
      hitPoints: (json['hit_points'] as num?)?.toInt(),
      challengeRating: (json['challenge_rating'] as num?)?.toDouble(),
      armorClass:
          (json['armor_class'] as List<dynamic>?)
              ?.map(
                (e) =>
                    MonsterArmorClassEntry.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          [],
    );

Map<String, dynamic> _$MonsterSummaryToJson(MonsterSummary instance) =>
    <String, dynamic>{
      'index': instance.index,
      'name': instance.name,
      'size': instance.size,
      'type': instance.type,
      'alignment': instance.alignment,
      'hit_points': instance.hitPoints,
      'challenge_rating': instance.challengeRating,
      'armor_class': instance.armorClass.map((e) => e.toJson()).toList(),
    };

MonsterArmorClassEntry _$MonsterArmorClassEntryFromJson(
  Map<String, dynamic> json,
) => MonsterArmorClassEntry(
  typename: json['__typename'] as String?,
  type: json['type'] as String?,
  value: (json['value'] as num?)?.toInt(),
  desc: json['desc'] as String?,
  armor: (json['armor'] as List<dynamic>?)
      ?.map((e) => NamedApiResource.fromJson(e as Map<String, dynamic>))
      .toList(),
  condition: json['condition'] == null
      ? null
      : NamedApiResource.fromJson(json['condition'] as Map<String, dynamic>),
  spell: json['spell'] == null
      ? null
      : NamedApiResource.fromJson(json['spell'] as Map<String, dynamic>),
);

Map<String, dynamic> _$MonsterArmorClassEntryToJson(
  MonsterArmorClassEntry instance,
) => <String, dynamic>{
  '__typename': instance.typename,
  'type': instance.type,
  'value': instance.value,
  'desc': instance.desc,
  'armor': instance.armor?.map((e) => e.toJson()).toList(),
  'condition': instance.condition?.toJson(),
  'spell': instance.spell?.toJson(),
};

MonsterDetailResponse _$MonsterDetailResponseFromJson(
  Map<String, dynamic> json,
) => MonsterDetailResponse(
  monster: json['monster'] == null
      ? null
      : MonsterDetail.fromJson(json['monster'] as Map<String, dynamic>),
);

Map<String, dynamic> _$MonsterDetailResponseToJson(
  MonsterDetailResponse instance,
) => <String, dynamic>{'monster': instance.monster?.toJson()};

MonsterDetail _$MonsterDetailFromJson(Map<String, dynamic> json) =>
    MonsterDetail(
      index: json['index'] as String,
      name: json['name'] as String,
      size: json['size'] as String?,
      type: json['type'] as String?,
      alignment: json['alignment'] as String?,
      hitPoints: (json['hit_points'] as num?)?.toInt(),
      challengeRating: (json['challenge_rating'] as num?)?.toDouble(),
      armorClass:
          (json['armor_class'] as List<dynamic>?)
              ?.map(
                (e) =>
                    MonsterArmorClassEntry.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          [],
      hitPointsRoll: json['hit_points_roll'] as String?,
      xp: (json['xp'] as num?)?.toInt(),
      strength: (json['strength'] as num?)?.toInt(),
      dexterity: (json['dexterity'] as num?)?.toInt(),
      constitution: (json['constitution'] as num?)?.toInt(),
      intelligence: (json['intelligence'] as num?)?.toInt(),
      wisdom: (json['wisdom'] as num?)?.toInt(),
      charisma: (json['charisma'] as num?)?.toInt(),
      languages: json['languages'] as String?,
      senses: json['senses'] == null
          ? null
          : MonsterSenses.fromJson(json['senses'] as Map<String, dynamic>),
      speed: json['speed'] == null
          ? null
          : MonsterSpeedModel.fromJson(json['speed'] as Map<String, dynamic>),
      damageResistances:
          (json['damage_resistances'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      damageImmunities:
          (json['damage_immunities'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      damageVulnerabilities:
          (json['damage_vulnerabilities'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      conditionImmunities:
          (json['condition_immunities'] as List<dynamic>?)
              ?.map((e) => NamedApiResource.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      proficiencies:
          (json['proficiencies'] as List<dynamic>?)
              ?.map(
                (e) =>
                    MonsterProficiencyNode.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const [],
      specialAbilities:
          (json['special_abilities'] as List<dynamic>?)
              ?.map(
                (e) => GraphQlMonsterSpecialAbility.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList() ??
          const [],
    );

Map<String, dynamic> _$MonsterDetailToJson(MonsterDetail instance) =>
    <String, dynamic>{
      'index': instance.index,
      'name': instance.name,
      'size': instance.size,
      'type': instance.type,
      'alignment': instance.alignment,
      'hit_points': instance.hitPoints,
      'challenge_rating': instance.challengeRating,
      'armor_class': instance.armorClass.map((e) => e.toJson()).toList(),
      'hit_points_roll': instance.hitPointsRoll,
      'xp': instance.xp,
      'strength': instance.strength,
      'dexterity': instance.dexterity,
      'constitution': instance.constitution,
      'intelligence': instance.intelligence,
      'wisdom': instance.wisdom,
      'charisma': instance.charisma,
      'languages': instance.languages,
      'senses': instance.senses?.toJson(),
      'speed': instance.speed?.toJson(),
      'damage_resistances': instance.damageResistances,
      'damage_immunities': instance.damageImmunities,
      'damage_vulnerabilities': instance.damageVulnerabilities,
      'condition_immunities': instance.conditionImmunities
          .map((e) => e.toJson())
          .toList(),
      'proficiencies': instance.proficiencies.map((e) => e.toJson()).toList(),
      'special_abilities': instance.specialAbilities
          .map((e) => e.toJson())
          .toList(),
    };

MonsterSenses _$MonsterSensesFromJson(Map<String, dynamic> json) =>
    MonsterSenses(
      darkvision: json['darkvision'] as String?,
      blindsight: json['blindsight'] as String?,
      tremorsense: json['tremorsense'] as String?,
      truesight: json['truesight'] as String?,
      passivePerception: (json['passive_perception'] as num?)?.toInt(),
    );

Map<String, dynamic> _$MonsterSensesToJson(MonsterSenses instance) =>
    <String, dynamic>{
      'darkvision': instance.darkvision,
      'blindsight': instance.blindsight,
      'tremorsense': instance.tremorsense,
      'truesight': instance.truesight,
      'passive_perception': instance.passivePerception,
    };

MonsterSpeedModel _$MonsterSpeedModelFromJson(Map<String, dynamic> json) =>
    MonsterSpeedModel(
      walk: json['walk'] as String?,
      fly: json['fly'] as String?,
      swim: json['swim'] as String?,
      climb: json['climb'] as String?,
      burrow: json['burrow'] as String?,
      hover: json['hover'] as bool?,
    );

Map<String, dynamic> _$MonsterSpeedModelToJson(MonsterSpeedModel instance) =>
    <String, dynamic>{
      'walk': instance.walk,
      'fly': instance.fly,
      'swim': instance.swim,
      'climb': instance.climb,
      'burrow': instance.burrow,
      'hover': instance.hover,
    };

MonsterProficiencyNode _$MonsterProficiencyNodeFromJson(
  Map<String, dynamic> json,
) => MonsterProficiencyNode(
  proficiency: json['proficiency'] == null
      ? null
      : NamedApiResource.fromJson(json['proficiency'] as Map<String, dynamic>),
  value: (json['value'] as num?)?.toInt(),
);

Map<String, dynamic> _$MonsterProficiencyNodeToJson(
  MonsterProficiencyNode instance,
) => <String, dynamic>{
  'proficiency': instance.proficiency?.toJson(),
  'value': instance.value,
};

GraphQlMonsterSpecialAbility _$GraphQlMonsterSpecialAbilityFromJson(
  Map<String, dynamic> json,
) => GraphQlMonsterSpecialAbility(
  name: json['name'] as String,
  desc: json['desc'] as String,
);

Map<String, dynamic> _$GraphQlMonsterSpecialAbilityToJson(
  GraphQlMonsterSpecialAbility instance,
) => <String, dynamic>{'name': instance.name, 'desc': instance.desc};

NamedApiResource _$NamedApiResourceFromJson(Map<String, dynamic> json) =>
    NamedApiResource(
      index: json['index'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$NamedApiResourceToJson(NamedApiResource instance) =>
    <String, dynamic>{'index': instance.index, 'name': instance.name};

AbilityScoresResponse _$AbilityScoresResponseFromJson(
  Map<String, dynamic> json,
) => AbilityScoresResponse(
  abilityScores: (json['abilityScores'] as List<dynamic>)
      .map((e) => AbilityScoreNode.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$AbilityScoresResponseToJson(
  AbilityScoresResponse instance,
) => <String, dynamic>{
  'abilityScores': instance.abilityScores.map((e) => e.toJson()).toList(),
};

AbilityScoreNode _$AbilityScoreNodeFromJson(Map<String, dynamic> json) =>
    AbilityScoreNode(
      index: json['index'] as String,
      name: json['name'] as String,
      fullName: json['full_name'] as String?,
      desc: (json['desc'] as List<dynamic>).map((e) => e as String).toList(),
      skills:
          (json['skills'] as List<dynamic>?)
              ?.map((e) => NamedApiResource.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$AbilityScoreNodeToJson(AbilityScoreNode instance) =>
    <String, dynamic>{
      'index': instance.index,
      'name': instance.name,
      'full_name': instance.fullName,
      'desc': instance.desc,
      'skills': instance.skills.map((e) => e.toJson()).toList(),
    };
