// GENERATED CODE - DO NOT MODIFY BY HAND

part of '5esrd.models.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

APIReference _$APIReferenceFromJson(Map<String, dynamic> json) => APIReference(
  index: json['index'] as String?,
  name: json['name'] as String?,
  url: json['url'] as String?,
  updatedAt: json['updated_at'] as String?,
);

Map<String, dynamic> _$APIReferenceToJson(APIReference instance) =>
    <String, dynamic>{
      'index': ?instance.index,
      'name': ?instance.name,
      'url': ?instance.url,
      'updated_at': ?instance.updatedAt,
    };

APIReferenceList _$APIReferenceListFromJson(Map<String, dynamic> json) =>
    APIReferenceList(
      count: (json['count'] as num?)?.toDouble(),
      results:
          (json['results'] as List<dynamic>?)
              ?.map((e) => APIReference.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$APIReferenceListToJson(APIReferenceList instance) =>
    <String, dynamic>{
      'count': ?instance.count,
      'results': ?instance.results?.map((e) => e.toJson()).toList(),
    };

Damage _$DamageFromJson(Map<String, dynamic> json) => Damage(
  damageDice: json['damage_dice'] as String?,
  damageType: json['damage_type'] == null
      ? null
      : APIReference.fromJson(json['damage_type'] as Map<String, dynamic>),
);

Map<String, dynamic> _$DamageToJson(Damage instance) => <String, dynamic>{
  'damage_dice': ?instance.damageDice,
  'damage_type': ?instance.damageType?.toJson(),
};

Choice _$ChoiceFromJson(Map<String, dynamic> json) => Choice(
  desc: json['desc'] as String?,
  choose: (json['choose'] as num?)?.toDouble(),
  type: json['type'] as String?,
  from: json['from'] == null
      ? null
      : OptionSet.fromJson(json['from'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ChoiceToJson(Choice instance) => <String, dynamic>{
  'desc': ?instance.desc,
  'choose': ?instance.choose,
  'type': ?instance.type,
  'from': ?instance.from?.toJson(),
};

AreaOfEffect _$AreaOfEffectFromJson(Map<String, dynamic> json) => AreaOfEffect(
  size: (json['size'] as num?)?.toDouble(),
  type: areaOfEffectTypeNullableFromJson(json['type']),
);

Map<String, dynamic> _$AreaOfEffectToJson(AreaOfEffect instance) =>
    <String, dynamic>{
      'size': ?instance.size,
      'type': ?areaOfEffectTypeNullableToJson(instance.type),
    };

Prerequisite _$PrerequisiteFromJson(Map<String, dynamic> json) => Prerequisite(
  abilityScore: json['ability_score'] == null
      ? null
      : APIReference.fromJson(json['ability_score'] as Map<String, dynamic>),
  minimumScore: (json['minimum_score'] as num?)?.toDouble(),
);

Map<String, dynamic> _$PrerequisiteToJson(Prerequisite instance) =>
    <String, dynamic>{
      'ability_score': ?instance.abilityScore?.toJson(),
      'minimum_score': ?instance.minimumScore,
    };

ResourceDescription _$ResourceDescriptionFromJson(Map<String, dynamic> json) =>
    ResourceDescription(
      desc:
          (json['desc'] as List<dynamic>?)?.map((e) => e as String).toList() ??
          [],
    );

Map<String, dynamic> _$ResourceDescriptionToJson(
  ResourceDescription instance,
) => <String, dynamic>{'desc': ?instance.desc};

AbilityScore _$AbilityScoreFromJson(Map<String, dynamic> json) => AbilityScore(
  fullName: json['full_name'] as String?,
  skills:
      (json['skills'] as List<dynamic>?)
          ?.map((e) => APIReference.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  index: json['index'] as String?,
  name: json['name'] as String?,
  url: json['url'] as String?,
  updatedAt: json['updated_at'] as String?,
  desc:
      (json['desc'] as List<dynamic>?)?.map((e) => e as String).toList() ?? [],
);

Map<String, dynamic> _$AbilityScoreToJson(AbilityScore instance) =>
    <String, dynamic>{
      'full_name': ?instance.fullName,
      'skills': ?instance.skills?.map((e) => e.toJson()).toList(),
      'index': ?instance.index,
      'name': ?instance.name,
      'url': ?instance.url,
      'updated_at': ?instance.updatedAt,
      'desc': ?instance.desc,
    };

Alignment _$AlignmentFromJson(Map<String, dynamic> json) => Alignment(
  desc: json['desc'] as String?,
  abbreviation: json['abbreviation'] as String?,
  index: json['index'] as String?,
  name: json['name'] as String?,
  url: json['url'] as String?,
  updatedAt: json['updated_at'] as String?,
);

Map<String, dynamic> _$AlignmentToJson(Alignment instance) => <String, dynamic>{
  'desc': ?instance.desc,
  'abbreviation': ?instance.abbreviation,
  'index': ?instance.index,
  'name': ?instance.name,
  'url': ?instance.url,
  'updated_at': ?instance.updatedAt,
};

Class _$ClassFromJson(Map<String, dynamic> json) => Class(
  hitDie: (json['hit_die'] as num?)?.toDouble(),
  classLevels: json['class_levels'] as String?,
  multiClassing: json['multi_classing'] == null
      ? null
      : Multiclassing.fromJson(json['multi_classing'] as Map<String, dynamic>),
  spellcasting: json['spellcasting'] == null
      ? null
      : Spellcasting.fromJson(json['spellcasting'] as Map<String, dynamic>),
  spells: json['spells'] as String?,
  startingEquipment: (json['starting_equipment'] as List<dynamic>?)
      ?.map(
        (e) => Class$StartingEquipment$Item.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
  startingEquipmentOptions:
      (json['starting_equipment_options'] as List<dynamic>?)
          ?.map((e) => Choice.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  proficiencyChoices:
      (json['proficiency_choices'] as List<dynamic>?)
          ?.map((e) => Choice.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  proficiencies:
      (json['proficiencies'] as List<dynamic>?)
          ?.map((e) => APIReference.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  savingThrows:
      (json['saving_throws'] as List<dynamic>?)
          ?.map((e) => APIReference.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  subclasses:
      (json['subclasses'] as List<dynamic>?)
          ?.map((e) => APIReference.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  index: json['index'] as String?,
  name: json['name'] as String?,
  url: json['url'] as String?,
  updatedAt: json['updated_at'] as String?,
);

Map<String, dynamic> _$ClassToJson(Class instance) => <String, dynamic>{
  'hit_die': ?instance.hitDie,
  'class_levels': ?instance.classLevels,
  'multi_classing': ?instance.multiClassing?.toJson(),
  'spellcasting': ?instance.spellcasting?.toJson(),
  'spells': ?instance.spells,
  'starting_equipment': ?instance.startingEquipment
      ?.map((e) => e.toJson())
      .toList(),
  'starting_equipment_options': ?instance.startingEquipmentOptions
      ?.map((e) => e.toJson())
      .toList(),
  'proficiency_choices': ?instance.proficiencyChoices
      ?.map((e) => e.toJson())
      .toList(),
  'proficiencies': ?instance.proficiencies?.map((e) => e.toJson()).toList(),
  'saving_throws': ?instance.savingThrows?.map((e) => e.toJson()).toList(),
  'subclasses': ?instance.subclasses?.map((e) => e.toJson()).toList(),
  'index': ?instance.index,
  'name': ?instance.name,
  'url': ?instance.url,
  'updated_at': ?instance.updatedAt,
};

Multiclassing _$MulticlassingFromJson(Map<String, dynamic> json) =>
    Multiclassing(
      prerequisites:
          (json['prerequisites'] as List<dynamic>?)
              ?.map((e) => Prerequisite.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      prerequisiteOptions:
          (json['prerequisite_options'] as List<dynamic>?)
              ?.map((e) => Choice.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      proficiencies:
          (json['proficiencies'] as List<dynamic>?)
              ?.map((e) => APIReference.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      proficiencyChoices:
          (json['proficiency_choices'] as List<dynamic>?)
              ?.map((e) => Choice.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$MulticlassingToJson(Multiclassing instance) =>
    <String, dynamic>{
      'prerequisites': ?instance.prerequisites?.map((e) => e.toJson()).toList(),
      'prerequisite_options': ?instance.prerequisiteOptions
          ?.map((e) => e.toJson())
          .toList(),
      'proficiencies': ?instance.proficiencies?.map((e) => e.toJson()).toList(),
      'proficiency_choices': ?instance.proficiencyChoices
          ?.map((e) => e.toJson())
          .toList(),
    };

Spellcasting _$SpellcastingFromJson(Map<String, dynamic> json) => Spellcasting(
  level: (json['level'] as num?)?.toDouble(),
  info: (json['info'] as List<dynamic>?)
      ?.map((e) => Spellcasting$Info$Item.fromJson(e as Map<String, dynamic>))
      .toList(),
  spellcastingAbility: json['spellcasting_ability'] == null
      ? null
      : APIReference.fromJson(
          json['spellcasting_ability'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$SpellcastingToJson(Spellcasting instance) =>
    <String, dynamic>{
      'level': ?instance.level,
      'info': ?instance.info?.map((e) => e.toJson()).toList(),
      'spellcasting_ability': ?instance.spellcastingAbility?.toJson(),
    };

Gear _$GearFromJson(Map<String, dynamic> json) => Gear(
  equipmentCategory: json['equipment_category'] == null
      ? null
      : APIReference.fromJson(
          json['equipment_category'] as Map<String, dynamic>,
        ),
  gearCategory: json['gear_category'] == null
      ? null
      : APIReference.fromJson(json['gear_category'] as Map<String, dynamic>),
  cost: json['cost'] == null
      ? null
      : Cost.fromJson(json['cost'] as Map<String, dynamic>),
  weight: (json['weight'] as num?)?.toDouble(),
  index: json['index'] as String?,
  name: json['name'] as String?,
  url: json['url'] as String?,
  updatedAt: json['updated_at'] as String?,
  desc:
      (json['desc'] as List<dynamic>?)?.map((e) => e as String).toList() ?? [],
);

Map<String, dynamic> _$GearToJson(Gear instance) => <String, dynamic>{
  'equipment_category': ?instance.equipmentCategory?.toJson(),
  'gear_category': ?instance.gearCategory?.toJson(),
  'cost': ?instance.cost?.toJson(),
  'weight': ?instance.weight,
  'index': ?instance.index,
  'name': ?instance.name,
  'url': ?instance.url,
  'updated_at': ?instance.updatedAt,
  'desc': ?instance.desc,
};

EquipmentPack _$EquipmentPackFromJson(
  Map<String, dynamic> json,
) => EquipmentPack(
  equipmentCategory: json['equipment_category'] == null
      ? null
      : APIReference.fromJson(
          json['equipment_category'] as Map<String, dynamic>,
        ),
  gearCategory: json['gear_category'] == null
      ? null
      : APIReference.fromJson(json['gear_category'] as Map<String, dynamic>),
  cost: json['cost'] == null
      ? null
      : Cost.fromJson(json['cost'] as Map<String, dynamic>),
  contents:
      (json['contents'] as List<dynamic>?)
          ?.map((e) => APIReference.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  index: json['index'] as String?,
  name: json['name'] as String?,
  url: json['url'] as String?,
  updatedAt: json['updated_at'] as String?,
  desc:
      (json['desc'] as List<dynamic>?)?.map((e) => e as String).toList() ?? [],
);

Map<String, dynamic> _$EquipmentPackToJson(EquipmentPack instance) =>
    <String, dynamic>{
      'equipment_category': ?instance.equipmentCategory?.toJson(),
      'gear_category': ?instance.gearCategory?.toJson(),
      'cost': ?instance.cost?.toJson(),
      'contents': ?instance.contents?.map((e) => e.toJson()).toList(),
      'index': ?instance.index,
      'name': ?instance.name,
      'url': ?instance.url,
      'updated_at': ?instance.updatedAt,
      'desc': ?instance.desc,
    };

EquipmentCategory _$EquipmentCategoryFromJson(Map<String, dynamic> json) =>
    EquipmentCategory(
      equipment:
          (json['equipment'] as List<dynamic>?)
              ?.map((e) => APIReference.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      index: json['index'] as String?,
      name: json['name'] as String?,
      url: json['url'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$EquipmentCategoryToJson(EquipmentCategory instance) =>
    <String, dynamic>{
      'equipment': ?instance.equipment?.map((e) => e.toJson()).toList(),
      'index': ?instance.index,
      'name': ?instance.name,
      'url': ?instance.url,
      'updated_at': ?instance.updatedAt,
    };

Equipment _$EquipmentFromJson(Map<String, dynamic> json) => Equipment();

Map<String, dynamic> _$EquipmentToJson(Equipment instance) =>
    <String, dynamic>{};

Cost _$CostFromJson(Map<String, dynamic> json) => Cost(
  quantity: (json['quantity'] as num?)?.toDouble(),
  unit: json['unit'] as String?,
);

Map<String, dynamic> _$CostToJson(Cost instance) => <String, dynamic>{
  'quantity': ?instance.quantity,
  'unit': ?instance.unit,
};

Weapon _$WeaponFromJson(Map<String, dynamic> json) => Weapon(
  equipmentCategory: json['equipment_category'] == null
      ? null
      : APIReference.fromJson(
          json['equipment_category'] as Map<String, dynamic>,
        ),
  weaponCategory: json['weapon_category'] as String?,
  weaponRange: json['weapon_range'] as String?,
  categoryRange: json['category_range'] as String?,
  range: json['range'] == null
      ? null
      : Weapon$Range.fromJson(json['range'] as Map<String, dynamic>),
  damage: json['damage'] == null
      ? null
      : Damage.fromJson(json['damage'] as Map<String, dynamic>),
  twoHandedDamage: json['two_handed_damage'] == null
      ? null
      : Damage.fromJson(json['two_handed_damage'] as Map<String, dynamic>),
  properties:
      (json['properties'] as List<dynamic>?)
          ?.map((e) => APIReference.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  cost: json['cost'] == null
      ? null
      : Cost.fromJson(json['cost'] as Map<String, dynamic>),
  weight: (json['weight'] as num?)?.toDouble(),
  index: json['index'] as String?,
  name: json['name'] as String?,
  url: json['url'] as String?,
  updatedAt: json['updated_at'] as String?,
  desc:
      (json['desc'] as List<dynamic>?)?.map((e) => e as String).toList() ?? [],
);

Map<String, dynamic> _$WeaponToJson(Weapon instance) => <String, dynamic>{
  'equipment_category': ?instance.equipmentCategory?.toJson(),
  'weapon_category': ?instance.weaponCategory,
  'weapon_range': ?instance.weaponRange,
  'category_range': ?instance.categoryRange,
  'range': ?instance.range?.toJson(),
  'damage': ?instance.damage?.toJson(),
  'two_handed_damage': ?instance.twoHandedDamage?.toJson(),
  'properties': ?instance.properties?.map((e) => e.toJson()).toList(),
  'cost': ?instance.cost?.toJson(),
  'weight': ?instance.weight,
  'index': ?instance.index,
  'name': ?instance.name,
  'url': ?instance.url,
  'updated_at': ?instance.updatedAt,
  'desc': ?instance.desc,
};

Armor _$ArmorFromJson(Map<String, dynamic> json) => Armor(
  equipmentCategory: json['equipment_category'] == null
      ? null
      : APIReference.fromJson(
          json['equipment_category'] as Map<String, dynamic>,
        ),
  armorCategory: json['armor_category'] as String?,
  armorClass: json['armor_class'] as Map<String, dynamic>?,
  strMinimum: (json['str_minimum'] as num?)?.toDouble(),
  stealthDisadvantage: json['stealth_disadvantage'] as bool?,
  cost: json['cost'] == null
      ? null
      : Cost.fromJson(json['cost'] as Map<String, dynamic>),
  weight: (json['weight'] as num?)?.toDouble(),
  index: json['index'] as String?,
  name: json['name'] as String?,
  url: json['url'] as String?,
  updatedAt: json['updated_at'] as String?,
  desc:
      (json['desc'] as List<dynamic>?)?.map((e) => e as String).toList() ?? [],
);

Map<String, dynamic> _$ArmorToJson(Armor instance) => <String, dynamic>{
  'equipment_category': ?instance.equipmentCategory?.toJson(),
  'armor_category': ?instance.armorCategory,
  'armor_class': ?instance.armorClass,
  'str_minimum': ?instance.strMinimum,
  'stealth_disadvantage': ?instance.stealthDisadvantage,
  'cost': ?instance.cost?.toJson(),
  'weight': ?instance.weight,
  'index': ?instance.index,
  'name': ?instance.name,
  'url': ?instance.url,
  'updated_at': ?instance.updatedAt,
  'desc': ?instance.desc,
};

MagicItem _$MagicItemFromJson(Map<String, dynamic> json) => MagicItem(
  image: json['image'] as String?,
  equipmentCategory: json['equipment_category'] == null
      ? null
      : APIReference.fromJson(
          json['equipment_category'] as Map<String, dynamic>,
        ),
  rarity: json['rarity'] == null
      ? null
      : MagicItem$Rarity.fromJson(json['rarity'] as Map<String, dynamic>),
  variants:
      (json['variants'] as List<dynamic>?)
          ?.map((e) => APIReference.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  variant: json['variant'] as bool?,
  index: json['index'] as String?,
  name: json['name'] as String?,
  url: json['url'] as String?,
  updatedAt: json['updated_at'] as String?,
  desc:
      (json['desc'] as List<dynamic>?)?.map((e) => e as String).toList() ?? [],
);

Map<String, dynamic> _$MagicItemToJson(MagicItem instance) => <String, dynamic>{
  'image': ?instance.image,
  'equipment_category': ?instance.equipmentCategory?.toJson(),
  'rarity': ?instance.rarity?.toJson(),
  'variants': ?instance.variants?.map((e) => e.toJson()).toList(),
  'variant': ?instance.variant,
  'index': ?instance.index,
  'name': ?instance.name,
  'url': ?instance.url,
  'updated_at': ?instance.updatedAt,
  'desc': ?instance.desc,
};

DamageType _$DamageTypeFromJson(Map<String, dynamic> json) => DamageType(
  index: json['index'] as String?,
  name: json['name'] as String?,
  url: json['url'] as String?,
  updatedAt: json['updated_at'] as String?,
  desc:
      (json['desc'] as List<dynamic>?)?.map((e) => e as String).toList() ?? [],
);

Map<String, dynamic> _$DamageTypeToJson(DamageType instance) =>
    <String, dynamic>{
      'index': ?instance.index,
      'name': ?instance.name,
      'url': ?instance.url,
      'updated_at': ?instance.updatedAt,
      'desc': ?instance.desc,
    };

DamageAtCharacterLevel _$DamageAtCharacterLevelFromJson(
  Map<String, dynamic> json,
) => DamageAtCharacterLevel(
  damageAtCharacterLevel:
      json['damage_at_character_level'] as Map<String, dynamic>?,
  damageType: json['damage_type'] == null
      ? null
      : APIReference.fromJson(json['damage_type'] as Map<String, dynamic>),
);

Map<String, dynamic> _$DamageAtCharacterLevelToJson(
  DamageAtCharacterLevel instance,
) => <String, dynamic>{
  'damage_at_character_level': ?instance.damageAtCharacterLevel,
  'damage_type': ?instance.damageType?.toJson(),
};

DamageAtSlotLevel _$DamageAtSlotLevelFromJson(Map<String, dynamic> json) =>
    DamageAtSlotLevel(
      damageAtSlotLevel: json['damage_at_slot_level'] as Map<String, dynamic>?,
      damageType: json['damage_type'] == null
          ? null
          : APIReference.fromJson(json['damage_type'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DamageAtSlotLevelToJson(DamageAtSlotLevel instance) =>
    <String, dynamic>{
      'damage_at_slot_level': ?instance.damageAtSlotLevel,
      'damage_type': ?instance.damageType?.toJson(),
    };

Condition _$ConditionFromJson(Map<String, dynamic> json) => Condition(
  index: json['index'] as String?,
  name: json['name'] as String?,
  url: json['url'] as String?,
  updatedAt: json['updated_at'] as String?,
  desc:
      (json['desc'] as List<dynamic>?)?.map((e) => e as String).toList() ?? [],
);

Map<String, dynamic> _$ConditionToJson(Condition instance) => <String, dynamic>{
  'index': ?instance.index,
  'name': ?instance.name,
  'url': ?instance.url,
  'updated_at': ?instance.updatedAt,
  'desc': ?instance.desc,
};

MagicSchool _$MagicSchoolFromJson(Map<String, dynamic> json) => MagicSchool(
  desc: json['desc'] as String?,
  index: json['index'] as String?,
  name: json['name'] as String?,
  url: json['url'] as String?,
  updatedAt: json['updated_at'] as String?,
);

Map<String, dynamic> _$MagicSchoolToJson(MagicSchool instance) =>
    <String, dynamic>{
      'desc': ?instance.desc,
      'index': ?instance.index,
      'name': ?instance.name,
      'url': ?instance.url,
      'updated_at': ?instance.updatedAt,
    };

Skill _$SkillFromJson(Map<String, dynamic> json) => Skill(
  abilityScore: json['ability_score'] == null
      ? null
      : APIReference.fromJson(json['ability_score'] as Map<String, dynamic>),
  index: json['index'] as String?,
  name: json['name'] as String?,
  url: json['url'] as String?,
  updatedAt: json['updated_at'] as String?,
  desc:
      (json['desc'] as List<dynamic>?)?.map((e) => e as String).toList() ?? [],
);

Map<String, dynamic> _$SkillToJson(Skill instance) => <String, dynamic>{
  'ability_score': ?instance.abilityScore?.toJson(),
  'index': ?instance.index,
  'name': ?instance.name,
  'url': ?instance.url,
  'updated_at': ?instance.updatedAt,
  'desc': ?instance.desc,
};

Proficiency _$ProficiencyFromJson(Map<String, dynamic> json) => Proficiency(
  type: json['type'] as String?,
  classes:
      (json['classes'] as List<dynamic>?)
          ?.map((e) => APIReference.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  races:
      (json['races'] as List<dynamic>?)
          ?.map((e) => APIReference.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  reference: json['reference'] == null
      ? null
      : APIReference.fromJson(json['reference'] as Map<String, dynamic>),
  index: json['index'] as String?,
  name: json['name'] as String?,
  url: json['url'] as String?,
  updatedAt: json['updated_at'] as String?,
);

Map<String, dynamic> _$ProficiencyToJson(Proficiency instance) =>
    <String, dynamic>{
      'type': ?instance.type,
      'classes': ?instance.classes?.map((e) => e.toJson()).toList(),
      'races': ?instance.races?.map((e) => e.toJson()).toList(),
      'reference': ?instance.reference?.toJson(),
      'index': ?instance.index,
      'name': ?instance.name,
      'url': ?instance.url,
      'updated_at': ?instance.updatedAt,
    };

Language _$LanguageFromJson(Map<String, dynamic> json) => Language(
  desc: json['desc'] as String?,
  type: languageTypeNullableFromJson(json['type']),
  script: json['script'] as String?,
  typicalSpeakers:
      (json['typical_speakers'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      [],
  index: json['index'] as String?,
  name: json['name'] as String?,
  url: json['url'] as String?,
  updatedAt: json['updated_at'] as String?,
);

Map<String, dynamic> _$LanguageToJson(Language instance) => <String, dynamic>{
  'desc': ?instance.desc,
  'type': ?languageTypeNullableToJson(instance.type),
  'script': ?instance.script,
  'typical_speakers': ?instance.typicalSpeakers,
  'index': ?instance.index,
  'name': ?instance.name,
  'url': ?instance.url,
  'updated_at': ?instance.updatedAt,
};

Background _$BackgroundFromJson(Map<String, dynamic> json) => Background(
  startingProficiencies:
      (json['starting_proficiencies'] as List<dynamic>?)
          ?.map((e) => APIReference.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  startingEquipment:
      (json['starting_equipment'] as List<dynamic>?)
          ?.map((e) => APIReference.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  startingEquipmentOptions: json['starting_equipment_options'] == null
      ? null
      : Choice.fromJson(
          json['starting_equipment_options'] as Map<String, dynamic>,
        ),
  languageOptions: json['language_options'] == null
      ? null
      : Choice.fromJson(json['language_options'] as Map<String, dynamic>),
  feature: json['feature'] == null
      ? null
      : Background$Feature.fromJson(json['feature'] as Map<String, dynamic>),
  personalityTraits: json['personality_traits'],
  ideals: json['ideals'] == null
      ? null
      : Choice.fromJson(json['ideals'] as Map<String, dynamic>),
  bonds: json['bonds'] == null
      ? null
      : Choice.fromJson(json['bonds'] as Map<String, dynamic>),
  flaws: json['flaws'] == null
      ? null
      : Choice.fromJson(json['flaws'] as Map<String, dynamic>),
  index: json['index'] as String?,
  name: json['name'] as String?,
  url: json['url'] as String?,
  updatedAt: json['updated_at'] as String?,
);

Map<String, dynamic> _$BackgroundToJson(
  Background instance,
) => <String, dynamic>{
  'starting_proficiencies': ?instance.startingProficiencies
      ?.map((e) => e.toJson())
      .toList(),
  'starting_equipment': ?instance.startingEquipment
      ?.map((e) => e.toJson())
      .toList(),
  'starting_equipment_options': ?instance.startingEquipmentOptions?.toJson(),
  'language_options': ?instance.languageOptions?.toJson(),
  'feature': ?instance.feature?.toJson(),
  'personality_traits': ?instance.personalityTraits,
  'ideals': ?instance.ideals?.toJson(),
  'bonds': ?instance.bonds?.toJson(),
  'flaws': ?instance.flaws?.toJson(),
  'index': ?instance.index,
  'name': ?instance.name,
  'url': ?instance.url,
  'updated_at': ?instance.updatedAt,
};

Feat _$FeatFromJson(Map<String, dynamic> json) => Feat(
  prerequisites:
      (json['prerequisites'] as List<dynamic>?)
          ?.map((e) => Prerequisite.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  index: json['index'] as String?,
  name: json['name'] as String?,
  url: json['url'] as String?,
  updatedAt: json['updated_at'] as String?,
  desc:
      (json['desc'] as List<dynamic>?)?.map((e) => e as String).toList() ?? [],
);

Map<String, dynamic> _$FeatToJson(Feat instance) => <String, dynamic>{
  'prerequisites': ?instance.prerequisites?.map((e) => e.toJson()).toList(),
  'index': ?instance.index,
  'name': ?instance.name,
  'url': ?instance.url,
  'updated_at': ?instance.updatedAt,
  'desc': ?instance.desc,
};

Subclass _$SubclassFromJson(Map<String, dynamic> json) => Subclass(
  $class: json['class'] == null
      ? null
      : APIReference.fromJson(json['class'] as Map<String, dynamic>),
  subclassFlavor: json['subclass_flavor'] as String?,
  subclassLevels: json['subclass_levels'] as String?,
  spells: (json['spells'] as List<dynamic>?)
      ?.map((e) => Subclass$Spells$Item.fromJson(e as Map<String, dynamic>))
      .toList(),
  index: json['index'] as String?,
  name: json['name'] as String?,
  url: json['url'] as String?,
  updatedAt: json['updated_at'] as String?,
  desc:
      (json['desc'] as List<dynamic>?)?.map((e) => e as String).toList() ?? [],
);

Map<String, dynamic> _$SubclassToJson(Subclass instance) => <String, dynamic>{
  'class': ?instance.$class?.toJson(),
  'subclass_flavor': ?instance.subclassFlavor,
  'subclass_levels': ?instance.subclassLevels,
  'spells': ?instance.spells?.map((e) => e.toJson()).toList(),
  'index': ?instance.index,
  'name': ?instance.name,
  'url': ?instance.url,
  'updated_at': ?instance.updatedAt,
  'desc': ?instance.desc,
};

SubclassLevel _$SubclassLevelFromJson(Map<String, dynamic> json) =>
    SubclassLevel(
      index: json['index'] as String?,
      url: json['url'] as String?,
      level: (json['level'] as num?)?.toDouble(),
      abilityScoreBonuses: (json['ability_score_bonuses'] as num?)?.toDouble(),
      profBonus: (json['prof_bonus'] as num?)?.toDouble(),
      features:
          (json['features'] as List<dynamic>?)
              ?.map((e) => APIReference.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      spellcasting: json['spellcasting'] == null
          ? null
          : SubclassLevel$Spellcasting.fromJson(
              json['spellcasting'] as Map<String, dynamic>,
            ),
      classspecific: json['classspecific'],
    );

Map<String, dynamic> _$SubclassLevelToJson(SubclassLevel instance) =>
    <String, dynamic>{
      'index': ?instance.index,
      'url': ?instance.url,
      'level': ?instance.level,
      'ability_score_bonuses': ?instance.abilityScoreBonuses,
      'prof_bonus': ?instance.profBonus,
      'features': ?instance.features?.map((e) => e.toJson()).toList(),
      'spellcasting': ?instance.spellcasting?.toJson(),
      'classspecific': ?instance.classspecific,
    };

SubclassLevelResource _$SubclassLevelResourceFromJson(
  Map<String, dynamic> json,
) => SubclassLevelResource(
  index: json['index'] as String?,
  url: json['url'] as String?,
  level: (json['level'] as num?)?.toDouble(),
  features:
      (json['features'] as List<dynamic>?)
          ?.map((e) => APIReference.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  $class: json['class'] == null
      ? null
      : APIReference.fromJson(json['class'] as Map<String, dynamic>),
  subclass: json['subclass'] == null
      ? null
      : APIReference.fromJson(json['subclass'] as Map<String, dynamic>),
);

Map<String, dynamic> _$SubclassLevelResourceToJson(
  SubclassLevelResource instance,
) => <String, dynamic>{
  'index': ?instance.index,
  'url': ?instance.url,
  'level': ?instance.level,
  'features': ?instance.features?.map((e) => e.toJson()).toList(),
  'class': ?instance.$class?.toJson(),
  'subclass': ?instance.subclass?.toJson(),
};

ClassLevel _$ClassLevelFromJson(Map<String, dynamic> json) => ClassLevel(
  index: json['index'] as String?,
  url: json['url'] as String?,
  level: (json['level'] as num?)?.toDouble(),
  abilityScoreBonuses: (json['ability_score_bonuses'] as num?)?.toDouble(),
  profBonus: (json['prof_bonus'] as num?)?.toDouble(),
  features:
      (json['features'] as List<dynamic>?)
          ?.map((e) => APIReference.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  spellcasting: json['spellcasting'] == null
      ? null
      : ClassLevel$Spellcasting.fromJson(
          json['spellcasting'] as Map<String, dynamic>,
        ),
  classSpecific: json['class_specific'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$ClassLevelToJson(ClassLevel instance) =>
    <String, dynamic>{
      'index': ?instance.index,
      'url': ?instance.url,
      'level': ?instance.level,
      'ability_score_bonuses': ?instance.abilityScoreBonuses,
      'prof_bonus': ?instance.profBonus,
      'features': ?instance.features?.map((e) => e.toJson()).toList(),
      'spellcasting': ?instance.spellcasting?.toJson(),
      'class_specific': ?instance.classSpecific,
    };

Feature _$FeatureFromJson(Map<String, dynamic> json) => Feature(
  level: (json['level'] as num?)?.toDouble(),
  $class: json['class'] == null
      ? null
      : APIReference.fromJson(json['class'] as Map<String, dynamic>),
  subclass: json['subclass'] == null
      ? null
      : APIReference.fromJson(json['subclass'] as Map<String, dynamic>),
  parent: json['parent'] == null
      ? null
      : APIReference.fromJson(json['parent'] as Map<String, dynamic>),
  prerequisites:
      (json['prerequisites'] as List<dynamic>?)
          ?.map((e) => e as Object)
          .toList() ??
      [],
  featureSpecific: json['feature_specific'],
  index: json['index'] as String?,
  name: json['name'] as String?,
  url: json['url'] as String?,
  updatedAt: json['updated_at'] as String?,
  desc:
      (json['desc'] as List<dynamic>?)?.map((e) => e as String).toList() ?? [],
);

Map<String, dynamic> _$FeatureToJson(Feature instance) => <String, dynamic>{
  'level': ?instance.level,
  'class': ?instance.$class?.toJson(),
  'subclass': ?instance.subclass?.toJson(),
  'parent': ?instance.parent?.toJson(),
  'prerequisites': ?instance.prerequisites,
  'feature_specific': ?instance.featureSpecific,
  'index': ?instance.index,
  'name': ?instance.name,
  'url': ?instance.url,
  'updated_at': ?instance.updatedAt,
  'desc': ?instance.desc,
};

Race _$RaceFromJson(Map<String, dynamic> json) => Race(
  speed: (json['speed'] as num?)?.toDouble(),
  abilityBonuses:
      (json['ability_bonuses'] as List<dynamic>?)
          ?.map((e) => AbilityBonus.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  alignment: json['alignment'] as String?,
  age: json['age'] as String?,
  size: json['size'] as String?,
  sizeDescription: json['size_description'] as String?,
  startingProficiencies:
      (json['starting_proficiencies'] as List<dynamic>?)
          ?.map((e) => APIReference.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  startingProficiencyOptions: json['starting_proficiency_options'] == null
      ? null
      : Choice.fromJson(
          json['starting_proficiency_options'] as Map<String, dynamic>,
        ),
  languages:
      (json['languages'] as List<dynamic>?)
          ?.map((e) => APIReference.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  languageDesc: json['language_desc'] as String?,
  traits:
      (json['traits'] as List<dynamic>?)
          ?.map((e) => APIReference.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  subraces:
      (json['subraces'] as List<dynamic>?)
          ?.map((e) => APIReference.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  index: json['index'] as String?,
  name: json['name'] as String?,
  url: json['url'] as String?,
  updatedAt: json['updated_at'] as String?,
);

Map<String, dynamic> _$RaceToJson(Race instance) => <String, dynamic>{
  'speed': ?instance.speed,
  'ability_bonuses': ?instance.abilityBonuses?.map((e) => e.toJson()).toList(),
  'alignment': ?instance.alignment,
  'age': ?instance.age,
  'size': ?instance.size,
  'size_description': ?instance.sizeDescription,
  'starting_proficiencies': ?instance.startingProficiencies
      ?.map((e) => e.toJson())
      .toList(),
  'starting_proficiency_options': ?instance.startingProficiencyOptions
      ?.toJson(),
  'languages': ?instance.languages?.map((e) => e.toJson()).toList(),
  'language_desc': ?instance.languageDesc,
  'traits': ?instance.traits?.map((e) => e.toJson()).toList(),
  'subraces': ?instance.subraces?.map((e) => e.toJson()).toList(),
  'index': ?instance.index,
  'name': ?instance.name,
  'url': ?instance.url,
  'updated_at': ?instance.updatedAt,
};

AbilityBonus _$AbilityBonusFromJson(Map<String, dynamic> json) => AbilityBonus(
  bonus: (json['bonus'] as num?)?.toDouble(),
  abilityScore: json['ability_score'] == null
      ? null
      : APIReference.fromJson(json['ability_score'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AbilityBonusToJson(AbilityBonus instance) =>
    <String, dynamic>{
      'bonus': ?instance.bonus,
      'ability_score': ?instance.abilityScore?.toJson(),
    };

Spell _$SpellFromJson(Map<String, dynamic> json) => Spell(
  higherLevel:
      (json['higher_level'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      [],
  range: json['range'] as String?,
  components: spellComponentsListFromJson(json['components'] as List?),
  material: json['material'] as String?,
  areaOfEffect: json['area_of_effect'] == null
      ? null
      : AreaOfEffect.fromJson(json['area_of_effect'] as Map<String, dynamic>),
  ritual: json['ritual'] as bool?,
  duration: json['duration'] as String?,
  concentration: json['concentration'] as bool?,
  castingTime: json['casting_time'] as String?,
  level: (json['level'] as num?)?.toDouble(),
  attackType: json['attack_type'] as String?,
  damage: json['damage'],
  school: json['school'] == null
      ? null
      : APIReference.fromJson(json['school'] as Map<String, dynamic>),
  classes:
      (json['classes'] as List<dynamic>?)
          ?.map((e) => APIReference.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  subclasses:
      (json['subclasses'] as List<dynamic>?)
          ?.map((e) => APIReference.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  index: json['index'] as String?,
  name: json['name'] as String?,
  url: json['url'] as String?,
  updatedAt: json['updated_at'] as String?,
  desc:
      (json['desc'] as List<dynamic>?)?.map((e) => e as String).toList() ?? [],
);

Map<String, dynamic> _$SpellToJson(Spell instance) => <String, dynamic>{
  'higher_level': ?instance.higherLevel,
  'range': ?instance.range,
  'components': spellComponentsListToJson(instance.components),
  'material': ?instance.material,
  'area_of_effect': ?instance.areaOfEffect?.toJson(),
  'ritual': ?instance.ritual,
  'duration': ?instance.duration,
  'concentration': ?instance.concentration,
  'casting_time': ?instance.castingTime,
  'level': ?instance.level,
  'attack_type': ?instance.attackType,
  'damage': ?instance.damage,
  'school': ?instance.school?.toJson(),
  'classes': ?instance.classes?.map((e) => e.toJson()).toList(),
  'subclasses': ?instance.subclasses?.map((e) => e.toJson()).toList(),
  'index': ?instance.index,
  'name': ?instance.name,
  'url': ?instance.url,
  'updated_at': ?instance.updatedAt,
  'desc': ?instance.desc,
};

Subrace _$SubraceFromJson(Map<String, dynamic> json) => Subrace(
  desc: json['desc'] as String?,
  race: json['race'] == null
      ? null
      : APIReference.fromJson(json['race'] as Map<String, dynamic>),
  abilityBonuses:
      (json['ability_bonuses'] as List<dynamic>?)
          ?.map((e) => AbilityBonus.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  startingProficiencies:
      (json['starting_proficiencies'] as List<dynamic>?)
          ?.map((e) => APIReference.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  languages:
      (json['languages'] as List<dynamic>?)
          ?.map((e) => APIReference.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  languageOptions: json['language_options'] == null
      ? null
      : Choice.fromJson(json['language_options'] as Map<String, dynamic>),
  racialTraits:
      (json['racial_traits'] as List<dynamic>?)
          ?.map((e) => APIReference.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  index: json['index'] as String?,
  name: json['name'] as String?,
  url: json['url'] as String?,
  updatedAt: json['updated_at'] as String?,
);

Map<String, dynamic> _$SubraceToJson(Subrace instance) => <String, dynamic>{
  'desc': ?instance.desc,
  'race': ?instance.race?.toJson(),
  'ability_bonuses': ?instance.abilityBonuses?.map((e) => e.toJson()).toList(),
  'starting_proficiencies': ?instance.startingProficiencies
      ?.map((e) => e.toJson())
      .toList(),
  'languages': ?instance.languages?.map((e) => e.toJson()).toList(),
  'language_options': ?instance.languageOptions?.toJson(),
  'racial_traits': ?instance.racialTraits?.map((e) => e.toJson()).toList(),
  'index': ?instance.index,
  'name': ?instance.name,
  'url': ?instance.url,
  'updated_at': ?instance.updatedAt,
};

Trait _$TraitFromJson(Map<String, dynamic> json) => Trait(
  races:
      (json['races'] as List<dynamic>?)
          ?.map((e) => APIReference.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  subraces:
      (json['subraces'] as List<dynamic>?)
          ?.map((e) => APIReference.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  proficiencies:
      (json['proficiencies'] as List<dynamic>?)
          ?.map((e) => APIReference.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  proficiencyChoices: json['proficiency_choices'] == null
      ? null
      : Choice.fromJson(json['proficiency_choices'] as Map<String, dynamic>),
  languageOptions: json['language_options'] == null
      ? null
      : Choice.fromJson(json['language_options'] as Map<String, dynamic>),
  traitSpecific: json['trait_specific'],
  index: json['index'] as String?,
  name: json['name'] as String?,
  url: json['url'] as String?,
  updatedAt: json['updated_at'] as String?,
  desc:
      (json['desc'] as List<dynamic>?)?.map((e) => e as String).toList() ?? [],
);

Map<String, dynamic> _$TraitToJson(Trait instance) => <String, dynamic>{
  'races': ?instance.races?.map((e) => e.toJson()).toList(),
  'subraces': ?instance.subraces?.map((e) => e.toJson()).toList(),
  'proficiencies': ?instance.proficiencies?.map((e) => e.toJson()).toList(),
  'proficiency_choices': ?instance.proficiencyChoices?.toJson(),
  'language_options': ?instance.languageOptions?.toJson(),
  'trait_specific': ?instance.traitSpecific,
  'index': ?instance.index,
  'name': ?instance.name,
  'url': ?instance.url,
  'updated_at': ?instance.updatedAt,
  'desc': ?instance.desc,
};

WeaponProperty _$WeaponPropertyFromJson(Map<String, dynamic> json) =>
    WeaponProperty(
      index: json['index'] as String?,
      name: json['name'] as String?,
      url: json['url'] as String?,
      updatedAt: json['updated_at'] as String?,
      desc:
          (json['desc'] as List<dynamic>?)?.map((e) => e as String).toList() ??
          [],
    );

Map<String, dynamic> _$WeaponPropertyToJson(WeaponProperty instance) =>
    <String, dynamic>{
      'index': ?instance.index,
      'name': ?instance.name,
      'url': ?instance.url,
      'updated_at': ?instance.updatedAt,
      'desc': ?instance.desc,
    };

Rule _$RuleFromJson(Map<String, dynamic> json) => Rule(
  desc: json['desc'] as String?,
  subsections:
      (json['subsections'] as List<dynamic>?)
          ?.map((e) => APIReference.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  index: json['index'] as String?,
  name: json['name'] as String?,
  url: json['url'] as String?,
  updatedAt: json['updated_at'] as String?,
);

Map<String, dynamic> _$RuleToJson(Rule instance) => <String, dynamic>{
  'desc': ?instance.desc,
  'subsections': ?instance.subsections?.map((e) => e.toJson()).toList(),
  'index': ?instance.index,
  'name': ?instance.name,
  'url': ?instance.url,
  'updated_at': ?instance.updatedAt,
};

RuleSection _$RuleSectionFromJson(Map<String, dynamic> json) => RuleSection(
  desc: json['desc'] as String?,
  index: json['index'] as String?,
  name: json['name'] as String?,
  url: json['url'] as String?,
  updatedAt: json['updated_at'] as String?,
);

Map<String, dynamic> _$RuleSectionToJson(RuleSection instance) =>
    <String, dynamic>{
      'desc': ?instance.desc,
      'index': ?instance.index,
      'name': ?instance.name,
      'url': ?instance.url,
      'updated_at': ?instance.updatedAt,
    };

Monster _$MonsterFromJson(Map<String, dynamic> json) => Monster(
  image: json['image'] as String?,
  size: monsterSizeNullableFromJson(json['size']),
  type: json['type'] as String?,
  subtype: json['subtype'] as String?,
  alignment: json['alignment'] as String?,
  armorClass:
      (json['armor_class'] as List<dynamic>?)
          ?.map((e) => MonsterArmorClass.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  hitPoints: (json['hit_points'] as num?)?.toDouble(),
  hitDice: json['hit_dice'] as String?,
  hitPointsRoll: json['hit_points_roll'] as String?,
  actions:
      (json['actions'] as List<dynamic>?)
          ?.map((e) => MonsterAction.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  legendaryActions:
      (json['legendary_actions'] as List<dynamic>?)
          ?.map((e) => MonsterAction.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  challengeRating: (json['challenge_rating'] as num?)?.toDouble(),
  proficiencyBonus: (json['proficiency_bonus'] as num?)?.toDouble(),
  conditionImmunities:
      (json['condition_immunities'] as List<dynamic>?)
          ?.map((e) => APIReference.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  damageImmunities:
      (json['damage_immunities'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      [],
  damageResistances:
      (json['damage_resistances'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      [],
  damageVulnerabilities:
      (json['damage_vulnerabilities'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      [],
  forms:
      (json['forms'] as List<dynamic>?)
          ?.map((e) => APIReference.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  languages: json['languages'] as String?,
  proficiencies:
      (json['proficiencies'] as List<dynamic>?)
          ?.map((e) => MonsterProficiency.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  reactions:
      (json['reactions'] as List<dynamic>?)
          ?.map((e) => MonsterAction.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  senses: json['senses'] == null
      ? null
      : MonsterSense.fromJson(json['senses'] as Map<String, dynamic>),
  specialAbilities:
      (json['special_abilities'] as List<dynamic>?)
          ?.map(
            (e) => MonsterSpecialAbility.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      [],
  speed: json['speed'] == null
      ? null
      : Monster$Speed.fromJson(json['speed'] as Map<String, dynamic>),
  xp: (json['xp'] as num?)?.toDouble(),
  index: json['index'] as String?,
  name: json['name'] as String?,
  url: json['url'] as String?,
  updatedAt: json['updated_at'] as String?,
  desc:
      (json['desc'] as List<dynamic>?)?.map((e) => e as String).toList() ?? [],
  charisma: (json['charisma'] as num?)?.toDouble(),
  constitution: (json['constitution'] as num?)?.toDouble(),
  dexterity: (json['dexterity'] as num?)?.toDouble(),
  intelligence: (json['intelligence'] as num?)?.toDouble(),
  strength: (json['strength'] as num?)?.toDouble(),
  wisdom: (json['wisdom'] as num?)?.toDouble(),
);

Map<String, dynamic> _$MonsterToJson(Monster instance) => <String, dynamic>{
  'image': ?instance.image,
  'size': ?monsterSizeNullableToJson(instance.size),
  'type': ?instance.type,
  'subtype': ?instance.subtype,
  'alignment': ?instance.alignment,
  'armor_class': ?instance.armorClass?.map((e) => e.toJson()).toList(),
  'hit_points': ?instance.hitPoints,
  'hit_dice': ?instance.hitDice,
  'hit_points_roll': ?instance.hitPointsRoll,
  'actions': ?instance.actions?.map((e) => e.toJson()).toList(),
  'legendary_actions': ?instance.legendaryActions
      ?.map((e) => e.toJson())
      .toList(),
  'challenge_rating': ?instance.challengeRating,
  'proficiency_bonus': ?instance.proficiencyBonus,
  'condition_immunities': ?instance.conditionImmunities
      ?.map((e) => e.toJson())
      .toList(),
  'damage_immunities': ?instance.damageImmunities,
  'damage_resistances': ?instance.damageResistances,
  'damage_vulnerabilities': ?instance.damageVulnerabilities,
  'forms': ?instance.forms?.map((e) => e.toJson()).toList(),
  'languages': ?instance.languages,
  'proficiencies': ?instance.proficiencies?.map((e) => e.toJson()).toList(),
  'reactions': ?instance.reactions?.map((e) => e.toJson()).toList(),
  'senses': ?instance.senses?.toJson(),
  'special_abilities': ?instance.specialAbilities
      ?.map((e) => e.toJson())
      .toList(),
  'speed': ?instance.speed?.toJson(),
  'xp': ?instance.xp,
  'index': ?instance.index,
  'name': ?instance.name,
  'url': ?instance.url,
  'updated_at': ?instance.updatedAt,
  'desc': ?instance.desc,
  'charisma': ?instance.charisma,
  'constitution': ?instance.constitution,
  'dexterity': ?instance.dexterity,
  'intelligence': ?instance.intelligence,
  'strength': ?instance.strength,
  'wisdom': ?instance.wisdom,
};

MonsterAbility _$MonsterAbilityFromJson(Map<String, dynamic> json) =>
    MonsterAbility(
      charisma: (json['charisma'] as num?)?.toDouble(),
      constitution: (json['constitution'] as num?)?.toDouble(),
      dexterity: (json['dexterity'] as num?)?.toDouble(),
      intelligence: (json['intelligence'] as num?)?.toDouble(),
      strength: (json['strength'] as num?)?.toDouble(),
      wisdom: (json['wisdom'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$MonsterAbilityToJson(MonsterAbility instance) =>
    <String, dynamic>{
      'charisma': ?instance.charisma,
      'constitution': ?instance.constitution,
      'dexterity': ?instance.dexterity,
      'intelligence': ?instance.intelligence,
      'strength': ?instance.strength,
      'wisdom': ?instance.wisdom,
    };

MonsterAction _$MonsterActionFromJson(Map<String, dynamic> json) =>
    MonsterAction(
      name: json['name'] as String?,
      desc: json['desc'] as String?,
      actionOptions: json['action_options'] == null
          ? null
          : Choice.fromJson(json['action_options'] as Map<String, dynamic>),
      actions:
          (json['actions'] as List<dynamic>?)
              ?.map(
                (e) => MonsterMultiAttackAction.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList() ??
          [],
      options: json['options'] == null
          ? null
          : Choice.fromJson(json['options'] as Map<String, dynamic>),
      multiattackType: json['multiattack_type'] as String?,
      attackBonus: (json['attack_bonus'] as num?)?.toDouble(),
      dc: json['dc'] == null
          ? null
          : Dc.fromJson(json['dc'] as Map<String, dynamic>),
      attacks:
          (json['attacks'] as List<dynamic>?)
              ?.map((e) => MonsterAttack.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      damage:
          (json['damage'] as List<dynamic>?)
              ?.map((e) => Damage.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$MonsterActionToJson(MonsterAction instance) =>
    <String, dynamic>{
      'name': ?instance.name,
      'desc': ?instance.desc,
      'action_options': ?instance.actionOptions?.toJson(),
      'actions': ?instance.actions?.map((e) => e.toJson()).toList(),
      'options': ?instance.options?.toJson(),
      'multiattack_type': ?instance.multiattackType,
      'attack_bonus': ?instance.attackBonus,
      'dc': ?instance.dc?.toJson(),
      'attacks': ?instance.attacks?.map((e) => e.toJson()).toList(),
      'damage': ?instance.damage?.map((e) => e.toJson()).toList(),
    };

MonsterArmorClass _$MonsterArmorClassFromJson(Map<String, dynamic> json) =>
    MonsterArmorClass();

Map<String, dynamic> _$MonsterArmorClassToJson(MonsterArmorClass instance) =>
    <String, dynamic>{};

MonsterAttack _$MonsterAttackFromJson(Map<String, dynamic> json) =>
    MonsterAttack(
      name: json['name'] as String?,
      dc: json['dc'] == null
          ? null
          : Dc.fromJson(json['dc'] as Map<String, dynamic>),
      damage: json['damage'] == null
          ? null
          : Damage.fromJson(json['damage'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MonsterAttackToJson(MonsterAttack instance) =>
    <String, dynamic>{
      'name': ?instance.name,
      'dc': ?instance.dc?.toJson(),
      'damage': ?instance.damage?.toJson(),
    };

MonsterMultiAttackAction _$MonsterMultiAttackActionFromJson(
  Map<String, dynamic> json,
) => MonsterMultiAttackAction(
  actionName: json['action_name'] as String?,
  count: (json['count'] as num?)?.toDouble(),
  type: monsterMultiAttackActionTypeNullableFromJson(json['type']),
);

Map<String, dynamic> _$MonsterMultiAttackActionToJson(
  MonsterMultiAttackAction instance,
) => <String, dynamic>{
  'action_name': ?instance.actionName,
  'count': ?instance.count,
  'type': ?monsterMultiAttackActionTypeNullableToJson(instance.type),
};

MonsterProficiency _$MonsterProficiencyFromJson(Map<String, dynamic> json) =>
    MonsterProficiency(
      value: (json['value'] as num?)?.toDouble(),
      proficiency: json['proficiency'] == null
          ? null
          : APIReference.fromJson(json['proficiency'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MonsterProficiencyToJson(MonsterProficiency instance) =>
    <String, dynamic>{
      'value': ?instance.value,
      'proficiency': ?instance.proficiency?.toJson(),
    };

MonsterSense _$MonsterSenseFromJson(Map<String, dynamic> json) => MonsterSense(
  passivePerception: (json['passive_perception'] as num?)?.toDouble(),
  blindsight: json['blindsight'] as String?,
  darkvision: json['darkvision'] as String?,
  tremorsense: json['tremorsense'] as String?,
  truesight: json['truesight'] as String?,
);

Map<String, dynamic> _$MonsterSenseToJson(MonsterSense instance) =>
    <String, dynamic>{
      'passive_perception': ?instance.passivePerception,
      'blindsight': ?instance.blindsight,
      'darkvision': ?instance.darkvision,
      'tremorsense': ?instance.tremorsense,
      'truesight': ?instance.truesight,
    };

MonsterSpecialAbility _$MonsterSpecialAbilityFromJson(
  Map<String, dynamic> json,
) => MonsterSpecialAbility(
  name: json['name'] as String?,
  desc: json['desc'] as String?,
  attackBonus: (json['attack_bonus'] as num?)?.toDouble(),
  damage: json['damage'] == null
      ? null
      : Damage.fromJson(json['damage'] as Map<String, dynamic>),
  dc: json['dc'] == null
      ? null
      : Dc.fromJson(json['dc'] as Map<String, dynamic>),
  spellcasting: json['spellcasting'] == null
      ? null
      : MonsterSpellcasting.fromJson(
          json['spellcasting'] as Map<String, dynamic>,
        ),
  usage: json['usage'] == null
      ? null
      : MonsterUsage.fromJson(json['usage'] as Map<String, dynamic>),
);

Map<String, dynamic> _$MonsterSpecialAbilityToJson(
  MonsterSpecialAbility instance,
) => <String, dynamic>{
  'name': ?instance.name,
  'desc': ?instance.desc,
  'attack_bonus': ?instance.attackBonus,
  'damage': ?instance.damage?.toJson(),
  'dc': ?instance.dc?.toJson(),
  'spellcasting': ?instance.spellcasting?.toJson(),
  'usage': ?instance.usage?.toJson(),
};

MonsterSpell _$MonsterSpellFromJson(Map<String, dynamic> json) => MonsterSpell(
  name: json['name'] as String?,
  level: (json['level'] as num?)?.toDouble(),
  url: json['url'] as String?,
  usage: json['usage'] == null
      ? null
      : MonsterUsage.fromJson(json['usage'] as Map<String, dynamic>),
);

Map<String, dynamic> _$MonsterSpellToJson(MonsterSpell instance) =>
    <String, dynamic>{
      'name': ?instance.name,
      'level': ?instance.level,
      'url': ?instance.url,
      'usage': ?instance.usage?.toJson(),
    };

MonsterSpellcasting _$MonsterSpellcastingFromJson(Map<String, dynamic> json) =>
    MonsterSpellcasting(
      ability: json['ability'] == null
          ? null
          : APIReference.fromJson(json['ability'] as Map<String, dynamic>),
      dc: (json['dc'] as num?)?.toDouble(),
      modifier: (json['modifier'] as num?)?.toDouble(),
      componentsRequired:
          (json['components_required'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      school: json['school'] as String?,
      slots: json['slots'] as Map<String, dynamic>?,
      spells:
          (json['spells'] as List<dynamic>?)
              ?.map((e) => MonsterSpell.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$MonsterSpellcastingToJson(
  MonsterSpellcasting instance,
) => <String, dynamic>{
  'ability': ?instance.ability?.toJson(),
  'dc': ?instance.dc,
  'modifier': ?instance.modifier,
  'components_required': ?instance.componentsRequired,
  'school': ?instance.school,
  'slots': ?instance.slots,
  'spells': ?instance.spells?.map((e) => e.toJson()).toList(),
};

MonsterUsage _$MonsterUsageFromJson(Map<String, dynamic> json) => MonsterUsage(
  type: monsterUsageTypeNullableFromJson(json['type']),
  restTypes:
      (json['rest_types'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      [],
  times: (json['times'] as num?)?.toDouble(),
);

Map<String, dynamic> _$MonsterUsageToJson(MonsterUsage instance) =>
    <String, dynamic>{
      'type': ?monsterUsageTypeNullableToJson(instance.type),
      'rest_types': ?instance.restTypes,
      'times': ?instance.times,
    };

SpellPrerequisite _$SpellPrerequisiteFromJson(Map<String, dynamic> json) =>
    SpellPrerequisite(
      type: json['type'] as String?,
      index: json['index'] as String?,
      name: json['name'] as String?,
      url: json['url'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$SpellPrerequisiteToJson(SpellPrerequisite instance) =>
    <String, dynamic>{
      'type': ?instance.type,
      'index': ?instance.index,
      'name': ?instance.name,
      'url': ?instance.url,
      'updated_at': ?instance.updatedAt,
    };

ErrorResponse _$ErrorResponseFromJson(Map<String, dynamic> json) =>
    ErrorResponse(error: json['error'] as String);

Map<String, dynamic> _$ErrorResponseToJson(ErrorResponse instance) =>
    <String, dynamic>{'error': instance.error};

Dc _$DcFromJson(Map<String, dynamic> json) => Dc(
  dcType: json['dc_type'] == null
      ? null
      : APIReference.fromJson(json['dc_type'] as Map<String, dynamic>),
  dcValue: (json['dc_value'] as num?)?.toDouble(),
  successType: json['success_type'] as String?,
);

Map<String, dynamic> _$DcToJson(Dc instance) => <String, dynamic>{
  'dc_type': ?instance.dcType?.toJson(),
  'dc_value': ?instance.dcValue,
  'success_type': ?instance.successType,
};

OptionSet _$OptionSetFromJson(Map<String, dynamic> json) => OptionSet();

Map<String, dynamic> _$OptionSetToJson(OptionSet instance) =>
    <String, dynamic>{};

Option _$OptionFromJson(Map<String, dynamic> json) => Option();

Map<String, dynamic> _$OptionToJson(Option instance) => <String, dynamic>{};

ClassLevelSpell _$ClassLevelSpellFromJson(Map<String, dynamic> json) =>
    ClassLevelSpell(
      level: (json['level'] as num?)?.toDouble(),
      index: json['index'] as String?,
      name: json['name'] as String?,
      url: json['url'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$ClassLevelSpellToJson(ClassLevelSpell instance) =>
    <String, dynamic>{
      'level': ?instance.level,
      'index': ?instance.index,
      'name': ?instance.name,
      'url': ?instance.url,
      'updated_at': ?instance.updatedAt,
    };

ClassSpellList _$ClassSpellListFromJson(Map<String, dynamic> json) =>
    ClassSpellList(
      count: (json['count'] as num?)?.toDouble(),
      results:
          (json['results'] as List<dynamic>?)
              ?.map((e) => ClassLevelSpell.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$ClassSpellListToJson(ClassSpellList instance) =>
    <String, dynamic>{
      'count': ?instance.count,
      'results': ?instance.results?.map((e) => e.toJson()).toList(),
    };

Class$StartingEquipment$Item _$Class$StartingEquipment$ItemFromJson(
  Map<String, dynamic> json,
) => Class$StartingEquipment$Item(
  quantity: (json['quantity'] as num?)?.toDouble(),
  equipment: json['equipment'] == null
      ? null
      : APIReference.fromJson(json['equipment'] as Map<String, dynamic>),
);

Map<String, dynamic> _$Class$StartingEquipment$ItemToJson(
  Class$StartingEquipment$Item instance,
) => <String, dynamic>{
  'quantity': ?instance.quantity,
  'equipment': ?instance.equipment?.toJson(),
};

Spellcasting$Info$Item _$Spellcasting$Info$ItemFromJson(
  Map<String, dynamic> json,
) => Spellcasting$Info$Item(
  name: json['name'] as String?,
  desc:
      (json['desc'] as List<dynamic>?)?.map((e) => e as Object).toList() ?? [],
);

Map<String, dynamic> _$Spellcasting$Info$ItemToJson(
  Spellcasting$Info$Item instance,
) => <String, dynamic>{'name': ?instance.name, 'desc': ?instance.desc};

Weapon$Range _$Weapon$RangeFromJson(Map<String, dynamic> json) => Weapon$Range(
  normal: (json['normal'] as num?)?.toDouble(),
  long: (json['long'] as num?)?.toDouble(),
);

Map<String, dynamic> _$Weapon$RangeToJson(Weapon$Range instance) =>
    <String, dynamic>{'normal': ?instance.normal, 'long': ?instance.long};

MagicItem$Rarity _$MagicItem$RarityFromJson(Map<String, dynamic> json) =>
    MagicItem$Rarity(name: magicItem$RarityNameNullableFromJson(json['name']));

Map<String, dynamic> _$MagicItem$RarityToJson(MagicItem$Rarity instance) =>
    <String, dynamic>{
      'name': ?magicItem$RarityNameNullableToJson(instance.name),
    };

Background$Feature _$Background$FeatureFromJson(Map<String, dynamic> json) =>
    Background$Feature(
      name: json['name'] as String?,
      desc:
          (json['desc'] as List<dynamic>?)?.map((e) => e as String).toList() ??
          [],
    );

Map<String, dynamic> _$Background$FeatureToJson(Background$Feature instance) =>
    <String, dynamic>{'name': ?instance.name, 'desc': ?instance.desc};

Subclass$Spells$Item _$Subclass$Spells$ItemFromJson(
  Map<String, dynamic> json,
) => Subclass$Spells$Item(
  prerequisites:
      (json['prerequisites'] as List<dynamic>?)
          ?.map((e) => e as Object)
          .toList() ??
      [],
  spell: json['spell'] == null
      ? null
      : APIReference.fromJson(json['spell'] as Map<String, dynamic>),
);

Map<String, dynamic> _$Subclass$Spells$ItemToJson(
  Subclass$Spells$Item instance,
) => <String, dynamic>{
  'prerequisites': ?instance.prerequisites,
  'spell': ?instance.spell?.toJson(),
};

SubclassLevel$Spellcasting _$SubclassLevel$SpellcastingFromJson(
  Map<String, dynamic> json,
) => SubclassLevel$Spellcasting(
  cantripsKnown: (json['cantrips_known'] as num?)?.toDouble(),
  spellsKnown: (json['spells_known'] as num?)?.toDouble(),
  spellSlotsLevel1: (json['spell_slots_level_1'] as num?)?.toDouble(),
  spellSlotsLevel2: (json['spell_slots_level_2'] as num?)?.toDouble(),
  spellSlotsLevel3: (json['spell_slots_level_3'] as num?)?.toDouble(),
  spellSlotsLevel4: (json['spell_slots_level_4'] as num?)?.toDouble(),
  spellSlotsLevel5: (json['spell_slots_level_5'] as num?)?.toDouble(),
  spellSlotsLevel6: (json['spell_slots_level_6'] as num?)?.toDouble(),
  spellSlotsLevel7: (json['spell_slots_level_7'] as num?)?.toDouble(),
  spellSlotsLevel8: (json['spell_slots_level_8'] as num?)?.toDouble(),
  spellSlotsLevel9: (json['spell_slots_level_9'] as num?)?.toDouble(),
);

Map<String, dynamic> _$SubclassLevel$SpellcastingToJson(
  SubclassLevel$Spellcasting instance,
) => <String, dynamic>{
  'cantrips_known': ?instance.cantripsKnown,
  'spells_known': ?instance.spellsKnown,
  'spell_slots_level_1': ?instance.spellSlotsLevel1,
  'spell_slots_level_2': ?instance.spellSlotsLevel2,
  'spell_slots_level_3': ?instance.spellSlotsLevel3,
  'spell_slots_level_4': ?instance.spellSlotsLevel4,
  'spell_slots_level_5': ?instance.spellSlotsLevel5,
  'spell_slots_level_6': ?instance.spellSlotsLevel6,
  'spell_slots_level_7': ?instance.spellSlotsLevel7,
  'spell_slots_level_8': ?instance.spellSlotsLevel8,
  'spell_slots_level_9': ?instance.spellSlotsLevel9,
};

ClassLevel$Spellcasting _$ClassLevel$SpellcastingFromJson(
  Map<String, dynamic> json,
) => ClassLevel$Spellcasting(
  cantripsKnown: (json['cantrips_known'] as num?)?.toDouble(),
  spellsKnown: (json['spells_known'] as num?)?.toDouble(),
  spellSlotsLevel1: (json['spell_slots_level_1'] as num?)?.toDouble(),
  spellSlotsLevel2: (json['spell_slots_level_2'] as num?)?.toDouble(),
  spellSlotsLevel3: (json['spell_slots_level_3'] as num?)?.toDouble(),
  spellSlotsLevel4: (json['spell_slots_level_4'] as num?)?.toDouble(),
  spellSlotsLevel5: (json['spell_slots_level_5'] as num?)?.toDouble(),
  spellSlotsLevel6: (json['spell_slots_level_6'] as num?)?.toDouble(),
  spellSlotsLevel7: (json['spell_slots_level_7'] as num?)?.toDouble(),
  spellSlotsLevel8: (json['spell_slots_level_8'] as num?)?.toDouble(),
  spellSlotsLevel9: (json['spell_slots_level_9'] as num?)?.toDouble(),
);

Map<String, dynamic> _$ClassLevel$SpellcastingToJson(
  ClassLevel$Spellcasting instance,
) => <String, dynamic>{
  'cantrips_known': ?instance.cantripsKnown,
  'spells_known': ?instance.spellsKnown,
  'spell_slots_level_1': ?instance.spellSlotsLevel1,
  'spell_slots_level_2': ?instance.spellSlotsLevel2,
  'spell_slots_level_3': ?instance.spellSlotsLevel3,
  'spell_slots_level_4': ?instance.spellSlotsLevel4,
  'spell_slots_level_5': ?instance.spellSlotsLevel5,
  'spell_slots_level_6': ?instance.spellSlotsLevel6,
  'spell_slots_level_7': ?instance.spellSlotsLevel7,
  'spell_slots_level_8': ?instance.spellSlotsLevel8,
  'spell_slots_level_9': ?instance.spellSlotsLevel9,
};

Monster$Speed _$Monster$SpeedFromJson(Map<String, dynamic> json) =>
    Monster$Speed(
      walk: json['walk'] as String?,
      burrow: json['burrow'] as String?,
      climb: json['climb'] as String?,
      fly: json['fly'] as String?,
      swim: json['swim'] as String?,
    );

Map<String, dynamic> _$Monster$SpeedToJson(Monster$Speed instance) =>
    <String, dynamic>{
      'walk': ?instance.walk,
      'burrow': ?instance.burrow,
      'climb': ?instance.climb,
      'fly': ?instance.fly,
      'swim': ?instance.swim,
    };
