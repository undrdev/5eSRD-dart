// coverage:ignore-file
// ignore_for_file: type=lint, public_member_api_docs

import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';
import 'dart:convert';

import '5esrd.enums.swagger.dart' as enums;

part '5esrd.models.swagger.g.dart';

@JsonSerializable(explicitToJson: true)
class APIReference {
  const APIReference({this.index, this.name, this.url, this.updatedAt});

  factory APIReference.fromJson(Map<String, dynamic> json) =>
      _$APIReferenceFromJson(json);

  static const toJsonFactory = _$APIReferenceToJson;
  Map<String, dynamic> toJson() => _$APIReferenceToJson(this);

  @JsonKey(name: 'index', includeIfNull: false)
  final String? index;
  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  @JsonKey(name: 'url', includeIfNull: false)
  final String? url;
  @JsonKey(name: 'updated_at', includeIfNull: false)
  final String? updatedAt;
  static const fromJsonFactory = _$APIReferenceFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is APIReference &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality().equals(
                  other.updatedAt,
                  updatedAt,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $APIReferenceExtension on APIReference {
  APIReference copyWith({
    String? index,
    String? name,
    String? url,
    String? updatedAt,
  }) {
    return APIReference(
      index: index ?? this.index,
      name: name ?? this.name,
      url: url ?? this.url,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  APIReference copyWithWrapped({
    Wrapped<String?>? index,
    Wrapped<String?>? name,
    Wrapped<String?>? url,
    Wrapped<String?>? updatedAt,
  }) {
    return APIReference(
      index: (index != null ? index.value : this.index),
      name: (name != null ? name.value : this.name),
      url: (url != null ? url.value : this.url),
      updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class APIReferenceList {
  const APIReferenceList({this.count, this.results});

  factory APIReferenceList.fromJson(Map<String, dynamic> json) =>
      _$APIReferenceListFromJson(json);

  static const toJsonFactory = _$APIReferenceListToJson;
  Map<String, dynamic> toJson() => _$APIReferenceListToJson(this);

  @JsonKey(name: 'count', includeIfNull: false)
  final double? count;
  @JsonKey(
    name: 'results',
    includeIfNull: false,
    defaultValue: <APIReference>[],
  )
  final List<APIReference>? results;
  static const fromJsonFactory = _$APIReferenceListFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is APIReferenceList &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.results, results) ||
                const DeepCollectionEquality().equals(other.results, results)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(results) ^
      runtimeType.hashCode;
}

extension $APIReferenceListExtension on APIReferenceList {
  APIReferenceList copyWith({double? count, List<APIReference>? results}) {
    return APIReferenceList(
      count: count ?? this.count,
      results: results ?? this.results,
    );
  }

  APIReferenceList copyWithWrapped({
    Wrapped<double?>? count,
    Wrapped<List<APIReference>?>? results,
  }) {
    return APIReferenceList(
      count: (count != null ? count.value : this.count),
      results: (results != null ? results.value : this.results),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class Damage {
  const Damage({this.damageDice, this.damageType});

  factory Damage.fromJson(Map<String, dynamic> json) => _$DamageFromJson(json);

  static const toJsonFactory = _$DamageToJson;
  Map<String, dynamic> toJson() => _$DamageToJson(this);

  @JsonKey(name: 'damage_dice', includeIfNull: false)
  final String? damageDice;
  @JsonKey(name: 'damage_type', includeIfNull: false)
  final APIReference? damageType;
  static const fromJsonFactory = _$DamageFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is Damage &&
            (identical(other.damageDice, damageDice) ||
                const DeepCollectionEquality().equals(
                  other.damageDice,
                  damageDice,
                )) &&
            (identical(other.damageType, damageType) ||
                const DeepCollectionEquality().equals(
                  other.damageType,
                  damageType,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(damageDice) ^
      const DeepCollectionEquality().hash(damageType) ^
      runtimeType.hashCode;
}

extension $DamageExtension on Damage {
  Damage copyWith({String? damageDice, APIReference? damageType}) {
    return Damage(
      damageDice: damageDice ?? this.damageDice,
      damageType: damageType ?? this.damageType,
    );
  }

  Damage copyWithWrapped({
    Wrapped<String?>? damageDice,
    Wrapped<APIReference?>? damageType,
  }) {
    return Damage(
      damageDice: (damageDice != null ? damageDice.value : this.damageDice),
      damageType: (damageType != null ? damageType.value : this.damageType),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class Choice {
  const Choice({this.desc, this.choose, this.type, this.from});

  factory Choice.fromJson(Map<String, dynamic> json) => _$ChoiceFromJson(json);

  static const toJsonFactory = _$ChoiceToJson;
  Map<String, dynamic> toJson() => _$ChoiceToJson(this);

  @JsonKey(name: 'desc', includeIfNull: false)
  final String? desc;
  @JsonKey(name: 'choose', includeIfNull: false)
  final double? choose;
  @JsonKey(name: 'type', includeIfNull: false)
  final String? type;
  @JsonKey(name: 'from', includeIfNull: false)
  final OptionSet? from;
  static const fromJsonFactory = _$ChoiceFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is Choice &&
            (identical(other.desc, desc) ||
                const DeepCollectionEquality().equals(other.desc, desc)) &&
            (identical(other.choose, choose) ||
                const DeepCollectionEquality().equals(other.choose, choose)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.from, from) ||
                const DeepCollectionEquality().equals(other.from, from)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(desc) ^
      const DeepCollectionEquality().hash(choose) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(from) ^
      runtimeType.hashCode;
}

extension $ChoiceExtension on Choice {
  Choice copyWith({
    String? desc,
    double? choose,
    String? type,
    OptionSet? from,
  }) {
    return Choice(
      desc: desc ?? this.desc,
      choose: choose ?? this.choose,
      type: type ?? this.type,
      from: from ?? this.from,
    );
  }

  Choice copyWithWrapped({
    Wrapped<String?>? desc,
    Wrapped<double?>? choose,
    Wrapped<String?>? type,
    Wrapped<OptionSet?>? from,
  }) {
    return Choice(
      desc: (desc != null ? desc.value : this.desc),
      choose: (choose != null ? choose.value : this.choose),
      type: (type != null ? type.value : this.type),
      from: (from != null ? from.value : this.from),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AreaOfEffect {
  const AreaOfEffect({this.size, this.type});

  factory AreaOfEffect.fromJson(Map<String, dynamic> json) =>
      _$AreaOfEffectFromJson(json);

  static const toJsonFactory = _$AreaOfEffectToJson;
  Map<String, dynamic> toJson() => _$AreaOfEffectToJson(this);

  @JsonKey(name: 'size', includeIfNull: false)
  final double? size;
  @JsonKey(
    name: 'type',
    includeIfNull: false,
    toJson: areaOfEffectTypeNullableToJson,
    fromJson: areaOfEffectTypeNullableFromJson,
  )
  final enums.AreaOfEffectType? type;
  static const fromJsonFactory = _$AreaOfEffectFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AreaOfEffect &&
            (identical(other.size, size) ||
                const DeepCollectionEquality().equals(other.size, size)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(size) ^
      const DeepCollectionEquality().hash(type) ^
      runtimeType.hashCode;
}

extension $AreaOfEffectExtension on AreaOfEffect {
  AreaOfEffect copyWith({double? size, enums.AreaOfEffectType? type}) {
    return AreaOfEffect(size: size ?? this.size, type: type ?? this.type);
  }

  AreaOfEffect copyWithWrapped({
    Wrapped<double?>? size,
    Wrapped<enums.AreaOfEffectType?>? type,
  }) {
    return AreaOfEffect(
      size: (size != null ? size.value : this.size),
      type: (type != null ? type.value : this.type),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class Prerequisite {
  const Prerequisite({this.abilityScore, this.minimumScore});

  factory Prerequisite.fromJson(Map<String, dynamic> json) =>
      _$PrerequisiteFromJson(json);

  static const toJsonFactory = _$PrerequisiteToJson;
  Map<String, dynamic> toJson() => _$PrerequisiteToJson(this);

  @JsonKey(name: 'ability_score', includeIfNull: false)
  final APIReference? abilityScore;
  @JsonKey(name: 'minimum_score', includeIfNull: false)
  final double? minimumScore;
  static const fromJsonFactory = _$PrerequisiteFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is Prerequisite &&
            (identical(other.abilityScore, abilityScore) ||
                const DeepCollectionEquality().equals(
                  other.abilityScore,
                  abilityScore,
                )) &&
            (identical(other.minimumScore, minimumScore) ||
                const DeepCollectionEquality().equals(
                  other.minimumScore,
                  minimumScore,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(abilityScore) ^
      const DeepCollectionEquality().hash(minimumScore) ^
      runtimeType.hashCode;
}

extension $PrerequisiteExtension on Prerequisite {
  Prerequisite copyWith({APIReference? abilityScore, double? minimumScore}) {
    return Prerequisite(
      abilityScore: abilityScore ?? this.abilityScore,
      minimumScore: minimumScore ?? this.minimumScore,
    );
  }

  Prerequisite copyWithWrapped({
    Wrapped<APIReference?>? abilityScore,
    Wrapped<double?>? minimumScore,
  }) {
    return Prerequisite(
      abilityScore: (abilityScore != null
          ? abilityScore.value
          : this.abilityScore),
      minimumScore: (minimumScore != null
          ? minimumScore.value
          : this.minimumScore),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ResourceDescription {
  const ResourceDescription({this.desc});

  factory ResourceDescription.fromJson(Map<String, dynamic> json) =>
      _$ResourceDescriptionFromJson(json);

  static const toJsonFactory = _$ResourceDescriptionToJson;
  Map<String, dynamic> toJson() => _$ResourceDescriptionToJson(this);

  @JsonKey(name: 'desc', includeIfNull: false, defaultValue: <String>[])
  final List<String>? desc;
  static const fromJsonFactory = _$ResourceDescriptionFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ResourceDescription &&
            (identical(other.desc, desc) ||
                const DeepCollectionEquality().equals(other.desc, desc)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(desc) ^ runtimeType.hashCode;
}

extension $ResourceDescriptionExtension on ResourceDescription {
  ResourceDescription copyWith({List<String>? desc}) {
    return ResourceDescription(desc: desc ?? this.desc);
  }

  ResourceDescription copyWithWrapped({Wrapped<List<String>?>? desc}) {
    return ResourceDescription(desc: (desc != null ? desc.value : this.desc));
  }
}

@JsonSerializable(explicitToJson: true)
class AbilityScore {
  const AbilityScore({
    this.fullName,
    this.skills,
    this.index,
    this.name,
    this.url,
    this.updatedAt,
    this.desc,
  });

  factory AbilityScore.fromJson(Map<String, dynamic> json) =>
      _$AbilityScoreFromJson(json);

  static const toJsonFactory = _$AbilityScoreToJson;
  Map<String, dynamic> toJson() => _$AbilityScoreToJson(this);

  @JsonKey(name: 'full_name', includeIfNull: false)
  final String? fullName;
  @JsonKey(name: 'skills', includeIfNull: false, defaultValue: <APIReference>[])
  final List<APIReference>? skills;
  @JsonKey(name: 'index', includeIfNull: false)
  final String? index;
  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  @JsonKey(name: 'url', includeIfNull: false)
  final String? url;
  @JsonKey(name: 'updated_at', includeIfNull: false)
  final String? updatedAt;
  @JsonKey(name: 'desc', includeIfNull: false, defaultValue: <String>[])
  final List<String>? desc;
  static const fromJsonFactory = _$AbilityScoreFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AbilityScore &&
            (identical(other.fullName, fullName) ||
                const DeepCollectionEquality().equals(
                  other.fullName,
                  fullName,
                )) &&
            (identical(other.skills, skills) ||
                const DeepCollectionEquality().equals(other.skills, skills)) &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality().equals(
                  other.updatedAt,
                  updatedAt,
                )) &&
            (identical(other.desc, desc) ||
                const DeepCollectionEquality().equals(other.desc, desc)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(fullName) ^
      const DeepCollectionEquality().hash(skills) ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(desc) ^
      runtimeType.hashCode;
}

extension $AbilityScoreExtension on AbilityScore {
  AbilityScore copyWith({
    String? fullName,
    List<APIReference>? skills,
    String? index,
    String? name,
    String? url,
    String? updatedAt,
    List<String>? desc,
  }) {
    return AbilityScore(
      fullName: fullName ?? this.fullName,
      skills: skills ?? this.skills,
      index: index ?? this.index,
      name: name ?? this.name,
      url: url ?? this.url,
      updatedAt: updatedAt ?? this.updatedAt,
      desc: desc ?? this.desc,
    );
  }

  AbilityScore copyWithWrapped({
    Wrapped<String?>? fullName,
    Wrapped<List<APIReference>?>? skills,
    Wrapped<String?>? index,
    Wrapped<String?>? name,
    Wrapped<String?>? url,
    Wrapped<String?>? updatedAt,
    Wrapped<List<String>?>? desc,
  }) {
    return AbilityScore(
      fullName: (fullName != null ? fullName.value : this.fullName),
      skills: (skills != null ? skills.value : this.skills),
      index: (index != null ? index.value : this.index),
      name: (name != null ? name.value : this.name),
      url: (url != null ? url.value : this.url),
      updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
      desc: (desc != null ? desc.value : this.desc),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class Alignment {
  const Alignment({
    this.desc,
    this.abbreviation,
    this.index,
    this.name,
    this.url,
    this.updatedAt,
  });

  factory Alignment.fromJson(Map<String, dynamic> json) =>
      _$AlignmentFromJson(json);

  static const toJsonFactory = _$AlignmentToJson;
  Map<String, dynamic> toJson() => _$AlignmentToJson(this);

  @JsonKey(name: 'desc', includeIfNull: false)
  final String? desc;
  @JsonKey(name: 'abbreviation', includeIfNull: false)
  final String? abbreviation;
  @JsonKey(name: 'index', includeIfNull: false)
  final String? index;
  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  @JsonKey(name: 'url', includeIfNull: false)
  final String? url;
  @JsonKey(name: 'updated_at', includeIfNull: false)
  final String? updatedAt;
  static const fromJsonFactory = _$AlignmentFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is Alignment &&
            (identical(other.desc, desc) ||
                const DeepCollectionEquality().equals(other.desc, desc)) &&
            (identical(other.abbreviation, abbreviation) ||
                const DeepCollectionEquality().equals(
                  other.abbreviation,
                  abbreviation,
                )) &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality().equals(
                  other.updatedAt,
                  updatedAt,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(desc) ^
      const DeepCollectionEquality().hash(abbreviation) ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $AlignmentExtension on Alignment {
  Alignment copyWith({
    String? desc,
    String? abbreviation,
    String? index,
    String? name,
    String? url,
    String? updatedAt,
  }) {
    return Alignment(
      desc: desc ?? this.desc,
      abbreviation: abbreviation ?? this.abbreviation,
      index: index ?? this.index,
      name: name ?? this.name,
      url: url ?? this.url,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  Alignment copyWithWrapped({
    Wrapped<String?>? desc,
    Wrapped<String?>? abbreviation,
    Wrapped<String?>? index,
    Wrapped<String?>? name,
    Wrapped<String?>? url,
    Wrapped<String?>? updatedAt,
  }) {
    return Alignment(
      desc: (desc != null ? desc.value : this.desc),
      abbreviation: (abbreviation != null
          ? abbreviation.value
          : this.abbreviation),
      index: (index != null ? index.value : this.index),
      name: (name != null ? name.value : this.name),
      url: (url != null ? url.value : this.url),
      updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class Class {
  const Class({
    this.hitDie,
    this.classLevels,
    this.multiClassing,
    this.spellcasting,
    this.spells,
    this.startingEquipment,
    this.startingEquipmentOptions,
    this.proficiencyChoices,
    this.proficiencies,
    this.savingThrows,
    this.subclasses,
    this.index,
    this.name,
    this.url,
    this.updatedAt,
  });

  factory Class.fromJson(Map<String, dynamic> json) => _$ClassFromJson(json);

  static const toJsonFactory = _$ClassToJson;
  Map<String, dynamic> toJson() => _$ClassToJson(this);

  @JsonKey(name: 'hit_die', includeIfNull: false)
  final double? hitDie;
  @JsonKey(name: 'class_levels', includeIfNull: false)
  final String? classLevels;
  @JsonKey(name: 'multi_classing', includeIfNull: false)
  final Multiclassing? multiClassing;
  @JsonKey(name: 'spellcasting', includeIfNull: false)
  final Spellcasting? spellcasting;
  @JsonKey(name: 'spells', includeIfNull: false)
  final String? spells;
  @JsonKey(name: 'starting_equipment', includeIfNull: false)
  final List<Class$StartingEquipment$Item>? startingEquipment;
  @JsonKey(
    name: 'starting_equipment_options',
    includeIfNull: false,
    defaultValue: <Choice>[],
  )
  final List<Choice>? startingEquipmentOptions;
  @JsonKey(
    name: 'proficiency_choices',
    includeIfNull: false,
    defaultValue: <Choice>[],
  )
  final List<Choice>? proficiencyChoices;
  @JsonKey(
    name: 'proficiencies',
    includeIfNull: false,
    defaultValue: <APIReference>[],
  )
  final List<APIReference>? proficiencies;
  @JsonKey(
    name: 'saving_throws',
    includeIfNull: false,
    defaultValue: <APIReference>[],
  )
  final List<APIReference>? savingThrows;
  @JsonKey(
    name: 'subclasses',
    includeIfNull: false,
    defaultValue: <APIReference>[],
  )
  final List<APIReference>? subclasses;
  @JsonKey(name: 'index', includeIfNull: false)
  final String? index;
  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  @JsonKey(name: 'url', includeIfNull: false)
  final String? url;
  @JsonKey(name: 'updated_at', includeIfNull: false)
  final String? updatedAt;
  static const fromJsonFactory = _$ClassFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is Class &&
            (identical(other.hitDie, hitDie) ||
                const DeepCollectionEquality().equals(other.hitDie, hitDie)) &&
            (identical(other.classLevels, classLevels) ||
                const DeepCollectionEquality().equals(
                  other.classLevels,
                  classLevels,
                )) &&
            (identical(other.multiClassing, multiClassing) ||
                const DeepCollectionEquality().equals(
                  other.multiClassing,
                  multiClassing,
                )) &&
            (identical(other.spellcasting, spellcasting) ||
                const DeepCollectionEquality().equals(
                  other.spellcasting,
                  spellcasting,
                )) &&
            (identical(other.spells, spells) ||
                const DeepCollectionEquality().equals(other.spells, spells)) &&
            (identical(other.startingEquipment, startingEquipment) ||
                const DeepCollectionEquality().equals(
                  other.startingEquipment,
                  startingEquipment,
                )) &&
            (identical(
                  other.startingEquipmentOptions,
                  startingEquipmentOptions,
                ) ||
                const DeepCollectionEquality().equals(
                  other.startingEquipmentOptions,
                  startingEquipmentOptions,
                )) &&
            (identical(other.proficiencyChoices, proficiencyChoices) ||
                const DeepCollectionEquality().equals(
                  other.proficiencyChoices,
                  proficiencyChoices,
                )) &&
            (identical(other.proficiencies, proficiencies) ||
                const DeepCollectionEquality().equals(
                  other.proficiencies,
                  proficiencies,
                )) &&
            (identical(other.savingThrows, savingThrows) ||
                const DeepCollectionEquality().equals(
                  other.savingThrows,
                  savingThrows,
                )) &&
            (identical(other.subclasses, subclasses) ||
                const DeepCollectionEquality().equals(
                  other.subclasses,
                  subclasses,
                )) &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality().equals(
                  other.updatedAt,
                  updatedAt,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(hitDie) ^
      const DeepCollectionEquality().hash(classLevels) ^
      const DeepCollectionEquality().hash(multiClassing) ^
      const DeepCollectionEquality().hash(spellcasting) ^
      const DeepCollectionEquality().hash(spells) ^
      const DeepCollectionEquality().hash(startingEquipment) ^
      const DeepCollectionEquality().hash(startingEquipmentOptions) ^
      const DeepCollectionEquality().hash(proficiencyChoices) ^
      const DeepCollectionEquality().hash(proficiencies) ^
      const DeepCollectionEquality().hash(savingThrows) ^
      const DeepCollectionEquality().hash(subclasses) ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $ClassExtension on Class {
  Class copyWith({
    double? hitDie,
    String? classLevels,
    Multiclassing? multiClassing,
    Spellcasting? spellcasting,
    String? spells,
    List<Class$StartingEquipment$Item>? startingEquipment,
    List<Choice>? startingEquipmentOptions,
    List<Choice>? proficiencyChoices,
    List<APIReference>? proficiencies,
    List<APIReference>? savingThrows,
    List<APIReference>? subclasses,
    String? index,
    String? name,
    String? url,
    String? updatedAt,
  }) {
    return Class(
      hitDie: hitDie ?? this.hitDie,
      classLevels: classLevels ?? this.classLevels,
      multiClassing: multiClassing ?? this.multiClassing,
      spellcasting: spellcasting ?? this.spellcasting,
      spells: spells ?? this.spells,
      startingEquipment: startingEquipment ?? this.startingEquipment,
      startingEquipmentOptions:
          startingEquipmentOptions ?? this.startingEquipmentOptions,
      proficiencyChoices: proficiencyChoices ?? this.proficiencyChoices,
      proficiencies: proficiencies ?? this.proficiencies,
      savingThrows: savingThrows ?? this.savingThrows,
      subclasses: subclasses ?? this.subclasses,
      index: index ?? this.index,
      name: name ?? this.name,
      url: url ?? this.url,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  Class copyWithWrapped({
    Wrapped<double?>? hitDie,
    Wrapped<String?>? classLevels,
    Wrapped<Multiclassing?>? multiClassing,
    Wrapped<Spellcasting?>? spellcasting,
    Wrapped<String?>? spells,
    Wrapped<List<Class$StartingEquipment$Item>?>? startingEquipment,
    Wrapped<List<Choice>?>? startingEquipmentOptions,
    Wrapped<List<Choice>?>? proficiencyChoices,
    Wrapped<List<APIReference>?>? proficiencies,
    Wrapped<List<APIReference>?>? savingThrows,
    Wrapped<List<APIReference>?>? subclasses,
    Wrapped<String?>? index,
    Wrapped<String?>? name,
    Wrapped<String?>? url,
    Wrapped<String?>? updatedAt,
  }) {
    return Class(
      hitDie: (hitDie != null ? hitDie.value : this.hitDie),
      classLevels: (classLevels != null ? classLevels.value : this.classLevels),
      multiClassing: (multiClassing != null
          ? multiClassing.value
          : this.multiClassing),
      spellcasting: (spellcasting != null
          ? spellcasting.value
          : this.spellcasting),
      spells: (spells != null ? spells.value : this.spells),
      startingEquipment: (startingEquipment != null
          ? startingEquipment.value
          : this.startingEquipment),
      startingEquipmentOptions: (startingEquipmentOptions != null
          ? startingEquipmentOptions.value
          : this.startingEquipmentOptions),
      proficiencyChoices: (proficiencyChoices != null
          ? proficiencyChoices.value
          : this.proficiencyChoices),
      proficiencies: (proficiencies != null
          ? proficiencies.value
          : this.proficiencies),
      savingThrows: (savingThrows != null
          ? savingThrows.value
          : this.savingThrows),
      subclasses: (subclasses != null ? subclasses.value : this.subclasses),
      index: (index != null ? index.value : this.index),
      name: (name != null ? name.value : this.name),
      url: (url != null ? url.value : this.url),
      updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class Multiclassing {
  const Multiclassing({
    this.prerequisites,
    this.prerequisiteOptions,
    this.proficiencies,
    this.proficiencyChoices,
  });

  factory Multiclassing.fromJson(Map<String, dynamic> json) =>
      _$MulticlassingFromJson(json);

  static const toJsonFactory = _$MulticlassingToJson;
  Map<String, dynamic> toJson() => _$MulticlassingToJson(this);

  @JsonKey(
    name: 'prerequisites',
    includeIfNull: false,
    defaultValue: <Prerequisite>[],
  )
  final List<Prerequisite>? prerequisites;
  @JsonKey(
    name: 'prerequisite_options',
    includeIfNull: false,
    fromJson: _choiceListFromJson,
    toJson: _choiceListToJson,
    defaultValue: <Choice>[],
  )
  final List<Choice>? prerequisiteOptions;
  @JsonKey(
    name: 'proficiencies',
    includeIfNull: false,
    defaultValue: <APIReference>[],
  )
  final List<APIReference>? proficiencies;
  @JsonKey(
    name: 'proficiency_choices',
    includeIfNull: false,
    defaultValue: <Choice>[],
  )
  final List<Choice>? proficiencyChoices;
  static const fromJsonFactory = _$MulticlassingFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is Multiclassing &&
            (identical(other.prerequisites, prerequisites) ||
                const DeepCollectionEquality().equals(
                  other.prerequisites,
                  prerequisites,
                )) &&
            (identical(other.prerequisiteOptions, prerequisiteOptions) ||
                const DeepCollectionEquality().equals(
                  other.prerequisiteOptions,
                  prerequisiteOptions,
                )) &&
            (identical(other.proficiencies, proficiencies) ||
                const DeepCollectionEquality().equals(
                  other.proficiencies,
                  proficiencies,
                )) &&
            (identical(other.proficiencyChoices, proficiencyChoices) ||
                const DeepCollectionEquality().equals(
                  other.proficiencyChoices,
                  proficiencyChoices,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(prerequisites) ^
      const DeepCollectionEquality().hash(prerequisiteOptions) ^
      const DeepCollectionEquality().hash(proficiencies) ^
      const DeepCollectionEquality().hash(proficiencyChoices) ^
      runtimeType.hashCode;
}

extension $MulticlassingExtension on Multiclassing {
  Multiclassing copyWith({
    List<Prerequisite>? prerequisites,
    List<Choice>? prerequisiteOptions,
    List<APIReference>? proficiencies,
    List<Choice>? proficiencyChoices,
  }) {
    return Multiclassing(
      prerequisites: prerequisites ?? this.prerequisites,
      prerequisiteOptions: prerequisiteOptions ?? this.prerequisiteOptions,
      proficiencies: proficiencies ?? this.proficiencies,
      proficiencyChoices: proficiencyChoices ?? this.proficiencyChoices,
    );
  }

  Multiclassing copyWithWrapped({
    Wrapped<List<Prerequisite>?>? prerequisites,
    Wrapped<List<Choice>?>? prerequisiteOptions,
    Wrapped<List<APIReference>?>? proficiencies,
    Wrapped<List<Choice>?>? proficiencyChoices,
  }) {
    return Multiclassing(
      prerequisites: (prerequisites != null
          ? prerequisites.value
          : this.prerequisites),
      prerequisiteOptions: (prerequisiteOptions != null
          ? prerequisiteOptions.value
          : this.prerequisiteOptions),
      proficiencies: (proficiencies != null
          ? proficiencies.value
          : this.proficiencies),
      proficiencyChoices: (proficiencyChoices != null
          ? proficiencyChoices.value
          : this.proficiencyChoices),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class Spellcasting {
  const Spellcasting({this.level, this.info, this.spellcastingAbility});

  factory Spellcasting.fromJson(Map<String, dynamic> json) =>
      _$SpellcastingFromJson(json);

  static const toJsonFactory = _$SpellcastingToJson;
  Map<String, dynamic> toJson() => _$SpellcastingToJson(this);

  @JsonKey(name: 'level', includeIfNull: false)
  final double? level;
  @JsonKey(name: 'info', includeIfNull: false)
  final List<Spellcasting$Info$Item>? info;
  @JsonKey(name: 'spellcasting_ability', includeIfNull: false)
  final APIReference? spellcastingAbility;
  static const fromJsonFactory = _$SpellcastingFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is Spellcasting &&
            (identical(other.level, level) ||
                const DeepCollectionEquality().equals(other.level, level)) &&
            (identical(other.info, info) ||
                const DeepCollectionEquality().equals(other.info, info)) &&
            (identical(other.spellcastingAbility, spellcastingAbility) ||
                const DeepCollectionEquality().equals(
                  other.spellcastingAbility,
                  spellcastingAbility,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(level) ^
      const DeepCollectionEquality().hash(info) ^
      const DeepCollectionEquality().hash(spellcastingAbility) ^
      runtimeType.hashCode;
}

extension $SpellcastingExtension on Spellcasting {
  Spellcasting copyWith({
    double? level,
    List<Spellcasting$Info$Item>? info,
    APIReference? spellcastingAbility,
  }) {
    return Spellcasting(
      level: level ?? this.level,
      info: info ?? this.info,
      spellcastingAbility: spellcastingAbility ?? this.spellcastingAbility,
    );
  }

  Spellcasting copyWithWrapped({
    Wrapped<double?>? level,
    Wrapped<List<Spellcasting$Info$Item>?>? info,
    Wrapped<APIReference?>? spellcastingAbility,
  }) {
    return Spellcasting(
      level: (level != null ? level.value : this.level),
      info: (info != null ? info.value : this.info),
      spellcastingAbility: (spellcastingAbility != null
          ? spellcastingAbility.value
          : this.spellcastingAbility),
    );
  }
}

List<Choice>? _choiceListFromJson(dynamic json) {
  if (json == null) {
    return <Choice>[];
  }
  if (json is List) {
    return json.map((element) {
      if (element is Map<String, dynamic>) {
        return Choice.fromJson(element);
      }
      throw StateError(
        'Unexpected element in prerequisite_options: ${element.runtimeType}',
      );
    }).toList();
  }
  if (json is Map<String, dynamic>) {
    return [Choice.fromJson(json)];
  }
  throw StateError(
    'Expected list or map for prerequisite_options but received ${json.runtimeType}',
  );
}

List<dynamic>? _choiceListToJson(List<Choice>? list) =>
    list?.map((choice) => choice.toJson()).toList();

@JsonSerializable(explicitToJson: true)
class Gear extends Equipment {
  const Gear({
    this.equipmentCategory,
    this.gearCategory,
    this.cost,
    this.weight,
    this.index,
    this.name,
    this.url,
    this.updatedAt,
    this.desc,
  });

  factory Gear.fromJson(Map<String, dynamic> json) => _$GearFromJson(json);

  static const toJsonFactory = _$GearToJson;
  Map<String, dynamic> toJson() => _$GearToJson(this);

  @JsonKey(name: 'equipment_category', includeIfNull: false)
  final APIReference? equipmentCategory;
  @JsonKey(name: 'gear_category', includeIfNull: false)
  final APIReference? gearCategory;
  @JsonKey(name: 'cost', includeIfNull: false)
  final Cost? cost;
  @JsonKey(name: 'weight', includeIfNull: false)
  final double? weight;
  @JsonKey(name: 'index', includeIfNull: false)
  final String? index;
  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  @JsonKey(name: 'url', includeIfNull: false)
  final String? url;
  @JsonKey(name: 'updated_at', includeIfNull: false)
  final String? updatedAt;
  @JsonKey(name: 'desc', includeIfNull: false, defaultValue: <String>[])
  final List<String>? desc;
  static const fromJsonFactory = _$GearFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is Gear &&
            (identical(other.equipmentCategory, equipmentCategory) ||
                const DeepCollectionEquality().equals(
                  other.equipmentCategory,
                  equipmentCategory,
                )) &&
            (identical(other.gearCategory, gearCategory) ||
                const DeepCollectionEquality().equals(
                  other.gearCategory,
                  gearCategory,
                )) &&
            (identical(other.cost, cost) ||
                const DeepCollectionEquality().equals(other.cost, cost)) &&
            (identical(other.weight, weight) ||
                const DeepCollectionEquality().equals(other.weight, weight)) &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality().equals(
                  other.updatedAt,
                  updatedAt,
                )) &&
            (identical(other.desc, desc) ||
                const DeepCollectionEquality().equals(other.desc, desc)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(equipmentCategory) ^
      const DeepCollectionEquality().hash(gearCategory) ^
      const DeepCollectionEquality().hash(cost) ^
      const DeepCollectionEquality().hash(weight) ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(desc) ^
      runtimeType.hashCode;
}

extension $GearExtension on Gear {
  Gear copyWith({
    APIReference? equipmentCategory,
    APIReference? gearCategory,
    Cost? cost,
    double? weight,
    String? index,
    String? name,
    String? url,
    String? updatedAt,
    List<String>? desc,
  }) {
    return Gear(
      equipmentCategory: equipmentCategory ?? this.equipmentCategory,
      gearCategory: gearCategory ?? this.gearCategory,
      cost: cost ?? this.cost,
      weight: weight ?? this.weight,
      index: index ?? this.index,
      name: name ?? this.name,
      url: url ?? this.url,
      updatedAt: updatedAt ?? this.updatedAt,
      desc: desc ?? this.desc,
    );
  }

  Gear copyWithWrapped({
    Wrapped<APIReference?>? equipmentCategory,
    Wrapped<APIReference?>? gearCategory,
    Wrapped<Cost?>? cost,
    Wrapped<double?>? weight,
    Wrapped<String?>? index,
    Wrapped<String?>? name,
    Wrapped<String?>? url,
    Wrapped<String?>? updatedAt,
    Wrapped<List<String>?>? desc,
  }) {
    return Gear(
      equipmentCategory: (equipmentCategory != null
          ? equipmentCategory.value
          : this.equipmentCategory),
      gearCategory: (gearCategory != null
          ? gearCategory.value
          : this.gearCategory),
      cost: (cost != null ? cost.value : this.cost),
      weight: (weight != null ? weight.value : this.weight),
      index: (index != null ? index.value : this.index),
      name: (name != null ? name.value : this.name),
      url: (url != null ? url.value : this.url),
      updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
      desc: (desc != null ? desc.value : this.desc),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class EquipmentPack {
  const EquipmentPack({
    this.equipmentCategory,
    this.gearCategory,
    this.cost,
    this.contents,
    this.index,
    this.name,
    this.url,
    this.updatedAt,
    this.desc,
  });

  factory EquipmentPack.fromJson(Map<String, dynamic> json) =>
      _$EquipmentPackFromJson(json);

  static const toJsonFactory = _$EquipmentPackToJson;
  Map<String, dynamic> toJson() => _$EquipmentPackToJson(this);

  @JsonKey(name: 'equipment_category', includeIfNull: false)
  final APIReference? equipmentCategory;
  @JsonKey(name: 'gear_category', includeIfNull: false)
  final APIReference? gearCategory;
  @JsonKey(name: 'cost', includeIfNull: false)
  final Cost? cost;
  @JsonKey(
    name: 'contents',
    includeIfNull: false,
    defaultValue: <APIReference>[],
  )
  final List<APIReference>? contents;
  @JsonKey(name: 'index', includeIfNull: false)
  final String? index;
  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  @JsonKey(name: 'url', includeIfNull: false)
  final String? url;
  @JsonKey(name: 'updated_at', includeIfNull: false)
  final String? updatedAt;
  @JsonKey(name: 'desc', includeIfNull: false, defaultValue: <String>[])
  final List<String>? desc;
  static const fromJsonFactory = _$EquipmentPackFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EquipmentPack &&
            (identical(other.equipmentCategory, equipmentCategory) ||
                const DeepCollectionEquality().equals(
                  other.equipmentCategory,
                  equipmentCategory,
                )) &&
            (identical(other.gearCategory, gearCategory) ||
                const DeepCollectionEquality().equals(
                  other.gearCategory,
                  gearCategory,
                )) &&
            (identical(other.cost, cost) ||
                const DeepCollectionEquality().equals(other.cost, cost)) &&
            (identical(other.contents, contents) ||
                const DeepCollectionEquality().equals(
                  other.contents,
                  contents,
                )) &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality().equals(
                  other.updatedAt,
                  updatedAt,
                )) &&
            (identical(other.desc, desc) ||
                const DeepCollectionEquality().equals(other.desc, desc)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(equipmentCategory) ^
      const DeepCollectionEquality().hash(gearCategory) ^
      const DeepCollectionEquality().hash(cost) ^
      const DeepCollectionEquality().hash(contents) ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(desc) ^
      runtimeType.hashCode;
}

extension $EquipmentPackExtension on EquipmentPack {
  EquipmentPack copyWith({
    APIReference? equipmentCategory,
    APIReference? gearCategory,
    Cost? cost,
    List<APIReference>? contents,
    String? index,
    String? name,
    String? url,
    String? updatedAt,
    List<String>? desc,
  }) {
    return EquipmentPack(
      equipmentCategory: equipmentCategory ?? this.equipmentCategory,
      gearCategory: gearCategory ?? this.gearCategory,
      cost: cost ?? this.cost,
      contents: contents ?? this.contents,
      index: index ?? this.index,
      name: name ?? this.name,
      url: url ?? this.url,
      updatedAt: updatedAt ?? this.updatedAt,
      desc: desc ?? this.desc,
    );
  }

  EquipmentPack copyWithWrapped({
    Wrapped<APIReference?>? equipmentCategory,
    Wrapped<APIReference?>? gearCategory,
    Wrapped<Cost?>? cost,
    Wrapped<List<APIReference>?>? contents,
    Wrapped<String?>? index,
    Wrapped<String?>? name,
    Wrapped<String?>? url,
    Wrapped<String?>? updatedAt,
    Wrapped<List<String>?>? desc,
  }) {
    return EquipmentPack(
      equipmentCategory: (equipmentCategory != null
          ? equipmentCategory.value
          : this.equipmentCategory),
      gearCategory: (gearCategory != null
          ? gearCategory.value
          : this.gearCategory),
      cost: (cost != null ? cost.value : this.cost),
      contents: (contents != null ? contents.value : this.contents),
      index: (index != null ? index.value : this.index),
      name: (name != null ? name.value : this.name),
      url: (url != null ? url.value : this.url),
      updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
      desc: (desc != null ? desc.value : this.desc),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class EquipmentCategory {
  const EquipmentCategory({
    this.equipment,
    this.index,
    this.name,
    this.url,
    this.updatedAt,
  });

  factory EquipmentCategory.fromJson(Map<String, dynamic> json) =>
      _$EquipmentCategoryFromJson(json);

  static const toJsonFactory = _$EquipmentCategoryToJson;
  Map<String, dynamic> toJson() => _$EquipmentCategoryToJson(this);

  @JsonKey(
    name: 'equipment',
    includeIfNull: false,
    defaultValue: <APIReference>[],
  )
  final List<APIReference>? equipment;
  @JsonKey(name: 'index', includeIfNull: false)
  final String? index;
  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  @JsonKey(name: 'url', includeIfNull: false)
  final String? url;
  @JsonKey(name: 'updated_at', includeIfNull: false)
  final String? updatedAt;
  static const fromJsonFactory = _$EquipmentCategoryFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EquipmentCategory &&
            (identical(other.equipment, equipment) ||
                const DeepCollectionEquality().equals(
                  other.equipment,
                  equipment,
                )) &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality().equals(
                  other.updatedAt,
                  updatedAt,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(equipment) ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EquipmentCategoryExtension on EquipmentCategory {
  EquipmentCategory copyWith({
    List<APIReference>? equipment,
    String? index,
    String? name,
    String? url,
    String? updatedAt,
  }) {
    return EquipmentCategory(
      equipment: equipment ?? this.equipment,
      index: index ?? this.index,
      name: name ?? this.name,
      url: url ?? this.url,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  EquipmentCategory copyWithWrapped({
    Wrapped<List<APIReference>?>? equipment,
    Wrapped<String?>? index,
    Wrapped<String?>? name,
    Wrapped<String?>? url,
    Wrapped<String?>? updatedAt,
  }) {
    return EquipmentCategory(
      equipment: (equipment != null ? equipment.value : this.equipment),
      index: (index != null ? index.value : this.index),
      name: (name != null ? name.value : this.name),
      url: (url != null ? url.value : this.url),
      updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
    );
  }
}

@JsonSerializable(explicitToJson: true)
/// Union type representing equipment items that can be Weapon, Armor, or Gear.
///
/// The concrete type is determined by the `equipment_category.index` field in
/// the JSON payload:
/// - `"weapon"` → [Weapon]
/// - `"armor"` → [Armor]
/// - `"adventuring-gear"` or `"mounts-and-vehicles"` → [Gear]
sealed class Equipment {
  const Equipment();

  /// Deserializes JSON into the appropriate Equipment subtype based on
  /// `equipment_category.index`.
  factory Equipment.fromJson(Map<String, dynamic> json) {
    final equipmentCategory =
        json['equipment_category'] as Map<String, dynamic>?;
    final categoryIndex = equipmentCategory?['index'] as String?;

    switch (categoryIndex) {
      case 'weapon':
        return Weapon.fromJson(json);
      case 'armor':
        return Armor.fromJson(json);
      case 'adventuring-gear':
      case 'mounts-and-vehicles':
      default:
        return Gear.fromJson(json);
    }
  }

  /// Serializes this Equipment instance to JSON.
  ///
  /// Delegates to the concrete type's toJson implementation.
  Map<String, dynamic> toJson();

  @override
  String toString() => jsonEncode(toJson());

  @override
  int get hashCode => runtimeType.hashCode;
}

@JsonSerializable(explicitToJson: true)
class Cost {
  const Cost({this.quantity, this.unit});

  factory Cost.fromJson(Map<String, dynamic> json) => _$CostFromJson(json);

  static const toJsonFactory = _$CostToJson;
  Map<String, dynamic> toJson() => _$CostToJson(this);

  @JsonKey(name: 'quantity', includeIfNull: false)
  final double? quantity;
  @JsonKey(name: 'unit', includeIfNull: false)
  final String? unit;
  static const fromJsonFactory = _$CostFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is Cost &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality().equals(
                  other.quantity,
                  quantity,
                )) &&
            (identical(other.unit, unit) ||
                const DeepCollectionEquality().equals(other.unit, unit)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(quantity) ^
      const DeepCollectionEquality().hash(unit) ^
      runtimeType.hashCode;
}

extension $CostExtension on Cost {
  Cost copyWith({double? quantity, String? unit}) {
    return Cost(quantity: quantity ?? this.quantity, unit: unit ?? this.unit);
  }

  Cost copyWithWrapped({Wrapped<double?>? quantity, Wrapped<String?>? unit}) {
    return Cost(
      quantity: (quantity != null ? quantity.value : this.quantity),
      unit: (unit != null ? unit.value : this.unit),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class Weapon extends Equipment {
  const Weapon({
    this.equipmentCategory,
    this.weaponCategory,
    this.weaponRange,
    this.categoryRange,
    this.range,
    this.damage,
    this.twoHandedDamage,
    this.properties,
    this.cost,
    this.weight,
    this.index,
    this.name,
    this.url,
    this.updatedAt,
    this.desc,
  });

  factory Weapon.fromJson(Map<String, dynamic> json) => _$WeaponFromJson(json);

  static const toJsonFactory = _$WeaponToJson;
  Map<String, dynamic> toJson() => _$WeaponToJson(this);

  @JsonKey(name: 'equipment_category', includeIfNull: false)
  final APIReference? equipmentCategory;
  @JsonKey(name: 'weapon_category', includeIfNull: false)
  final String? weaponCategory;
  @JsonKey(name: 'weapon_range', includeIfNull: false)
  final String? weaponRange;
  @JsonKey(name: 'category_range', includeIfNull: false)
  final String? categoryRange;
  @JsonKey(name: 'range', includeIfNull: false)
  final Weapon$Range? range;
  @JsonKey(name: 'damage', includeIfNull: false)
  final Damage? damage;
  @JsonKey(name: 'two_handed_damage', includeIfNull: false)
  final Damage? twoHandedDamage;
  @JsonKey(
    name: 'properties',
    includeIfNull: false,
    defaultValue: <APIReference>[],
  )
  final List<APIReference>? properties;
  @JsonKey(name: 'cost', includeIfNull: false)
  final Cost? cost;
  @JsonKey(name: 'weight', includeIfNull: false)
  final double? weight;
  @JsonKey(name: 'index', includeIfNull: false)
  final String? index;
  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  @JsonKey(name: 'url', includeIfNull: false)
  final String? url;
  @JsonKey(name: 'updated_at', includeIfNull: false)
  final String? updatedAt;
  @JsonKey(name: 'desc', includeIfNull: false, defaultValue: <String>[])
  final List<String>? desc;
  static const fromJsonFactory = _$WeaponFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is Weapon &&
            (identical(other.equipmentCategory, equipmentCategory) ||
                const DeepCollectionEquality().equals(
                  other.equipmentCategory,
                  equipmentCategory,
                )) &&
            (identical(other.weaponCategory, weaponCategory) ||
                const DeepCollectionEquality().equals(
                  other.weaponCategory,
                  weaponCategory,
                )) &&
            (identical(other.weaponRange, weaponRange) ||
                const DeepCollectionEquality().equals(
                  other.weaponRange,
                  weaponRange,
                )) &&
            (identical(other.categoryRange, categoryRange) ||
                const DeepCollectionEquality().equals(
                  other.categoryRange,
                  categoryRange,
                )) &&
            (identical(other.range, range) ||
                const DeepCollectionEquality().equals(other.range, range)) &&
            (identical(other.damage, damage) ||
                const DeepCollectionEquality().equals(other.damage, damage)) &&
            (identical(other.twoHandedDamage, twoHandedDamage) ||
                const DeepCollectionEquality().equals(
                  other.twoHandedDamage,
                  twoHandedDamage,
                )) &&
            (identical(other.properties, properties) ||
                const DeepCollectionEquality().equals(
                  other.properties,
                  properties,
                )) &&
            (identical(other.cost, cost) ||
                const DeepCollectionEquality().equals(other.cost, cost)) &&
            (identical(other.weight, weight) ||
                const DeepCollectionEquality().equals(other.weight, weight)) &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality().equals(
                  other.updatedAt,
                  updatedAt,
                )) &&
            (identical(other.desc, desc) ||
                const DeepCollectionEquality().equals(other.desc, desc)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(equipmentCategory) ^
      const DeepCollectionEquality().hash(weaponCategory) ^
      const DeepCollectionEquality().hash(weaponRange) ^
      const DeepCollectionEquality().hash(categoryRange) ^
      const DeepCollectionEquality().hash(range) ^
      const DeepCollectionEquality().hash(damage) ^
      const DeepCollectionEquality().hash(twoHandedDamage) ^
      const DeepCollectionEquality().hash(properties) ^
      const DeepCollectionEquality().hash(cost) ^
      const DeepCollectionEquality().hash(weight) ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(desc) ^
      runtimeType.hashCode;
}

extension $WeaponExtension on Weapon {
  Weapon copyWith({
    APIReference? equipmentCategory,
    String? weaponCategory,
    String? weaponRange,
    String? categoryRange,
    Weapon$Range? range,
    Damage? damage,
    Damage? twoHandedDamage,
    List<APIReference>? properties,
    Cost? cost,
    double? weight,
    String? index,
    String? name,
    String? url,
    String? updatedAt,
    List<String>? desc,
  }) {
    return Weapon(
      equipmentCategory: equipmentCategory ?? this.equipmentCategory,
      weaponCategory: weaponCategory ?? this.weaponCategory,
      weaponRange: weaponRange ?? this.weaponRange,
      categoryRange: categoryRange ?? this.categoryRange,
      range: range ?? this.range,
      damage: damage ?? this.damage,
      twoHandedDamage: twoHandedDamage ?? this.twoHandedDamage,
      properties: properties ?? this.properties,
      cost: cost ?? this.cost,
      weight: weight ?? this.weight,
      index: index ?? this.index,
      name: name ?? this.name,
      url: url ?? this.url,
      updatedAt: updatedAt ?? this.updatedAt,
      desc: desc ?? this.desc,
    );
  }

  Weapon copyWithWrapped({
    Wrapped<APIReference?>? equipmentCategory,
    Wrapped<String?>? weaponCategory,
    Wrapped<String?>? weaponRange,
    Wrapped<String?>? categoryRange,
    Wrapped<Weapon$Range?>? range,
    Wrapped<Damage?>? damage,
    Wrapped<Damage?>? twoHandedDamage,
    Wrapped<List<APIReference>?>? properties,
    Wrapped<Cost?>? cost,
    Wrapped<double?>? weight,
    Wrapped<String?>? index,
    Wrapped<String?>? name,
    Wrapped<String?>? url,
    Wrapped<String?>? updatedAt,
    Wrapped<List<String>?>? desc,
  }) {
    return Weapon(
      equipmentCategory: (equipmentCategory != null
          ? equipmentCategory.value
          : this.equipmentCategory),
      weaponCategory: (weaponCategory != null
          ? weaponCategory.value
          : this.weaponCategory),
      weaponRange: (weaponRange != null ? weaponRange.value : this.weaponRange),
      categoryRange: (categoryRange != null
          ? categoryRange.value
          : this.categoryRange),
      range: (range != null ? range.value : this.range),
      damage: (damage != null ? damage.value : this.damage),
      twoHandedDamage: (twoHandedDamage != null
          ? twoHandedDamage.value
          : this.twoHandedDamage),
      properties: (properties != null ? properties.value : this.properties),
      cost: (cost != null ? cost.value : this.cost),
      weight: (weight != null ? weight.value : this.weight),
      index: (index != null ? index.value : this.index),
      name: (name != null ? name.value : this.name),
      url: (url != null ? url.value : this.url),
      updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
      desc: (desc != null ? desc.value : this.desc),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class Armor extends Equipment {
  const Armor({
    this.equipmentCategory,
    this.armorCategory,
    this.armorClass,
    this.strMinimum,
    this.stealthDisadvantage,
    this.cost,
    this.weight,
    this.index,
    this.name,
    this.url,
    this.updatedAt,
    this.desc,
  });

  factory Armor.fromJson(Map<String, dynamic> json) => _$ArmorFromJson(json);

  static const toJsonFactory = _$ArmorToJson;
  Map<String, dynamic> toJson() => _$ArmorToJson(this);

  @JsonKey(name: 'equipment_category', includeIfNull: false)
  final APIReference? equipmentCategory;
  @JsonKey(name: 'armor_category', includeIfNull: false)
  final String? armorCategory;
  @JsonKey(name: 'armor_class', includeIfNull: false)
  final Map<String, dynamic>? armorClass;
  @JsonKey(name: 'str_minimum', includeIfNull: false)
  final double? strMinimum;
  @JsonKey(name: 'stealth_disadvantage', includeIfNull: false)
  final bool? stealthDisadvantage;
  @JsonKey(name: 'cost', includeIfNull: false)
  final Cost? cost;
  @JsonKey(name: 'weight', includeIfNull: false)
  final double? weight;
  @JsonKey(name: 'index', includeIfNull: false)
  final String? index;
  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  @JsonKey(name: 'url', includeIfNull: false)
  final String? url;
  @JsonKey(name: 'updated_at', includeIfNull: false)
  final String? updatedAt;
  @JsonKey(name: 'desc', includeIfNull: false, defaultValue: <String>[])
  final List<String>? desc;
  static const fromJsonFactory = _$ArmorFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is Armor &&
            (identical(other.equipmentCategory, equipmentCategory) ||
                const DeepCollectionEquality().equals(
                  other.equipmentCategory,
                  equipmentCategory,
                )) &&
            (identical(other.armorCategory, armorCategory) ||
                const DeepCollectionEquality().equals(
                  other.armorCategory,
                  armorCategory,
                )) &&
            (identical(other.armorClass, armorClass) ||
                const DeepCollectionEquality().equals(
                  other.armorClass,
                  armorClass,
                )) &&
            (identical(other.strMinimum, strMinimum) ||
                const DeepCollectionEquality().equals(
                  other.strMinimum,
                  strMinimum,
                )) &&
            (identical(other.stealthDisadvantage, stealthDisadvantage) ||
                const DeepCollectionEquality().equals(
                  other.stealthDisadvantage,
                  stealthDisadvantage,
                )) &&
            (identical(other.cost, cost) ||
                const DeepCollectionEquality().equals(other.cost, cost)) &&
            (identical(other.weight, weight) ||
                const DeepCollectionEquality().equals(other.weight, weight)) &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality().equals(
                  other.updatedAt,
                  updatedAt,
                )) &&
            (identical(other.desc, desc) ||
                const DeepCollectionEquality().equals(other.desc, desc)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(equipmentCategory) ^
      const DeepCollectionEquality().hash(armorCategory) ^
      const DeepCollectionEquality().hash(armorClass) ^
      const DeepCollectionEquality().hash(strMinimum) ^
      const DeepCollectionEquality().hash(stealthDisadvantage) ^
      const DeepCollectionEquality().hash(cost) ^
      const DeepCollectionEquality().hash(weight) ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(desc) ^
      runtimeType.hashCode;
}

extension $ArmorExtension on Armor {
  Armor copyWith({
    APIReference? equipmentCategory,
    String? armorCategory,
    Map<String, dynamic>? armorClass,
    double? strMinimum,
    bool? stealthDisadvantage,
    Cost? cost,
    double? weight,
    String? index,
    String? name,
    String? url,
    String? updatedAt,
    List<String>? desc,
  }) {
    return Armor(
      equipmentCategory: equipmentCategory ?? this.equipmentCategory,
      armorCategory: armorCategory ?? this.armorCategory,
      armorClass: armorClass ?? this.armorClass,
      strMinimum: strMinimum ?? this.strMinimum,
      stealthDisadvantage: stealthDisadvantage ?? this.stealthDisadvantage,
      cost: cost ?? this.cost,
      weight: weight ?? this.weight,
      index: index ?? this.index,
      name: name ?? this.name,
      url: url ?? this.url,
      updatedAt: updatedAt ?? this.updatedAt,
      desc: desc ?? this.desc,
    );
  }

  Armor copyWithWrapped({
    Wrapped<APIReference?>? equipmentCategory,
    Wrapped<String?>? armorCategory,
    Wrapped<Map<String, dynamic>?>? armorClass,
    Wrapped<double?>? strMinimum,
    Wrapped<bool?>? stealthDisadvantage,
    Wrapped<Cost?>? cost,
    Wrapped<double?>? weight,
    Wrapped<String?>? index,
    Wrapped<String?>? name,
    Wrapped<String?>? url,
    Wrapped<String?>? updatedAt,
    Wrapped<List<String>?>? desc,
  }) {
    return Armor(
      equipmentCategory: (equipmentCategory != null
          ? equipmentCategory.value
          : this.equipmentCategory),
      armorCategory: (armorCategory != null
          ? armorCategory.value
          : this.armorCategory),
      armorClass: (armorClass != null ? armorClass.value : this.armorClass),
      strMinimum: (strMinimum != null ? strMinimum.value : this.strMinimum),
      stealthDisadvantage: (stealthDisadvantage != null
          ? stealthDisadvantage.value
          : this.stealthDisadvantage),
      cost: (cost != null ? cost.value : this.cost),
      weight: (weight != null ? weight.value : this.weight),
      index: (index != null ? index.value : this.index),
      name: (name != null ? name.value : this.name),
      url: (url != null ? url.value : this.url),
      updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
      desc: (desc != null ? desc.value : this.desc),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class MagicItem {
  const MagicItem({
    this.image,
    this.equipmentCategory,
    this.rarity,
    this.variants,
    this.variant,
    this.index,
    this.name,
    this.url,
    this.updatedAt,
    this.desc,
  });

  factory MagicItem.fromJson(Map<String, dynamic> json) =>
      _$MagicItemFromJson(json);

  static const toJsonFactory = _$MagicItemToJson;
  Map<String, dynamic> toJson() => _$MagicItemToJson(this);

  @JsonKey(name: 'image', includeIfNull: false)
  final String? image;
  @JsonKey(name: 'equipment_category', includeIfNull: false)
  final APIReference? equipmentCategory;
  @JsonKey(name: 'rarity', includeIfNull: false)
  final MagicItem$Rarity? rarity;
  @JsonKey(
    name: 'variants',
    includeIfNull: false,
    defaultValue: <APIReference>[],
  )
  final List<APIReference>? variants;
  @JsonKey(name: 'variant', includeIfNull: false)
  final bool? variant;
  @JsonKey(name: 'index', includeIfNull: false)
  final String? index;
  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  @JsonKey(name: 'url', includeIfNull: false)
  final String? url;
  @JsonKey(name: 'updated_at', includeIfNull: false)
  final String? updatedAt;
  @JsonKey(name: 'desc', includeIfNull: false, defaultValue: <String>[])
  final List<String>? desc;
  static const fromJsonFactory = _$MagicItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is MagicItem &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.equipmentCategory, equipmentCategory) ||
                const DeepCollectionEquality().equals(
                  other.equipmentCategory,
                  equipmentCategory,
                )) &&
            (identical(other.rarity, rarity) ||
                const DeepCollectionEquality().equals(other.rarity, rarity)) &&
            (identical(other.variants, variants) ||
                const DeepCollectionEquality().equals(
                  other.variants,
                  variants,
                )) &&
            (identical(other.variant, variant) ||
                const DeepCollectionEquality().equals(
                  other.variant,
                  variant,
                )) &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality().equals(
                  other.updatedAt,
                  updatedAt,
                )) &&
            (identical(other.desc, desc) ||
                const DeepCollectionEquality().equals(other.desc, desc)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(equipmentCategory) ^
      const DeepCollectionEquality().hash(rarity) ^
      const DeepCollectionEquality().hash(variants) ^
      const DeepCollectionEquality().hash(variant) ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(desc) ^
      runtimeType.hashCode;
}

extension $MagicItemExtension on MagicItem {
  MagicItem copyWith({
    String? image,
    APIReference? equipmentCategory,
    MagicItem$Rarity? rarity,
    List<APIReference>? variants,
    bool? variant,
    String? index,
    String? name,
    String? url,
    String? updatedAt,
    List<String>? desc,
  }) {
    return MagicItem(
      image: image ?? this.image,
      equipmentCategory: equipmentCategory ?? this.equipmentCategory,
      rarity: rarity ?? this.rarity,
      variants: variants ?? this.variants,
      variant: variant ?? this.variant,
      index: index ?? this.index,
      name: name ?? this.name,
      url: url ?? this.url,
      updatedAt: updatedAt ?? this.updatedAt,
      desc: desc ?? this.desc,
    );
  }

  MagicItem copyWithWrapped({
    Wrapped<String?>? image,
    Wrapped<APIReference?>? equipmentCategory,
    Wrapped<MagicItem$Rarity?>? rarity,
    Wrapped<List<APIReference>?>? variants,
    Wrapped<bool?>? variant,
    Wrapped<String?>? index,
    Wrapped<String?>? name,
    Wrapped<String?>? url,
    Wrapped<String?>? updatedAt,
    Wrapped<List<String>?>? desc,
  }) {
    return MagicItem(
      image: (image != null ? image.value : this.image),
      equipmentCategory: (equipmentCategory != null
          ? equipmentCategory.value
          : this.equipmentCategory),
      rarity: (rarity != null ? rarity.value : this.rarity),
      variants: (variants != null ? variants.value : this.variants),
      variant: (variant != null ? variant.value : this.variant),
      index: (index != null ? index.value : this.index),
      name: (name != null ? name.value : this.name),
      url: (url != null ? url.value : this.url),
      updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
      desc: (desc != null ? desc.value : this.desc),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class DamageType {
  const DamageType({
    this.index,
    this.name,
    this.url,
    this.updatedAt,
    this.desc,
  });

  factory DamageType.fromJson(Map<String, dynamic> json) =>
      _$DamageTypeFromJson(json);

  static const toJsonFactory = _$DamageTypeToJson;
  Map<String, dynamic> toJson() => _$DamageTypeToJson(this);

  @JsonKey(name: 'index', includeIfNull: false)
  final String? index;
  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  @JsonKey(name: 'url', includeIfNull: false)
  final String? url;
  @JsonKey(name: 'updated_at', includeIfNull: false)
  final String? updatedAt;
  @JsonKey(name: 'desc', includeIfNull: false, defaultValue: <String>[])
  final List<String>? desc;
  static const fromJsonFactory = _$DamageTypeFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is DamageType &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality().equals(
                  other.updatedAt,
                  updatedAt,
                )) &&
            (identical(other.desc, desc) ||
                const DeepCollectionEquality().equals(other.desc, desc)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(desc) ^
      runtimeType.hashCode;
}

extension $DamageTypeExtension on DamageType {
  DamageType copyWith({
    String? index,
    String? name,
    String? url,
    String? updatedAt,
    List<String>? desc,
  }) {
    return DamageType(
      index: index ?? this.index,
      name: name ?? this.name,
      url: url ?? this.url,
      updatedAt: updatedAt ?? this.updatedAt,
      desc: desc ?? this.desc,
    );
  }

  DamageType copyWithWrapped({
    Wrapped<String?>? index,
    Wrapped<String?>? name,
    Wrapped<String?>? url,
    Wrapped<String?>? updatedAt,
    Wrapped<List<String>?>? desc,
  }) {
    return DamageType(
      index: (index != null ? index.value : this.index),
      name: (name != null ? name.value : this.name),
      url: (url != null ? url.value : this.url),
      updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
      desc: (desc != null ? desc.value : this.desc),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class DamageAtCharacterLevel {
  const DamageAtCharacterLevel({this.damageAtCharacterLevel, this.damageType});

  factory DamageAtCharacterLevel.fromJson(Map<String, dynamic> json) =>
      _$DamageAtCharacterLevelFromJson(json);

  static const toJsonFactory = _$DamageAtCharacterLevelToJson;
  Map<String, dynamic> toJson() => _$DamageAtCharacterLevelToJson(this);

  @JsonKey(name: 'damage_at_character_level', includeIfNull: false)
  final Map<String, dynamic>? damageAtCharacterLevel;
  @JsonKey(name: 'damage_type', includeIfNull: false)
  final APIReference? damageType;
  static const fromJsonFactory = _$DamageAtCharacterLevelFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is DamageAtCharacterLevel &&
            (identical(other.damageAtCharacterLevel, damageAtCharacterLevel) ||
                const DeepCollectionEquality().equals(
                  other.damageAtCharacterLevel,
                  damageAtCharacterLevel,
                )) &&
            (identical(other.damageType, damageType) ||
                const DeepCollectionEquality().equals(
                  other.damageType,
                  damageType,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(damageAtCharacterLevel) ^
      const DeepCollectionEquality().hash(damageType) ^
      runtimeType.hashCode;
}

extension $DamageAtCharacterLevelExtension on DamageAtCharacterLevel {
  DamageAtCharacterLevel copyWith({
    Map<String, dynamic>? damageAtCharacterLevel,
    APIReference? damageType,
  }) {
    return DamageAtCharacterLevel(
      damageAtCharacterLevel:
          damageAtCharacterLevel ?? this.damageAtCharacterLevel,
      damageType: damageType ?? this.damageType,
    );
  }

  DamageAtCharacterLevel copyWithWrapped({
    Wrapped<Map<String, dynamic>?>? damageAtCharacterLevel,
    Wrapped<APIReference?>? damageType,
  }) {
    return DamageAtCharacterLevel(
      damageAtCharacterLevel: (damageAtCharacterLevel != null
          ? damageAtCharacterLevel.value
          : this.damageAtCharacterLevel),
      damageType: (damageType != null ? damageType.value : this.damageType),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class DamageAtSlotLevel {
  const DamageAtSlotLevel({this.damageAtSlotLevel, this.damageType});

  factory DamageAtSlotLevel.fromJson(Map<String, dynamic> json) =>
      _$DamageAtSlotLevelFromJson(json);

  static const toJsonFactory = _$DamageAtSlotLevelToJson;
  Map<String, dynamic> toJson() => _$DamageAtSlotLevelToJson(this);

  @JsonKey(name: 'damage_at_slot_level', includeIfNull: false)
  final Map<String, dynamic>? damageAtSlotLevel;
  @JsonKey(name: 'damage_type', includeIfNull: false)
  final APIReference? damageType;
  static const fromJsonFactory = _$DamageAtSlotLevelFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is DamageAtSlotLevel &&
            (identical(other.damageAtSlotLevel, damageAtSlotLevel) ||
                const DeepCollectionEquality().equals(
                  other.damageAtSlotLevel,
                  damageAtSlotLevel,
                )) &&
            (identical(other.damageType, damageType) ||
                const DeepCollectionEquality().equals(
                  other.damageType,
                  damageType,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(damageAtSlotLevel) ^
      const DeepCollectionEquality().hash(damageType) ^
      runtimeType.hashCode;
}

extension $DamageAtSlotLevelExtension on DamageAtSlotLevel {
  DamageAtSlotLevel copyWith({
    Map<String, dynamic>? damageAtSlotLevel,
    APIReference? damageType,
  }) {
    return DamageAtSlotLevel(
      damageAtSlotLevel: damageAtSlotLevel ?? this.damageAtSlotLevel,
      damageType: damageType ?? this.damageType,
    );
  }

  DamageAtSlotLevel copyWithWrapped({
    Wrapped<Map<String, dynamic>?>? damageAtSlotLevel,
    Wrapped<APIReference?>? damageType,
  }) {
    return DamageAtSlotLevel(
      damageAtSlotLevel: (damageAtSlotLevel != null
          ? damageAtSlotLevel.value
          : this.damageAtSlotLevel),
      damageType: (damageType != null ? damageType.value : this.damageType),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class Condition {
  const Condition({this.index, this.name, this.url, this.updatedAt, this.desc});

  factory Condition.fromJson(Map<String, dynamic> json) =>
      _$ConditionFromJson(json);

  static const toJsonFactory = _$ConditionToJson;
  Map<String, dynamic> toJson() => _$ConditionToJson(this);

  @JsonKey(name: 'index', includeIfNull: false)
  final String? index;
  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  @JsonKey(name: 'url', includeIfNull: false)
  final String? url;
  @JsonKey(name: 'updated_at', includeIfNull: false)
  final String? updatedAt;
  @JsonKey(name: 'desc', includeIfNull: false, defaultValue: <String>[])
  final List<String>? desc;
  static const fromJsonFactory = _$ConditionFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is Condition &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality().equals(
                  other.updatedAt,
                  updatedAt,
                )) &&
            (identical(other.desc, desc) ||
                const DeepCollectionEquality().equals(other.desc, desc)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(desc) ^
      runtimeType.hashCode;
}

extension $ConditionExtension on Condition {
  Condition copyWith({
    String? index,
    String? name,
    String? url,
    String? updatedAt,
    List<String>? desc,
  }) {
    return Condition(
      index: index ?? this.index,
      name: name ?? this.name,
      url: url ?? this.url,
      updatedAt: updatedAt ?? this.updatedAt,
      desc: desc ?? this.desc,
    );
  }

  Condition copyWithWrapped({
    Wrapped<String?>? index,
    Wrapped<String?>? name,
    Wrapped<String?>? url,
    Wrapped<String?>? updatedAt,
    Wrapped<List<String>?>? desc,
  }) {
    return Condition(
      index: (index != null ? index.value : this.index),
      name: (name != null ? name.value : this.name),
      url: (url != null ? url.value : this.url),
      updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
      desc: (desc != null ? desc.value : this.desc),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class MagicSchool {
  const MagicSchool({
    this.desc,
    this.index,
    this.name,
    this.url,
    this.updatedAt,
  });

  factory MagicSchool.fromJson(Map<String, dynamic> json) =>
      _$MagicSchoolFromJson(json);

  static const toJsonFactory = _$MagicSchoolToJson;
  Map<String, dynamic> toJson() => _$MagicSchoolToJson(this);

  @JsonKey(name: 'desc', includeIfNull: false)
  final String? desc;
  @JsonKey(name: 'index', includeIfNull: false)
  final String? index;
  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  @JsonKey(name: 'url', includeIfNull: false)
  final String? url;
  @JsonKey(name: 'updated_at', includeIfNull: false)
  final String? updatedAt;
  static const fromJsonFactory = _$MagicSchoolFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is MagicSchool &&
            (identical(other.desc, desc) ||
                const DeepCollectionEquality().equals(other.desc, desc)) &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality().equals(
                  other.updatedAt,
                  updatedAt,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(desc) ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $MagicSchoolExtension on MagicSchool {
  MagicSchool copyWith({
    String? desc,
    String? index,
    String? name,
    String? url,
    String? updatedAt,
  }) {
    return MagicSchool(
      desc: desc ?? this.desc,
      index: index ?? this.index,
      name: name ?? this.name,
      url: url ?? this.url,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  MagicSchool copyWithWrapped({
    Wrapped<String?>? desc,
    Wrapped<String?>? index,
    Wrapped<String?>? name,
    Wrapped<String?>? url,
    Wrapped<String?>? updatedAt,
  }) {
    return MagicSchool(
      desc: (desc != null ? desc.value : this.desc),
      index: (index != null ? index.value : this.index),
      name: (name != null ? name.value : this.name),
      url: (url != null ? url.value : this.url),
      updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class Skill {
  const Skill({
    this.abilityScore,
    this.index,
    this.name,
    this.url,
    this.updatedAt,
    this.desc,
  });

  factory Skill.fromJson(Map<String, dynamic> json) => _$SkillFromJson(json);

  static const toJsonFactory = _$SkillToJson;
  Map<String, dynamic> toJson() => _$SkillToJson(this);

  @JsonKey(name: 'ability_score', includeIfNull: false)
  final APIReference? abilityScore;
  @JsonKey(name: 'index', includeIfNull: false)
  final String? index;
  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  @JsonKey(name: 'url', includeIfNull: false)
  final String? url;
  @JsonKey(name: 'updated_at', includeIfNull: false)
  final String? updatedAt;
  @JsonKey(name: 'desc', includeIfNull: false, defaultValue: <String>[])
  final List<String>? desc;
  static const fromJsonFactory = _$SkillFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is Skill &&
            (identical(other.abilityScore, abilityScore) ||
                const DeepCollectionEquality().equals(
                  other.abilityScore,
                  abilityScore,
                )) &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality().equals(
                  other.updatedAt,
                  updatedAt,
                )) &&
            (identical(other.desc, desc) ||
                const DeepCollectionEquality().equals(other.desc, desc)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(abilityScore) ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(desc) ^
      runtimeType.hashCode;
}

extension $SkillExtension on Skill {
  Skill copyWith({
    APIReference? abilityScore,
    String? index,
    String? name,
    String? url,
    String? updatedAt,
    List<String>? desc,
  }) {
    return Skill(
      abilityScore: abilityScore ?? this.abilityScore,
      index: index ?? this.index,
      name: name ?? this.name,
      url: url ?? this.url,
      updatedAt: updatedAt ?? this.updatedAt,
      desc: desc ?? this.desc,
    );
  }

  Skill copyWithWrapped({
    Wrapped<APIReference?>? abilityScore,
    Wrapped<String?>? index,
    Wrapped<String?>? name,
    Wrapped<String?>? url,
    Wrapped<String?>? updatedAt,
    Wrapped<List<String>?>? desc,
  }) {
    return Skill(
      abilityScore: (abilityScore != null
          ? abilityScore.value
          : this.abilityScore),
      index: (index != null ? index.value : this.index),
      name: (name != null ? name.value : this.name),
      url: (url != null ? url.value : this.url),
      updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
      desc: (desc != null ? desc.value : this.desc),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class Proficiency {
  const Proficiency({
    this.type,
    this.classes,
    this.races,
    this.reference,
    this.index,
    this.name,
    this.url,
    this.updatedAt,
  });

  factory Proficiency.fromJson(Map<String, dynamic> json) =>
      _$ProficiencyFromJson(json);

  static const toJsonFactory = _$ProficiencyToJson;
  Map<String, dynamic> toJson() => _$ProficiencyToJson(this);

  @JsonKey(name: 'type', includeIfNull: false)
  final String? type;
  @JsonKey(
    name: 'classes',
    includeIfNull: false,
    defaultValue: <APIReference>[],
  )
  final List<APIReference>? classes;
  @JsonKey(name: 'races', includeIfNull: false, defaultValue: <APIReference>[])
  final List<APIReference>? races;
  @JsonKey(name: 'reference', includeIfNull: false)
  final APIReference? reference;
  @JsonKey(name: 'index', includeIfNull: false)
  final String? index;
  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  @JsonKey(name: 'url', includeIfNull: false)
  final String? url;
  @JsonKey(name: 'updated_at', includeIfNull: false)
  final String? updatedAt;
  static const fromJsonFactory = _$ProficiencyFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is Proficiency &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.classes, classes) ||
                const DeepCollectionEquality().equals(
                  other.classes,
                  classes,
                )) &&
            (identical(other.races, races) ||
                const DeepCollectionEquality().equals(other.races, races)) &&
            (identical(other.reference, reference) ||
                const DeepCollectionEquality().equals(
                  other.reference,
                  reference,
                )) &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality().equals(
                  other.updatedAt,
                  updatedAt,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(classes) ^
      const DeepCollectionEquality().hash(races) ^
      const DeepCollectionEquality().hash(reference) ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $ProficiencyExtension on Proficiency {
  Proficiency copyWith({
    String? type,
    List<APIReference>? classes,
    List<APIReference>? races,
    APIReference? reference,
    String? index,
    String? name,
    String? url,
    String? updatedAt,
  }) {
    return Proficiency(
      type: type ?? this.type,
      classes: classes ?? this.classes,
      races: races ?? this.races,
      reference: reference ?? this.reference,
      index: index ?? this.index,
      name: name ?? this.name,
      url: url ?? this.url,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  Proficiency copyWithWrapped({
    Wrapped<String?>? type,
    Wrapped<List<APIReference>?>? classes,
    Wrapped<List<APIReference>?>? races,
    Wrapped<APIReference?>? reference,
    Wrapped<String?>? index,
    Wrapped<String?>? name,
    Wrapped<String?>? url,
    Wrapped<String?>? updatedAt,
  }) {
    return Proficiency(
      type: (type != null ? type.value : this.type),
      classes: (classes != null ? classes.value : this.classes),
      races: (races != null ? races.value : this.races),
      reference: (reference != null ? reference.value : this.reference),
      index: (index != null ? index.value : this.index),
      name: (name != null ? name.value : this.name),
      url: (url != null ? url.value : this.url),
      updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class Language {
  const Language({
    this.desc,
    this.type,
    this.script,
    this.typicalSpeakers,
    this.index,
    this.name,
    this.url,
    this.updatedAt,
  });

  factory Language.fromJson(Map<String, dynamic> json) =>
      _$LanguageFromJson(json);

  static const toJsonFactory = _$LanguageToJson;
  Map<String, dynamic> toJson() => _$LanguageToJson(this);

  @JsonKey(name: 'desc', includeIfNull: false)
  final String? desc;
  @JsonKey(
    name: 'type',
    includeIfNull: false,
    toJson: languageTypeNullableToJson,
    fromJson: languageTypeNullableFromJson,
  )
  final enums.LanguageType? type;
  @JsonKey(name: 'script', includeIfNull: false)
  final String? script;
  @JsonKey(
    name: 'typical_speakers',
    includeIfNull: false,
    defaultValue: <String>[],
  )
  final List<String>? typicalSpeakers;
  @JsonKey(name: 'index', includeIfNull: false)
  final String? index;
  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  @JsonKey(name: 'url', includeIfNull: false)
  final String? url;
  @JsonKey(name: 'updated_at', includeIfNull: false)
  final String? updatedAt;
  static const fromJsonFactory = _$LanguageFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is Language &&
            (identical(other.desc, desc) ||
                const DeepCollectionEquality().equals(other.desc, desc)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.script, script) ||
                const DeepCollectionEquality().equals(other.script, script)) &&
            (identical(other.typicalSpeakers, typicalSpeakers) ||
                const DeepCollectionEquality().equals(
                  other.typicalSpeakers,
                  typicalSpeakers,
                )) &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality().equals(
                  other.updatedAt,
                  updatedAt,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(desc) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(script) ^
      const DeepCollectionEquality().hash(typicalSpeakers) ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $LanguageExtension on Language {
  Language copyWith({
    String? desc,
    enums.LanguageType? type,
    String? script,
    List<String>? typicalSpeakers,
    String? index,
    String? name,
    String? url,
    String? updatedAt,
  }) {
    return Language(
      desc: desc ?? this.desc,
      type: type ?? this.type,
      script: script ?? this.script,
      typicalSpeakers: typicalSpeakers ?? this.typicalSpeakers,
      index: index ?? this.index,
      name: name ?? this.name,
      url: url ?? this.url,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  Language copyWithWrapped({
    Wrapped<String?>? desc,
    Wrapped<enums.LanguageType?>? type,
    Wrapped<String?>? script,
    Wrapped<List<String>?>? typicalSpeakers,
    Wrapped<String?>? index,
    Wrapped<String?>? name,
    Wrapped<String?>? url,
    Wrapped<String?>? updatedAt,
  }) {
    return Language(
      desc: (desc != null ? desc.value : this.desc),
      type: (type != null ? type.value : this.type),
      script: (script != null ? script.value : this.script),
      typicalSpeakers: (typicalSpeakers != null
          ? typicalSpeakers.value
          : this.typicalSpeakers),
      index: (index != null ? index.value : this.index),
      name: (name != null ? name.value : this.name),
      url: (url != null ? url.value : this.url),
      updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class Background {
  const Background({
    this.startingProficiencies,
    this.startingEquipment,
    this.startingEquipmentOptions,
    this.languageOptions,
    this.feature,
    this.personalityTraits,
    this.ideals,
    this.bonds,
    this.flaws,
    this.index,
    this.name,
    this.url,
    this.updatedAt,
  });

  factory Background.fromJson(Map<String, dynamic> json) =>
      _$BackgroundFromJson(json);

  static const toJsonFactory = _$BackgroundToJson;
  Map<String, dynamic> toJson() => _$BackgroundToJson(this);

  @JsonKey(
    name: 'starting_proficiencies',
    includeIfNull: false,
    defaultValue: <APIReference>[],
  )
  final List<APIReference>? startingProficiencies;
  @JsonKey(
    name: 'starting_equipment',
    includeIfNull: false,
    defaultValue: <APIReference>[],
  )
  final List<APIReference>? startingEquipment;
  @JsonKey(name: 'starting_equipment_options', includeIfNull: false)
  final Choice? startingEquipmentOptions;
  @JsonKey(name: 'language_options', includeIfNull: false)
  final Choice? languageOptions;
  @JsonKey(name: 'feature', includeIfNull: false)
  final Background$Feature? feature;
  @JsonKey(name: 'personality_traits', includeIfNull: false)
  final Object? personalityTraits;
  @JsonKey(name: 'ideals', includeIfNull: false)
  final Choice? ideals;
  @JsonKey(name: 'bonds', includeIfNull: false)
  final Choice? bonds;
  @JsonKey(name: 'flaws', includeIfNull: false)
  final Choice? flaws;
  @JsonKey(name: 'index', includeIfNull: false)
  final String? index;
  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  @JsonKey(name: 'url', includeIfNull: false)
  final String? url;
  @JsonKey(name: 'updated_at', includeIfNull: false)
  final String? updatedAt;
  static const fromJsonFactory = _$BackgroundFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is Background &&
            (identical(other.startingProficiencies, startingProficiencies) ||
                const DeepCollectionEquality().equals(
                  other.startingProficiencies,
                  startingProficiencies,
                )) &&
            (identical(other.startingEquipment, startingEquipment) ||
                const DeepCollectionEquality().equals(
                  other.startingEquipment,
                  startingEquipment,
                )) &&
            (identical(
                  other.startingEquipmentOptions,
                  startingEquipmentOptions,
                ) ||
                const DeepCollectionEquality().equals(
                  other.startingEquipmentOptions,
                  startingEquipmentOptions,
                )) &&
            (identical(other.languageOptions, languageOptions) ||
                const DeepCollectionEquality().equals(
                  other.languageOptions,
                  languageOptions,
                )) &&
            (identical(other.feature, feature) ||
                const DeepCollectionEquality().equals(
                  other.feature,
                  feature,
                )) &&
            (identical(other.personalityTraits, personalityTraits) ||
                const DeepCollectionEquality().equals(
                  other.personalityTraits,
                  personalityTraits,
                )) &&
            (identical(other.ideals, ideals) ||
                const DeepCollectionEquality().equals(other.ideals, ideals)) &&
            (identical(other.bonds, bonds) ||
                const DeepCollectionEquality().equals(other.bonds, bonds)) &&
            (identical(other.flaws, flaws) ||
                const DeepCollectionEquality().equals(other.flaws, flaws)) &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality().equals(
                  other.updatedAt,
                  updatedAt,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(startingProficiencies) ^
      const DeepCollectionEquality().hash(startingEquipment) ^
      const DeepCollectionEquality().hash(startingEquipmentOptions) ^
      const DeepCollectionEquality().hash(languageOptions) ^
      const DeepCollectionEquality().hash(feature) ^
      const DeepCollectionEquality().hash(personalityTraits) ^
      const DeepCollectionEquality().hash(ideals) ^
      const DeepCollectionEquality().hash(bonds) ^
      const DeepCollectionEquality().hash(flaws) ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $BackgroundExtension on Background {
  Background copyWith({
    List<APIReference>? startingProficiencies,
    List<APIReference>? startingEquipment,
    Choice? startingEquipmentOptions,
    Choice? languageOptions,
    Background$Feature? feature,
    Object? personalityTraits,
    Choice? ideals,
    Choice? bonds,
    Choice? flaws,
    String? index,
    String? name,
    String? url,
    String? updatedAt,
  }) {
    return Background(
      startingProficiencies:
          startingProficiencies ?? this.startingProficiencies,
      startingEquipment: startingEquipment ?? this.startingEquipment,
      startingEquipmentOptions:
          startingEquipmentOptions ?? this.startingEquipmentOptions,
      languageOptions: languageOptions ?? this.languageOptions,
      feature: feature ?? this.feature,
      personalityTraits: personalityTraits ?? this.personalityTraits,
      ideals: ideals ?? this.ideals,
      bonds: bonds ?? this.bonds,
      flaws: flaws ?? this.flaws,
      index: index ?? this.index,
      name: name ?? this.name,
      url: url ?? this.url,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  Background copyWithWrapped({
    Wrapped<List<APIReference>?>? startingProficiencies,
    Wrapped<List<APIReference>?>? startingEquipment,
    Wrapped<Choice?>? startingEquipmentOptions,
    Wrapped<Choice?>? languageOptions,
    Wrapped<Background$Feature?>? feature,
    Wrapped<Object?>? personalityTraits,
    Wrapped<Choice?>? ideals,
    Wrapped<Choice?>? bonds,
    Wrapped<Choice?>? flaws,
    Wrapped<String?>? index,
    Wrapped<String?>? name,
    Wrapped<String?>? url,
    Wrapped<String?>? updatedAt,
  }) {
    return Background(
      startingProficiencies: (startingProficiencies != null
          ? startingProficiencies.value
          : this.startingProficiencies),
      startingEquipment: (startingEquipment != null
          ? startingEquipment.value
          : this.startingEquipment),
      startingEquipmentOptions: (startingEquipmentOptions != null
          ? startingEquipmentOptions.value
          : this.startingEquipmentOptions),
      languageOptions: (languageOptions != null
          ? languageOptions.value
          : this.languageOptions),
      feature: (feature != null ? feature.value : this.feature),
      personalityTraits: (personalityTraits != null
          ? personalityTraits.value
          : this.personalityTraits),
      ideals: (ideals != null ? ideals.value : this.ideals),
      bonds: (bonds != null ? bonds.value : this.bonds),
      flaws: (flaws != null ? flaws.value : this.flaws),
      index: (index != null ? index.value : this.index),
      name: (name != null ? name.value : this.name),
      url: (url != null ? url.value : this.url),
      updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class Feat {
  const Feat({
    this.prerequisites,
    this.index,
    this.name,
    this.url,
    this.updatedAt,
    this.desc,
  });

  factory Feat.fromJson(Map<String, dynamic> json) => _$FeatFromJson(json);

  static const toJsonFactory = _$FeatToJson;
  Map<String, dynamic> toJson() => _$FeatToJson(this);

  @JsonKey(
    name: 'prerequisites',
    includeIfNull: false,
    defaultValue: <Prerequisite>[],
  )
  final List<Prerequisite>? prerequisites;
  @JsonKey(name: 'index', includeIfNull: false)
  final String? index;
  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  @JsonKey(name: 'url', includeIfNull: false)
  final String? url;
  @JsonKey(name: 'updated_at', includeIfNull: false)
  final String? updatedAt;
  @JsonKey(name: 'desc', includeIfNull: false, defaultValue: <String>[])
  final List<String>? desc;
  static const fromJsonFactory = _$FeatFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is Feat &&
            (identical(other.prerequisites, prerequisites) ||
                const DeepCollectionEquality().equals(
                  other.prerequisites,
                  prerequisites,
                )) &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality().equals(
                  other.updatedAt,
                  updatedAt,
                )) &&
            (identical(other.desc, desc) ||
                const DeepCollectionEquality().equals(other.desc, desc)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(prerequisites) ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(desc) ^
      runtimeType.hashCode;
}

extension $FeatExtension on Feat {
  Feat copyWith({
    List<Prerequisite>? prerequisites,
    String? index,
    String? name,
    String? url,
    String? updatedAt,
    List<String>? desc,
  }) {
    return Feat(
      prerequisites: prerequisites ?? this.prerequisites,
      index: index ?? this.index,
      name: name ?? this.name,
      url: url ?? this.url,
      updatedAt: updatedAt ?? this.updatedAt,
      desc: desc ?? this.desc,
    );
  }

  Feat copyWithWrapped({
    Wrapped<List<Prerequisite>?>? prerequisites,
    Wrapped<String?>? index,
    Wrapped<String?>? name,
    Wrapped<String?>? url,
    Wrapped<String?>? updatedAt,
    Wrapped<List<String>?>? desc,
  }) {
    return Feat(
      prerequisites: (prerequisites != null
          ? prerequisites.value
          : this.prerequisites),
      index: (index != null ? index.value : this.index),
      name: (name != null ? name.value : this.name),
      url: (url != null ? url.value : this.url),
      updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
      desc: (desc != null ? desc.value : this.desc),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class Subclass {
  const Subclass({
    this.$class,
    this.subclassFlavor,
    this.subclassLevels,
    this.spells,
    this.index,
    this.name,
    this.url,
    this.updatedAt,
    this.desc,
  });

  factory Subclass.fromJson(Map<String, dynamic> json) =>
      _$SubclassFromJson(json);

  static const toJsonFactory = _$SubclassToJson;
  Map<String, dynamic> toJson() => _$SubclassToJson(this);

  @JsonKey(name: 'class', includeIfNull: false)
  final APIReference? $class;
  @JsonKey(name: 'subclass_flavor', includeIfNull: false)
  final String? subclassFlavor;
  @JsonKey(name: 'subclass_levels', includeIfNull: false)
  final String? subclassLevels;
  @JsonKey(name: 'spells', includeIfNull: false)
  final List<Subclass$Spells$Item>? spells;
  @JsonKey(name: 'index', includeIfNull: false)
  final String? index;
  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  @JsonKey(name: 'url', includeIfNull: false)
  final String? url;
  @JsonKey(name: 'updated_at', includeIfNull: false)
  final String? updatedAt;
  @JsonKey(name: 'desc', includeIfNull: false, defaultValue: <String>[])
  final List<String>? desc;
  static const fromJsonFactory = _$SubclassFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is Subclass &&
            (identical(other.$class, $class) ||
                const DeepCollectionEquality().equals(other.$class, $class)) &&
            (identical(other.subclassFlavor, subclassFlavor) ||
                const DeepCollectionEquality().equals(
                  other.subclassFlavor,
                  subclassFlavor,
                )) &&
            (identical(other.subclassLevels, subclassLevels) ||
                const DeepCollectionEquality().equals(
                  other.subclassLevels,
                  subclassLevels,
                )) &&
            (identical(other.spells, spells) ||
                const DeepCollectionEquality().equals(other.spells, spells)) &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality().equals(
                  other.updatedAt,
                  updatedAt,
                )) &&
            (identical(other.desc, desc) ||
                const DeepCollectionEquality().equals(other.desc, desc)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash($class) ^
      const DeepCollectionEquality().hash(subclassFlavor) ^
      const DeepCollectionEquality().hash(subclassLevels) ^
      const DeepCollectionEquality().hash(spells) ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(desc) ^
      runtimeType.hashCode;
}

extension $SubclassExtension on Subclass {
  Subclass copyWith({
    APIReference? $class,
    String? subclassFlavor,
    String? subclassLevels,
    List<Subclass$Spells$Item>? spells,
    String? index,
    String? name,
    String? url,
    String? updatedAt,
    List<String>? desc,
  }) {
    return Subclass(
      $class: $class ?? this.$class,
      subclassFlavor: subclassFlavor ?? this.subclassFlavor,
      subclassLevels: subclassLevels ?? this.subclassLevels,
      spells: spells ?? this.spells,
      index: index ?? this.index,
      name: name ?? this.name,
      url: url ?? this.url,
      updatedAt: updatedAt ?? this.updatedAt,
      desc: desc ?? this.desc,
    );
  }

  Subclass copyWithWrapped({
    Wrapped<APIReference?>? $class,
    Wrapped<String?>? subclassFlavor,
    Wrapped<String?>? subclassLevels,
    Wrapped<List<Subclass$Spells$Item>?>? spells,
    Wrapped<String?>? index,
    Wrapped<String?>? name,
    Wrapped<String?>? url,
    Wrapped<String?>? updatedAt,
    Wrapped<List<String>?>? desc,
  }) {
    return Subclass(
      $class: ($class != null ? $class.value : this.$class),
      subclassFlavor: (subclassFlavor != null
          ? subclassFlavor.value
          : this.subclassFlavor),
      subclassLevels: (subclassLevels != null
          ? subclassLevels.value
          : this.subclassLevels),
      spells: (spells != null ? spells.value : this.spells),
      index: (index != null ? index.value : this.index),
      name: (name != null ? name.value : this.name),
      url: (url != null ? url.value : this.url),
      updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
      desc: (desc != null ? desc.value : this.desc),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class SubclassLevel {
  const SubclassLevel({
    this.index,
    this.url,
    this.level,
    this.abilityScoreBonuses,
    this.profBonus,
    this.features,
    this.spellcasting,
    this.classspecific,
  });

  factory SubclassLevel.fromJson(Map<String, dynamic> json) =>
      _$SubclassLevelFromJson(json);

  static const toJsonFactory = _$SubclassLevelToJson;
  Map<String, dynamic> toJson() => _$SubclassLevelToJson(this);

  @JsonKey(name: 'index', includeIfNull: false)
  final String? index;
  @JsonKey(name: 'url', includeIfNull: false)
  final String? url;
  @JsonKey(name: 'level', includeIfNull: false)
  final double? level;
  @JsonKey(name: 'ability_score_bonuses', includeIfNull: false)
  final double? abilityScoreBonuses;
  @JsonKey(name: 'prof_bonus', includeIfNull: false)
  final double? profBonus;
  @JsonKey(
    name: 'features',
    includeIfNull: false,
    defaultValue: <APIReference>[],
  )
  final List<APIReference>? features;
  @JsonKey(name: 'spellcasting', includeIfNull: false)
  final SubclassLevel$Spellcasting? spellcasting;
  @JsonKey(name: 'classspecific', includeIfNull: false)
  final dynamic classspecific;
  static const fromJsonFactory = _$SubclassLevelFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is SubclassLevel &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.level, level) ||
                const DeepCollectionEquality().equals(other.level, level)) &&
            (identical(other.abilityScoreBonuses, abilityScoreBonuses) ||
                const DeepCollectionEquality().equals(
                  other.abilityScoreBonuses,
                  abilityScoreBonuses,
                )) &&
            (identical(other.profBonus, profBonus) ||
                const DeepCollectionEquality().equals(
                  other.profBonus,
                  profBonus,
                )) &&
            (identical(other.features, features) ||
                const DeepCollectionEquality().equals(
                  other.features,
                  features,
                )) &&
            (identical(other.spellcasting, spellcasting) ||
                const DeepCollectionEquality().equals(
                  other.spellcasting,
                  spellcasting,
                )) &&
            (identical(other.classspecific, classspecific) ||
                const DeepCollectionEquality().equals(
                  other.classspecific,
                  classspecific,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(level) ^
      const DeepCollectionEquality().hash(abilityScoreBonuses) ^
      const DeepCollectionEquality().hash(profBonus) ^
      const DeepCollectionEquality().hash(features) ^
      const DeepCollectionEquality().hash(spellcasting) ^
      const DeepCollectionEquality().hash(classspecific) ^
      runtimeType.hashCode;
}

extension $SubclassLevelExtension on SubclassLevel {
  SubclassLevel copyWith({
    String? index,
    String? url,
    double? level,
    double? abilityScoreBonuses,
    double? profBonus,
    List<APIReference>? features,
    SubclassLevel$Spellcasting? spellcasting,
    dynamic classspecific,
  }) {
    return SubclassLevel(
      index: index ?? this.index,
      url: url ?? this.url,
      level: level ?? this.level,
      abilityScoreBonuses: abilityScoreBonuses ?? this.abilityScoreBonuses,
      profBonus: profBonus ?? this.profBonus,
      features: features ?? this.features,
      spellcasting: spellcasting ?? this.spellcasting,
      classspecific: classspecific ?? this.classspecific,
    );
  }

  SubclassLevel copyWithWrapped({
    Wrapped<String?>? index,
    Wrapped<String?>? url,
    Wrapped<double?>? level,
    Wrapped<double?>? abilityScoreBonuses,
    Wrapped<double?>? profBonus,
    Wrapped<List<APIReference>?>? features,
    Wrapped<SubclassLevel$Spellcasting?>? spellcasting,
    Wrapped<dynamic>? classspecific,
  }) {
    return SubclassLevel(
      index: (index != null ? index.value : this.index),
      url: (url != null ? url.value : this.url),
      level: (level != null ? level.value : this.level),
      abilityScoreBonuses: (abilityScoreBonuses != null
          ? abilityScoreBonuses.value
          : this.abilityScoreBonuses),
      profBonus: (profBonus != null ? profBonus.value : this.profBonus),
      features: (features != null ? features.value : this.features),
      spellcasting: (spellcasting != null
          ? spellcasting.value
          : this.spellcasting),
      classspecific: (classspecific != null
          ? classspecific.value
          : this.classspecific),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class SubclassLevelResource {
  const SubclassLevelResource({
    this.index,
    this.url,
    this.level,
    this.features,
    this.$class,
    this.subclass,
  });

  factory SubclassLevelResource.fromJson(Map<String, dynamic> json) =>
      _$SubclassLevelResourceFromJson(json);

  static const toJsonFactory = _$SubclassLevelResourceToJson;
  Map<String, dynamic> toJson() => _$SubclassLevelResourceToJson(this);

  @JsonKey(name: 'index', includeIfNull: false)
  final String? index;
  @JsonKey(name: 'url', includeIfNull: false)
  final String? url;
  @JsonKey(name: 'level', includeIfNull: false)
  final double? level;
  @JsonKey(
    name: 'features',
    includeIfNull: false,
    defaultValue: <APIReference>[],
  )
  final List<APIReference>? features;
  @JsonKey(name: 'class', includeIfNull: false)
  final APIReference? $class;
  @JsonKey(name: 'subclass', includeIfNull: false)
  final APIReference? subclass;
  static const fromJsonFactory = _$SubclassLevelResourceFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is SubclassLevelResource &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.level, level) ||
                const DeepCollectionEquality().equals(other.level, level)) &&
            (identical(other.features, features) ||
                const DeepCollectionEquality().equals(
                  other.features,
                  features,
                )) &&
            (identical(other.$class, $class) ||
                const DeepCollectionEquality().equals(other.$class, $class)) &&
            (identical(other.subclass, subclass) ||
                const DeepCollectionEquality().equals(
                  other.subclass,
                  subclass,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(level) ^
      const DeepCollectionEquality().hash(features) ^
      const DeepCollectionEquality().hash($class) ^
      const DeepCollectionEquality().hash(subclass) ^
      runtimeType.hashCode;
}

extension $SubclassLevelResourceExtension on SubclassLevelResource {
  SubclassLevelResource copyWith({
    String? index,
    String? url,
    double? level,
    List<APIReference>? features,
    APIReference? $class,
    APIReference? subclass,
  }) {
    return SubclassLevelResource(
      index: index ?? this.index,
      url: url ?? this.url,
      level: level ?? this.level,
      features: features ?? this.features,
      $class: $class ?? this.$class,
      subclass: subclass ?? this.subclass,
    );
  }

  SubclassLevelResource copyWithWrapped({
    Wrapped<String?>? index,
    Wrapped<String?>? url,
    Wrapped<double?>? level,
    Wrapped<List<APIReference>?>? features,
    Wrapped<APIReference?>? $class,
    Wrapped<APIReference?>? subclass,
  }) {
    return SubclassLevelResource(
      index: (index != null ? index.value : this.index),
      url: (url != null ? url.value : this.url),
      level: (level != null ? level.value : this.level),
      features: (features != null ? features.value : this.features),
      $class: ($class != null ? $class.value : this.$class),
      subclass: (subclass != null ? subclass.value : this.subclass),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ClassLevel {
  const ClassLevel({
    this.index,
    this.url,
    this.level,
    this.abilityScoreBonuses,
    this.profBonus,
    this.features,
    this.spellcasting,
    this.classSpecific,
  });

  factory ClassLevel.fromJson(Map<String, dynamic> json) =>
      _$ClassLevelFromJson(json);

  static const toJsonFactory = _$ClassLevelToJson;
  Map<String, dynamic> toJson() => _$ClassLevelToJson(this);

  @JsonKey(name: 'index', includeIfNull: false)
  final String? index;
  @JsonKey(name: 'url', includeIfNull: false)
  final String? url;
  @JsonKey(name: 'level', includeIfNull: false)
  final double? level;
  @JsonKey(name: 'ability_score_bonuses', includeIfNull: false)
  final double? abilityScoreBonuses;
  @JsonKey(name: 'prof_bonus', includeIfNull: false)
  final double? profBonus;
  @JsonKey(
    name: 'features',
    includeIfNull: false,
    defaultValue: <APIReference>[],
  )
  final List<APIReference>? features;
  @JsonKey(name: 'spellcasting', includeIfNull: false)
  final ClassLevel$Spellcasting? spellcasting;
  @JsonKey(name: 'class_specific', includeIfNull: false)
  final Map<String, dynamic>? classSpecific;
  static const fromJsonFactory = _$ClassLevelFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ClassLevel &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.level, level) ||
                const DeepCollectionEquality().equals(other.level, level)) &&
            (identical(other.abilityScoreBonuses, abilityScoreBonuses) ||
                const DeepCollectionEquality().equals(
                  other.abilityScoreBonuses,
                  abilityScoreBonuses,
                )) &&
            (identical(other.profBonus, profBonus) ||
                const DeepCollectionEquality().equals(
                  other.profBonus,
                  profBonus,
                )) &&
            (identical(other.features, features) ||
                const DeepCollectionEquality().equals(
                  other.features,
                  features,
                )) &&
            (identical(other.spellcasting, spellcasting) ||
                const DeepCollectionEquality().equals(
                  other.spellcasting,
                  spellcasting,
                )) &&
            (identical(other.classSpecific, classSpecific) ||
                const DeepCollectionEquality().equals(
                  other.classSpecific,
                  classSpecific,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(level) ^
      const DeepCollectionEquality().hash(abilityScoreBonuses) ^
      const DeepCollectionEquality().hash(profBonus) ^
      const DeepCollectionEquality().hash(features) ^
      const DeepCollectionEquality().hash(spellcasting) ^
      const DeepCollectionEquality().hash(classSpecific) ^
      runtimeType.hashCode;
}

extension $ClassLevelExtension on ClassLevel {
  ClassLevel copyWith({
    String? index,
    String? url,
    double? level,
    double? abilityScoreBonuses,
    double? profBonus,
    List<APIReference>? features,
    ClassLevel$Spellcasting? spellcasting,
    Map<String, dynamic>? classSpecific,
  }) {
    return ClassLevel(
      index: index ?? this.index,
      url: url ?? this.url,
      level: level ?? this.level,
      abilityScoreBonuses: abilityScoreBonuses ?? this.abilityScoreBonuses,
      profBonus: profBonus ?? this.profBonus,
      features: features ?? this.features,
      spellcasting: spellcasting ?? this.spellcasting,
      classSpecific: classSpecific ?? this.classSpecific,
    );
  }

  ClassLevel copyWithWrapped({
    Wrapped<String?>? index,
    Wrapped<String?>? url,
    Wrapped<double?>? level,
    Wrapped<double?>? abilityScoreBonuses,
    Wrapped<double?>? profBonus,
    Wrapped<List<APIReference>?>? features,
    Wrapped<ClassLevel$Spellcasting?>? spellcasting,
    Wrapped<Map<String, dynamic>?>? classSpecific,
  }) {
    return ClassLevel(
      index: (index != null ? index.value : this.index),
      url: (url != null ? url.value : this.url),
      level: (level != null ? level.value : this.level),
      abilityScoreBonuses: (abilityScoreBonuses != null
          ? abilityScoreBonuses.value
          : this.abilityScoreBonuses),
      profBonus: (profBonus != null ? profBonus.value : this.profBonus),
      features: (features != null ? features.value : this.features),
      spellcasting: (spellcasting != null
          ? spellcasting.value
          : this.spellcasting),
      classSpecific: (classSpecific != null
          ? classSpecific.value
          : this.classSpecific),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class Feature {
  const Feature({
    this.level,
    this.$class,
    this.subclass,
    this.parent,
    this.prerequisites,
    this.featureSpecific,
    this.index,
    this.name,
    this.url,
    this.updatedAt,
    this.desc,
  });

  factory Feature.fromJson(Map<String, dynamic> json) =>
      _$FeatureFromJson(json);

  static const toJsonFactory = _$FeatureToJson;
  Map<String, dynamic> toJson() => _$FeatureToJson(this);

  @JsonKey(name: 'level', includeIfNull: false)
  final double? level;
  @JsonKey(name: 'class', includeIfNull: false)
  final APIReference? $class;
  @JsonKey(name: 'subclass', includeIfNull: false)
  final APIReference? subclass;
  @JsonKey(name: 'parent', includeIfNull: false)
  final APIReference? parent;
  @JsonKey(
    name: 'prerequisites',
    includeIfNull: false,
    defaultValue: <Object>[],
  )
  final List<Object>? prerequisites;
  @JsonKey(name: 'feature_specific', includeIfNull: false)
  final dynamic featureSpecific;
  @JsonKey(name: 'index', includeIfNull: false)
  final String? index;
  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  @JsonKey(name: 'url', includeIfNull: false)
  final String? url;
  @JsonKey(name: 'updated_at', includeIfNull: false)
  final String? updatedAt;
  @JsonKey(name: 'desc', includeIfNull: false, defaultValue: <String>[])
  final List<String>? desc;
  static const fromJsonFactory = _$FeatureFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is Feature &&
            (identical(other.level, level) ||
                const DeepCollectionEquality().equals(other.level, level)) &&
            (identical(other.$class, $class) ||
                const DeepCollectionEquality().equals(other.$class, $class)) &&
            (identical(other.subclass, subclass) ||
                const DeepCollectionEquality().equals(
                  other.subclass,
                  subclass,
                )) &&
            (identical(other.parent, parent) ||
                const DeepCollectionEquality().equals(other.parent, parent)) &&
            (identical(other.prerequisites, prerequisites) ||
                const DeepCollectionEquality().equals(
                  other.prerequisites,
                  prerequisites,
                )) &&
            (identical(other.featureSpecific, featureSpecific) ||
                const DeepCollectionEquality().equals(
                  other.featureSpecific,
                  featureSpecific,
                )) &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality().equals(
                  other.updatedAt,
                  updatedAt,
                )) &&
            (identical(other.desc, desc) ||
                const DeepCollectionEquality().equals(other.desc, desc)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(level) ^
      const DeepCollectionEquality().hash($class) ^
      const DeepCollectionEquality().hash(subclass) ^
      const DeepCollectionEquality().hash(parent) ^
      const DeepCollectionEquality().hash(prerequisites) ^
      const DeepCollectionEquality().hash(featureSpecific) ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(desc) ^
      runtimeType.hashCode;
}

extension $FeatureExtension on Feature {
  Feature copyWith({
    double? level,
    APIReference? $class,
    APIReference? subclass,
    APIReference? parent,
    List<Object>? prerequisites,
    dynamic featureSpecific,
    String? index,
    String? name,
    String? url,
    String? updatedAt,
    List<String>? desc,
  }) {
    return Feature(
      level: level ?? this.level,
      $class: $class ?? this.$class,
      subclass: subclass ?? this.subclass,
      parent: parent ?? this.parent,
      prerequisites: prerequisites ?? this.prerequisites,
      featureSpecific: featureSpecific ?? this.featureSpecific,
      index: index ?? this.index,
      name: name ?? this.name,
      url: url ?? this.url,
      updatedAt: updatedAt ?? this.updatedAt,
      desc: desc ?? this.desc,
    );
  }

  Feature copyWithWrapped({
    Wrapped<double?>? level,
    Wrapped<APIReference?>? $class,
    Wrapped<APIReference?>? subclass,
    Wrapped<APIReference?>? parent,
    Wrapped<List<Object>?>? prerequisites,
    Wrapped<dynamic>? featureSpecific,
    Wrapped<String?>? index,
    Wrapped<String?>? name,
    Wrapped<String?>? url,
    Wrapped<String?>? updatedAt,
    Wrapped<List<String>?>? desc,
  }) {
    return Feature(
      level: (level != null ? level.value : this.level),
      $class: ($class != null ? $class.value : this.$class),
      subclass: (subclass != null ? subclass.value : this.subclass),
      parent: (parent != null ? parent.value : this.parent),
      prerequisites: (prerequisites != null
          ? prerequisites.value
          : this.prerequisites),
      featureSpecific: (featureSpecific != null
          ? featureSpecific.value
          : this.featureSpecific),
      index: (index != null ? index.value : this.index),
      name: (name != null ? name.value : this.name),
      url: (url != null ? url.value : this.url),
      updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
      desc: (desc != null ? desc.value : this.desc),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class Race {
  const Race({
    this.speed,
    this.abilityBonuses,
    this.alignment,
    this.age,
    this.size,
    this.sizeDescription,
    this.startingProficiencies,
    this.startingProficiencyOptions,
    this.languages,
    this.languageDesc,
    this.traits,
    this.subraces,
    this.index,
    this.name,
    this.url,
    this.updatedAt,
  });

  factory Race.fromJson(Map<String, dynamic> json) => _$RaceFromJson(json);

  static const toJsonFactory = _$RaceToJson;
  Map<String, dynamic> toJson() => _$RaceToJson(this);

  @JsonKey(name: 'speed', includeIfNull: false)
  final double? speed;
  @JsonKey(
    name: 'ability_bonuses',
    includeIfNull: false,
    defaultValue: <AbilityBonus>[],
  )
  final List<AbilityBonus>? abilityBonuses;
  @JsonKey(name: 'alignment', includeIfNull: false)
  final String? alignment;
  @JsonKey(name: 'age', includeIfNull: false)
  final String? age;
  @JsonKey(name: 'size', includeIfNull: false)
  final String? size;
  @JsonKey(name: 'size_description', includeIfNull: false)
  final String? sizeDescription;
  @JsonKey(
    name: 'starting_proficiencies',
    includeIfNull: false,
    defaultValue: <APIReference>[],
  )
  final List<APIReference>? startingProficiencies;
  @JsonKey(name: 'starting_proficiency_options', includeIfNull: false)
  final Choice? startingProficiencyOptions;
  @JsonKey(
    name: 'languages',
    includeIfNull: false,
    defaultValue: <APIReference>[],
  )
  final List<APIReference>? languages;
  @JsonKey(name: 'language_desc', includeIfNull: false)
  final String? languageDesc;
  @JsonKey(name: 'traits', includeIfNull: false, defaultValue: <APIReference>[])
  final List<APIReference>? traits;
  @JsonKey(
    name: 'subraces',
    includeIfNull: false,
    defaultValue: <APIReference>[],
  )
  final List<APIReference>? subraces;
  @JsonKey(name: 'index', includeIfNull: false)
  final String? index;
  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  @JsonKey(name: 'url', includeIfNull: false)
  final String? url;
  @JsonKey(name: 'updated_at', includeIfNull: false)
  final String? updatedAt;
  static const fromJsonFactory = _$RaceFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is Race &&
            (identical(other.speed, speed) ||
                const DeepCollectionEquality().equals(other.speed, speed)) &&
            (identical(other.abilityBonuses, abilityBonuses) ||
                const DeepCollectionEquality().equals(
                  other.abilityBonuses,
                  abilityBonuses,
                )) &&
            (identical(other.alignment, alignment) ||
                const DeepCollectionEquality().equals(
                  other.alignment,
                  alignment,
                )) &&
            (identical(other.age, age) ||
                const DeepCollectionEquality().equals(other.age, age)) &&
            (identical(other.size, size) ||
                const DeepCollectionEquality().equals(other.size, size)) &&
            (identical(other.sizeDescription, sizeDescription) ||
                const DeepCollectionEquality().equals(
                  other.sizeDescription,
                  sizeDescription,
                )) &&
            (identical(other.startingProficiencies, startingProficiencies) ||
                const DeepCollectionEquality().equals(
                  other.startingProficiencies,
                  startingProficiencies,
                )) &&
            (identical(
                  other.startingProficiencyOptions,
                  startingProficiencyOptions,
                ) ||
                const DeepCollectionEquality().equals(
                  other.startingProficiencyOptions,
                  startingProficiencyOptions,
                )) &&
            (identical(other.languages, languages) ||
                const DeepCollectionEquality().equals(
                  other.languages,
                  languages,
                )) &&
            (identical(other.languageDesc, languageDesc) ||
                const DeepCollectionEquality().equals(
                  other.languageDesc,
                  languageDesc,
                )) &&
            (identical(other.traits, traits) ||
                const DeepCollectionEquality().equals(other.traits, traits)) &&
            (identical(other.subraces, subraces) ||
                const DeepCollectionEquality().equals(
                  other.subraces,
                  subraces,
                )) &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality().equals(
                  other.updatedAt,
                  updatedAt,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(speed) ^
      const DeepCollectionEquality().hash(abilityBonuses) ^
      const DeepCollectionEquality().hash(alignment) ^
      const DeepCollectionEquality().hash(age) ^
      const DeepCollectionEquality().hash(size) ^
      const DeepCollectionEquality().hash(sizeDescription) ^
      const DeepCollectionEquality().hash(startingProficiencies) ^
      const DeepCollectionEquality().hash(startingProficiencyOptions) ^
      const DeepCollectionEquality().hash(languages) ^
      const DeepCollectionEquality().hash(languageDesc) ^
      const DeepCollectionEquality().hash(traits) ^
      const DeepCollectionEquality().hash(subraces) ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $RaceExtension on Race {
  Race copyWith({
    double? speed,
    List<AbilityBonus>? abilityBonuses,
    String? alignment,
    String? age,
    String? size,
    String? sizeDescription,
    List<APIReference>? startingProficiencies,
    Choice? startingProficiencyOptions,
    List<APIReference>? languages,
    String? languageDesc,
    List<APIReference>? traits,
    List<APIReference>? subraces,
    String? index,
    String? name,
    String? url,
    String? updatedAt,
  }) {
    return Race(
      speed: speed ?? this.speed,
      abilityBonuses: abilityBonuses ?? this.abilityBonuses,
      alignment: alignment ?? this.alignment,
      age: age ?? this.age,
      size: size ?? this.size,
      sizeDescription: sizeDescription ?? this.sizeDescription,
      startingProficiencies:
          startingProficiencies ?? this.startingProficiencies,
      startingProficiencyOptions:
          startingProficiencyOptions ?? this.startingProficiencyOptions,
      languages: languages ?? this.languages,
      languageDesc: languageDesc ?? this.languageDesc,
      traits: traits ?? this.traits,
      subraces: subraces ?? this.subraces,
      index: index ?? this.index,
      name: name ?? this.name,
      url: url ?? this.url,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  Race copyWithWrapped({
    Wrapped<double?>? speed,
    Wrapped<List<AbilityBonus>?>? abilityBonuses,
    Wrapped<String?>? alignment,
    Wrapped<String?>? age,
    Wrapped<String?>? size,
    Wrapped<String?>? sizeDescription,
    Wrapped<List<APIReference>?>? startingProficiencies,
    Wrapped<Choice?>? startingProficiencyOptions,
    Wrapped<List<APIReference>?>? languages,
    Wrapped<String?>? languageDesc,
    Wrapped<List<APIReference>?>? traits,
    Wrapped<List<APIReference>?>? subraces,
    Wrapped<String?>? index,
    Wrapped<String?>? name,
    Wrapped<String?>? url,
    Wrapped<String?>? updatedAt,
  }) {
    return Race(
      speed: (speed != null ? speed.value : this.speed),
      abilityBonuses: (abilityBonuses != null
          ? abilityBonuses.value
          : this.abilityBonuses),
      alignment: (alignment != null ? alignment.value : this.alignment),
      age: (age != null ? age.value : this.age),
      size: (size != null ? size.value : this.size),
      sizeDescription: (sizeDescription != null
          ? sizeDescription.value
          : this.sizeDescription),
      startingProficiencies: (startingProficiencies != null
          ? startingProficiencies.value
          : this.startingProficiencies),
      startingProficiencyOptions: (startingProficiencyOptions != null
          ? startingProficiencyOptions.value
          : this.startingProficiencyOptions),
      languages: (languages != null ? languages.value : this.languages),
      languageDesc: (languageDesc != null
          ? languageDesc.value
          : this.languageDesc),
      traits: (traits != null ? traits.value : this.traits),
      subraces: (subraces != null ? subraces.value : this.subraces),
      index: (index != null ? index.value : this.index),
      name: (name != null ? name.value : this.name),
      url: (url != null ? url.value : this.url),
      updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AbilityBonus {
  const AbilityBonus({this.bonus, this.abilityScore});

  factory AbilityBonus.fromJson(Map<String, dynamic> json) =>
      _$AbilityBonusFromJson(json);

  static const toJsonFactory = _$AbilityBonusToJson;
  Map<String, dynamic> toJson() => _$AbilityBonusToJson(this);

  @JsonKey(name: 'bonus', includeIfNull: false)
  final double? bonus;
  @JsonKey(name: 'ability_score', includeIfNull: false)
  final APIReference? abilityScore;
  static const fromJsonFactory = _$AbilityBonusFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AbilityBonus &&
            (identical(other.bonus, bonus) ||
                const DeepCollectionEquality().equals(other.bonus, bonus)) &&
            (identical(other.abilityScore, abilityScore) ||
                const DeepCollectionEquality().equals(
                  other.abilityScore,
                  abilityScore,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(bonus) ^
      const DeepCollectionEquality().hash(abilityScore) ^
      runtimeType.hashCode;
}

extension $AbilityBonusExtension on AbilityBonus {
  AbilityBonus copyWith({double? bonus, APIReference? abilityScore}) {
    return AbilityBonus(
      bonus: bonus ?? this.bonus,
      abilityScore: abilityScore ?? this.abilityScore,
    );
  }

  AbilityBonus copyWithWrapped({
    Wrapped<double?>? bonus,
    Wrapped<APIReference?>? abilityScore,
  }) {
    return AbilityBonus(
      bonus: (bonus != null ? bonus.value : this.bonus),
      abilityScore: (abilityScore != null
          ? abilityScore.value
          : this.abilityScore),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class Spell {
  const Spell({
    this.higherLevel,
    this.range,
    this.components,
    this.material,
    this.areaOfEffect,
    this.ritual,
    this.duration,
    this.concentration,
    this.castingTime,
    this.level,
    this.attackType,
    this.damage,
    this.school,
    this.classes,
    this.subclasses,
    this.index,
    this.name,
    this.url,
    this.updatedAt,
    this.desc,
  });

  factory Spell.fromJson(Map<String, dynamic> json) => _$SpellFromJson(json);

  static const toJsonFactory = _$SpellToJson;
  Map<String, dynamic> toJson() => _$SpellToJson(this);

  @JsonKey(name: 'higher_level', includeIfNull: false, defaultValue: <String>[])
  final List<String>? higherLevel;
  @JsonKey(name: 'range', includeIfNull: false)
  final String? range;
  @JsonKey(
    name: 'components',
    includeIfNull: false,
    toJson: spellComponentsListToJson,
    fromJson: spellComponentsListFromJson,
  )
  final List<enums.SpellComponents>? components;
  @JsonKey(name: 'material', includeIfNull: false)
  final String? material;
  @JsonKey(name: 'area_of_effect', includeIfNull: false)
  final AreaOfEffect? areaOfEffect;
  @JsonKey(name: 'ritual', includeIfNull: false)
  final bool? ritual;
  @JsonKey(name: 'duration', includeIfNull: false)
  final String? duration;
  @JsonKey(name: 'concentration', includeIfNull: false)
  final bool? concentration;
  @JsonKey(name: 'casting_time', includeIfNull: false)
  final String? castingTime;
  @JsonKey(name: 'level', includeIfNull: false)
  final double? level;
  @JsonKey(name: 'attack_type', includeIfNull: false)
  final String? attackType;
  @JsonKey(name: 'damage', includeIfNull: false)
  final dynamic damage;
  @JsonKey(name: 'school', includeIfNull: false)
  final APIReference? school;
  @JsonKey(
    name: 'classes',
    includeIfNull: false,
    defaultValue: <APIReference>[],
  )
  final List<APIReference>? classes;
  @JsonKey(
    name: 'subclasses',
    includeIfNull: false,
    defaultValue: <APIReference>[],
  )
  final List<APIReference>? subclasses;
  @JsonKey(name: 'index', includeIfNull: false)
  final String? index;
  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  @JsonKey(name: 'url', includeIfNull: false)
  final String? url;
  @JsonKey(name: 'updated_at', includeIfNull: false)
  final String? updatedAt;
  @JsonKey(name: 'desc', includeIfNull: false, defaultValue: <String>[])
  final List<String>? desc;
  static const fromJsonFactory = _$SpellFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is Spell &&
            (identical(other.higherLevel, higherLevel) ||
                const DeepCollectionEquality().equals(
                  other.higherLevel,
                  higherLevel,
                )) &&
            (identical(other.range, range) ||
                const DeepCollectionEquality().equals(other.range, range)) &&
            (identical(other.components, components) ||
                const DeepCollectionEquality().equals(
                  other.components,
                  components,
                )) &&
            (identical(other.material, material) ||
                const DeepCollectionEquality().equals(
                  other.material,
                  material,
                )) &&
            (identical(other.areaOfEffect, areaOfEffect) ||
                const DeepCollectionEquality().equals(
                  other.areaOfEffect,
                  areaOfEffect,
                )) &&
            (identical(other.ritual, ritual) ||
                const DeepCollectionEquality().equals(other.ritual, ritual)) &&
            (identical(other.duration, duration) ||
                const DeepCollectionEquality().equals(
                  other.duration,
                  duration,
                )) &&
            (identical(other.concentration, concentration) ||
                const DeepCollectionEquality().equals(
                  other.concentration,
                  concentration,
                )) &&
            (identical(other.castingTime, castingTime) ||
                const DeepCollectionEquality().equals(
                  other.castingTime,
                  castingTime,
                )) &&
            (identical(other.level, level) ||
                const DeepCollectionEquality().equals(other.level, level)) &&
            (identical(other.attackType, attackType) ||
                const DeepCollectionEquality().equals(
                  other.attackType,
                  attackType,
                )) &&
            (identical(other.damage, damage) ||
                const DeepCollectionEquality().equals(other.damage, damage)) &&
            (identical(other.school, school) ||
                const DeepCollectionEquality().equals(other.school, school)) &&
            (identical(other.classes, classes) ||
                const DeepCollectionEquality().equals(
                  other.classes,
                  classes,
                )) &&
            (identical(other.subclasses, subclasses) ||
                const DeepCollectionEquality().equals(
                  other.subclasses,
                  subclasses,
                )) &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality().equals(
                  other.updatedAt,
                  updatedAt,
                )) &&
            (identical(other.desc, desc) ||
                const DeepCollectionEquality().equals(other.desc, desc)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(higherLevel) ^
      const DeepCollectionEquality().hash(range) ^
      const DeepCollectionEquality().hash(components) ^
      const DeepCollectionEquality().hash(material) ^
      const DeepCollectionEquality().hash(areaOfEffect) ^
      const DeepCollectionEquality().hash(ritual) ^
      const DeepCollectionEquality().hash(duration) ^
      const DeepCollectionEquality().hash(concentration) ^
      const DeepCollectionEquality().hash(castingTime) ^
      const DeepCollectionEquality().hash(level) ^
      const DeepCollectionEquality().hash(attackType) ^
      const DeepCollectionEquality().hash(damage) ^
      const DeepCollectionEquality().hash(school) ^
      const DeepCollectionEquality().hash(classes) ^
      const DeepCollectionEquality().hash(subclasses) ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(desc) ^
      runtimeType.hashCode;
}

extension $SpellExtension on Spell {
  Spell copyWith({
    List<String>? higherLevel,
    String? range,
    List<enums.SpellComponents>? components,
    String? material,
    AreaOfEffect? areaOfEffect,
    bool? ritual,
    String? duration,
    bool? concentration,
    String? castingTime,
    double? level,
    String? attackType,
    dynamic damage,
    APIReference? school,
    List<APIReference>? classes,
    List<APIReference>? subclasses,
    String? index,
    String? name,
    String? url,
    String? updatedAt,
    List<String>? desc,
  }) {
    return Spell(
      higherLevel: higherLevel ?? this.higherLevel,
      range: range ?? this.range,
      components: components ?? this.components,
      material: material ?? this.material,
      areaOfEffect: areaOfEffect ?? this.areaOfEffect,
      ritual: ritual ?? this.ritual,
      duration: duration ?? this.duration,
      concentration: concentration ?? this.concentration,
      castingTime: castingTime ?? this.castingTime,
      level: level ?? this.level,
      attackType: attackType ?? this.attackType,
      damage: damage ?? this.damage,
      school: school ?? this.school,
      classes: classes ?? this.classes,
      subclasses: subclasses ?? this.subclasses,
      index: index ?? this.index,
      name: name ?? this.name,
      url: url ?? this.url,
      updatedAt: updatedAt ?? this.updatedAt,
      desc: desc ?? this.desc,
    );
  }

  Spell copyWithWrapped({
    Wrapped<List<String>?>? higherLevel,
    Wrapped<String?>? range,
    Wrapped<List<enums.SpellComponents>?>? components,
    Wrapped<String?>? material,
    Wrapped<AreaOfEffect?>? areaOfEffect,
    Wrapped<bool?>? ritual,
    Wrapped<String?>? duration,
    Wrapped<bool?>? concentration,
    Wrapped<String?>? castingTime,
    Wrapped<double?>? level,
    Wrapped<String?>? attackType,
    Wrapped<dynamic>? damage,
    Wrapped<APIReference?>? school,
    Wrapped<List<APIReference>?>? classes,
    Wrapped<List<APIReference>?>? subclasses,
    Wrapped<String?>? index,
    Wrapped<String?>? name,
    Wrapped<String?>? url,
    Wrapped<String?>? updatedAt,
    Wrapped<List<String>?>? desc,
  }) {
    return Spell(
      higherLevel: (higherLevel != null ? higherLevel.value : this.higherLevel),
      range: (range != null ? range.value : this.range),
      components: (components != null ? components.value : this.components),
      material: (material != null ? material.value : this.material),
      areaOfEffect: (areaOfEffect != null
          ? areaOfEffect.value
          : this.areaOfEffect),
      ritual: (ritual != null ? ritual.value : this.ritual),
      duration: (duration != null ? duration.value : this.duration),
      concentration: (concentration != null
          ? concentration.value
          : this.concentration),
      castingTime: (castingTime != null ? castingTime.value : this.castingTime),
      level: (level != null ? level.value : this.level),
      attackType: (attackType != null ? attackType.value : this.attackType),
      damage: (damage != null ? damage.value : this.damage),
      school: (school != null ? school.value : this.school),
      classes: (classes != null ? classes.value : this.classes),
      subclasses: (subclasses != null ? subclasses.value : this.subclasses),
      index: (index != null ? index.value : this.index),
      name: (name != null ? name.value : this.name),
      url: (url != null ? url.value : this.url),
      updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
      desc: (desc != null ? desc.value : this.desc),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class Subrace {
  const Subrace({
    this.desc,
    this.race,
    this.abilityBonuses,
    this.startingProficiencies,
    this.languages,
    this.languageOptions,
    this.racialTraits,
    this.index,
    this.name,
    this.url,
    this.updatedAt,
  });

  factory Subrace.fromJson(Map<String, dynamic> json) =>
      _$SubraceFromJson(json);

  static const toJsonFactory = _$SubraceToJson;
  Map<String, dynamic> toJson() => _$SubraceToJson(this);

  @JsonKey(name: 'desc', includeIfNull: false)
  final String? desc;
  @JsonKey(name: 'race', includeIfNull: false)
  final APIReference? race;
  @JsonKey(
    name: 'ability_bonuses',
    includeIfNull: false,
    defaultValue: <AbilityBonus>[],
  )
  final List<AbilityBonus>? abilityBonuses;
  @JsonKey(
    name: 'starting_proficiencies',
    includeIfNull: false,
    defaultValue: <APIReference>[],
  )
  final List<APIReference>? startingProficiencies;
  @JsonKey(
    name: 'languages',
    includeIfNull: false,
    defaultValue: <APIReference>[],
  )
  final List<APIReference>? languages;
  @JsonKey(name: 'language_options', includeIfNull: false)
  final Choice? languageOptions;
  @JsonKey(
    name: 'racial_traits',
    includeIfNull: false,
    defaultValue: <APIReference>[],
  )
  final List<APIReference>? racialTraits;
  @JsonKey(name: 'index', includeIfNull: false)
  final String? index;
  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  @JsonKey(name: 'url', includeIfNull: false)
  final String? url;
  @JsonKey(name: 'updated_at', includeIfNull: false)
  final String? updatedAt;
  static const fromJsonFactory = _$SubraceFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is Subrace &&
            (identical(other.desc, desc) ||
                const DeepCollectionEquality().equals(other.desc, desc)) &&
            (identical(other.race, race) ||
                const DeepCollectionEquality().equals(other.race, race)) &&
            (identical(other.abilityBonuses, abilityBonuses) ||
                const DeepCollectionEquality().equals(
                  other.abilityBonuses,
                  abilityBonuses,
                )) &&
            (identical(other.startingProficiencies, startingProficiencies) ||
                const DeepCollectionEquality().equals(
                  other.startingProficiencies,
                  startingProficiencies,
                )) &&
            (identical(other.languages, languages) ||
                const DeepCollectionEquality().equals(
                  other.languages,
                  languages,
                )) &&
            (identical(other.languageOptions, languageOptions) ||
                const DeepCollectionEquality().equals(
                  other.languageOptions,
                  languageOptions,
                )) &&
            (identical(other.racialTraits, racialTraits) ||
                const DeepCollectionEquality().equals(
                  other.racialTraits,
                  racialTraits,
                )) &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality().equals(
                  other.updatedAt,
                  updatedAt,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(desc) ^
      const DeepCollectionEquality().hash(race) ^
      const DeepCollectionEquality().hash(abilityBonuses) ^
      const DeepCollectionEquality().hash(startingProficiencies) ^
      const DeepCollectionEquality().hash(languages) ^
      const DeepCollectionEquality().hash(languageOptions) ^
      const DeepCollectionEquality().hash(racialTraits) ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $SubraceExtension on Subrace {
  Subrace copyWith({
    String? desc,
    APIReference? race,
    List<AbilityBonus>? abilityBonuses,
    List<APIReference>? startingProficiencies,
    List<APIReference>? languages,
    Choice? languageOptions,
    List<APIReference>? racialTraits,
    String? index,
    String? name,
    String? url,
    String? updatedAt,
  }) {
    return Subrace(
      desc: desc ?? this.desc,
      race: race ?? this.race,
      abilityBonuses: abilityBonuses ?? this.abilityBonuses,
      startingProficiencies:
          startingProficiencies ?? this.startingProficiencies,
      languages: languages ?? this.languages,
      languageOptions: languageOptions ?? this.languageOptions,
      racialTraits: racialTraits ?? this.racialTraits,
      index: index ?? this.index,
      name: name ?? this.name,
      url: url ?? this.url,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  Subrace copyWithWrapped({
    Wrapped<String?>? desc,
    Wrapped<APIReference?>? race,
    Wrapped<List<AbilityBonus>?>? abilityBonuses,
    Wrapped<List<APIReference>?>? startingProficiencies,
    Wrapped<List<APIReference>?>? languages,
    Wrapped<Choice?>? languageOptions,
    Wrapped<List<APIReference>?>? racialTraits,
    Wrapped<String?>? index,
    Wrapped<String?>? name,
    Wrapped<String?>? url,
    Wrapped<String?>? updatedAt,
  }) {
    return Subrace(
      desc: (desc != null ? desc.value : this.desc),
      race: (race != null ? race.value : this.race),
      abilityBonuses: (abilityBonuses != null
          ? abilityBonuses.value
          : this.abilityBonuses),
      startingProficiencies: (startingProficiencies != null
          ? startingProficiencies.value
          : this.startingProficiencies),
      languages: (languages != null ? languages.value : this.languages),
      languageOptions: (languageOptions != null
          ? languageOptions.value
          : this.languageOptions),
      racialTraits: (racialTraits != null
          ? racialTraits.value
          : this.racialTraits),
      index: (index != null ? index.value : this.index),
      name: (name != null ? name.value : this.name),
      url: (url != null ? url.value : this.url),
      updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class Trait {
  const Trait({
    this.races,
    this.subraces,
    this.proficiencies,
    this.proficiencyChoices,
    this.languageOptions,
    this.traitSpecific,
    this.index,
    this.name,
    this.url,
    this.updatedAt,
    this.desc,
  });

  factory Trait.fromJson(Map<String, dynamic> json) => _$TraitFromJson(json);

  static const toJsonFactory = _$TraitToJson;
  Map<String, dynamic> toJson() => _$TraitToJson(this);

  @JsonKey(name: 'races', includeIfNull: false, defaultValue: <APIReference>[])
  final List<APIReference>? races;
  @JsonKey(
    name: 'subraces',
    includeIfNull: false,
    defaultValue: <APIReference>[],
  )
  final List<APIReference>? subraces;
  @JsonKey(
    name: 'proficiencies',
    includeIfNull: false,
    defaultValue: <APIReference>[],
  )
  final List<APIReference>? proficiencies;
  @JsonKey(name: 'proficiency_choices', includeIfNull: false)
  final Choice? proficiencyChoices;
  @JsonKey(name: 'language_options', includeIfNull: false)
  final Choice? languageOptions;
  @JsonKey(name: 'trait_specific', includeIfNull: false)
  final dynamic traitSpecific;
  @JsonKey(name: 'index', includeIfNull: false)
  final String? index;
  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  @JsonKey(name: 'url', includeIfNull: false)
  final String? url;
  @JsonKey(name: 'updated_at', includeIfNull: false)
  final String? updatedAt;
  @JsonKey(name: 'desc', includeIfNull: false, defaultValue: <String>[])
  final List<String>? desc;
  static const fromJsonFactory = _$TraitFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is Trait &&
            (identical(other.races, races) ||
                const DeepCollectionEquality().equals(other.races, races)) &&
            (identical(other.subraces, subraces) ||
                const DeepCollectionEquality().equals(
                  other.subraces,
                  subraces,
                )) &&
            (identical(other.proficiencies, proficiencies) ||
                const DeepCollectionEquality().equals(
                  other.proficiencies,
                  proficiencies,
                )) &&
            (identical(other.proficiencyChoices, proficiencyChoices) ||
                const DeepCollectionEquality().equals(
                  other.proficiencyChoices,
                  proficiencyChoices,
                )) &&
            (identical(other.languageOptions, languageOptions) ||
                const DeepCollectionEquality().equals(
                  other.languageOptions,
                  languageOptions,
                )) &&
            (identical(other.traitSpecific, traitSpecific) ||
                const DeepCollectionEquality().equals(
                  other.traitSpecific,
                  traitSpecific,
                )) &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality().equals(
                  other.updatedAt,
                  updatedAt,
                )) &&
            (identical(other.desc, desc) ||
                const DeepCollectionEquality().equals(other.desc, desc)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(races) ^
      const DeepCollectionEquality().hash(subraces) ^
      const DeepCollectionEquality().hash(proficiencies) ^
      const DeepCollectionEquality().hash(proficiencyChoices) ^
      const DeepCollectionEquality().hash(languageOptions) ^
      const DeepCollectionEquality().hash(traitSpecific) ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(desc) ^
      runtimeType.hashCode;
}

extension $TraitExtension on Trait {
  Trait copyWith({
    List<APIReference>? races,
    List<APIReference>? subraces,
    List<APIReference>? proficiencies,
    Choice? proficiencyChoices,
    Choice? languageOptions,
    dynamic traitSpecific,
    String? index,
    String? name,
    String? url,
    String? updatedAt,
    List<String>? desc,
  }) {
    return Trait(
      races: races ?? this.races,
      subraces: subraces ?? this.subraces,
      proficiencies: proficiencies ?? this.proficiencies,
      proficiencyChoices: proficiencyChoices ?? this.proficiencyChoices,
      languageOptions: languageOptions ?? this.languageOptions,
      traitSpecific: traitSpecific ?? this.traitSpecific,
      index: index ?? this.index,
      name: name ?? this.name,
      url: url ?? this.url,
      updatedAt: updatedAt ?? this.updatedAt,
      desc: desc ?? this.desc,
    );
  }

  Trait copyWithWrapped({
    Wrapped<List<APIReference>?>? races,
    Wrapped<List<APIReference>?>? subraces,
    Wrapped<List<APIReference>?>? proficiencies,
    Wrapped<Choice?>? proficiencyChoices,
    Wrapped<Choice?>? languageOptions,
    Wrapped<dynamic>? traitSpecific,
    Wrapped<String?>? index,
    Wrapped<String?>? name,
    Wrapped<String?>? url,
    Wrapped<String?>? updatedAt,
    Wrapped<List<String>?>? desc,
  }) {
    return Trait(
      races: (races != null ? races.value : this.races),
      subraces: (subraces != null ? subraces.value : this.subraces),
      proficiencies: (proficiencies != null
          ? proficiencies.value
          : this.proficiencies),
      proficiencyChoices: (proficiencyChoices != null
          ? proficiencyChoices.value
          : this.proficiencyChoices),
      languageOptions: (languageOptions != null
          ? languageOptions.value
          : this.languageOptions),
      traitSpecific: (traitSpecific != null
          ? traitSpecific.value
          : this.traitSpecific),
      index: (index != null ? index.value : this.index),
      name: (name != null ? name.value : this.name),
      url: (url != null ? url.value : this.url),
      updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
      desc: (desc != null ? desc.value : this.desc),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class WeaponProperty {
  const WeaponProperty({
    this.index,
    this.name,
    this.url,
    this.updatedAt,
    this.desc,
  });

  factory WeaponProperty.fromJson(Map<String, dynamic> json) =>
      _$WeaponPropertyFromJson(json);

  static const toJsonFactory = _$WeaponPropertyToJson;
  Map<String, dynamic> toJson() => _$WeaponPropertyToJson(this);

  @JsonKey(name: 'index', includeIfNull: false)
  final String? index;
  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  @JsonKey(name: 'url', includeIfNull: false)
  final String? url;
  @JsonKey(name: 'updated_at', includeIfNull: false)
  final String? updatedAt;
  @JsonKey(name: 'desc', includeIfNull: false, defaultValue: <String>[])
  final List<String>? desc;
  static const fromJsonFactory = _$WeaponPropertyFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is WeaponProperty &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality().equals(
                  other.updatedAt,
                  updatedAt,
                )) &&
            (identical(other.desc, desc) ||
                const DeepCollectionEquality().equals(other.desc, desc)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(desc) ^
      runtimeType.hashCode;
}

extension $WeaponPropertyExtension on WeaponProperty {
  WeaponProperty copyWith({
    String? index,
    String? name,
    String? url,
    String? updatedAt,
    List<String>? desc,
  }) {
    return WeaponProperty(
      index: index ?? this.index,
      name: name ?? this.name,
      url: url ?? this.url,
      updatedAt: updatedAt ?? this.updatedAt,
      desc: desc ?? this.desc,
    );
  }

  WeaponProperty copyWithWrapped({
    Wrapped<String?>? index,
    Wrapped<String?>? name,
    Wrapped<String?>? url,
    Wrapped<String?>? updatedAt,
    Wrapped<List<String>?>? desc,
  }) {
    return WeaponProperty(
      index: (index != null ? index.value : this.index),
      name: (name != null ? name.value : this.name),
      url: (url != null ? url.value : this.url),
      updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
      desc: (desc != null ? desc.value : this.desc),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class Rule {
  const Rule({
    this.desc,
    this.subsections,
    this.index,
    this.name,
    this.url,
    this.updatedAt,
  });

  factory Rule.fromJson(Map<String, dynamic> json) => _$RuleFromJson(json);

  static const toJsonFactory = _$RuleToJson;
  Map<String, dynamic> toJson() => _$RuleToJson(this);

  @JsonKey(name: 'desc', includeIfNull: false)
  final String? desc;
  @JsonKey(
    name: 'subsections',
    includeIfNull: false,
    defaultValue: <APIReference>[],
  )
  final List<APIReference>? subsections;
  @JsonKey(name: 'index', includeIfNull: false)
  final String? index;
  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  @JsonKey(name: 'url', includeIfNull: false)
  final String? url;
  @JsonKey(name: 'updated_at', includeIfNull: false)
  final String? updatedAt;
  static const fromJsonFactory = _$RuleFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is Rule &&
            (identical(other.desc, desc) ||
                const DeepCollectionEquality().equals(other.desc, desc)) &&
            (identical(other.subsections, subsections) ||
                const DeepCollectionEquality().equals(
                  other.subsections,
                  subsections,
                )) &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality().equals(
                  other.updatedAt,
                  updatedAt,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(desc) ^
      const DeepCollectionEquality().hash(subsections) ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $RuleExtension on Rule {
  Rule copyWith({
    String? desc,
    List<APIReference>? subsections,
    String? index,
    String? name,
    String? url,
    String? updatedAt,
  }) {
    return Rule(
      desc: desc ?? this.desc,
      subsections: subsections ?? this.subsections,
      index: index ?? this.index,
      name: name ?? this.name,
      url: url ?? this.url,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  Rule copyWithWrapped({
    Wrapped<String?>? desc,
    Wrapped<List<APIReference>?>? subsections,
    Wrapped<String?>? index,
    Wrapped<String?>? name,
    Wrapped<String?>? url,
    Wrapped<String?>? updatedAt,
  }) {
    return Rule(
      desc: (desc != null ? desc.value : this.desc),
      subsections: (subsections != null ? subsections.value : this.subsections),
      index: (index != null ? index.value : this.index),
      name: (name != null ? name.value : this.name),
      url: (url != null ? url.value : this.url),
      updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class RuleSection {
  const RuleSection({
    this.desc,
    this.index,
    this.name,
    this.url,
    this.updatedAt,
  });

  factory RuleSection.fromJson(Map<String, dynamic> json) =>
      _$RuleSectionFromJson(json);

  static const toJsonFactory = _$RuleSectionToJson;
  Map<String, dynamic> toJson() => _$RuleSectionToJson(this);

  @JsonKey(name: 'desc', includeIfNull: false)
  final String? desc;
  @JsonKey(name: 'index', includeIfNull: false)
  final String? index;
  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  @JsonKey(name: 'url', includeIfNull: false)
  final String? url;
  @JsonKey(name: 'updated_at', includeIfNull: false)
  final String? updatedAt;
  static const fromJsonFactory = _$RuleSectionFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is RuleSection &&
            (identical(other.desc, desc) ||
                const DeepCollectionEquality().equals(other.desc, desc)) &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality().equals(
                  other.updatedAt,
                  updatedAt,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(desc) ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $RuleSectionExtension on RuleSection {
  RuleSection copyWith({
    String? desc,
    String? index,
    String? name,
    String? url,
    String? updatedAt,
  }) {
    return RuleSection(
      desc: desc ?? this.desc,
      index: index ?? this.index,
      name: name ?? this.name,
      url: url ?? this.url,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  RuleSection copyWithWrapped({
    Wrapped<String?>? desc,
    Wrapped<String?>? index,
    Wrapped<String?>? name,
    Wrapped<String?>? url,
    Wrapped<String?>? updatedAt,
  }) {
    return RuleSection(
      desc: (desc != null ? desc.value : this.desc),
      index: (index != null ? index.value : this.index),
      name: (name != null ? name.value : this.name),
      url: (url != null ? url.value : this.url),
      updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class Monster {
  const Monster({
    this.image,
    this.size,
    this.type,
    this.subtype,
    this.alignment,
    this.armorClass,
    this.hitPoints,
    this.hitDice,
    this.hitPointsRoll,
    this.actions,
    this.legendaryActions,
    this.challengeRating,
    this.proficiencyBonus,
    this.conditionImmunities,
    this.damageImmunities,
    this.damageResistances,
    this.damageVulnerabilities,
    this.forms,
    this.languages,
    this.proficiencies,
    this.reactions,
    this.senses,
    this.specialAbilities,
    this.speed,
    this.xp,
    this.index,
    this.name,
    this.url,
    this.updatedAt,
    this.desc,
    this.charisma,
    this.constitution,
    this.dexterity,
    this.intelligence,
    this.strength,
    this.wisdom,
  });

  factory Monster.fromJson(Map<String, dynamic> json) =>
      _$MonsterFromJson(json);

  static const toJsonFactory = _$MonsterToJson;
  Map<String, dynamic> toJson() => _$MonsterToJson(this);

  @JsonKey(name: 'image', includeIfNull: false)
  final String? image;
  @JsonKey(
    name: 'size',
    includeIfNull: false,
    toJson: monsterSizeNullableToJson,
    fromJson: monsterSizeNullableFromJson,
  )
  final enums.MonsterSize? size;
  @JsonKey(name: 'type', includeIfNull: false)
  final String? type;
  @JsonKey(name: 'subtype', includeIfNull: false)
  final String? subtype;
  @JsonKey(name: 'alignment', includeIfNull: false)
  final String? alignment;
  @JsonKey(
    name: 'armor_class',
    includeIfNull: false,
    defaultValue: <MonsterArmorClass>[],
  )
  final List<MonsterArmorClass>? armorClass;
  @JsonKey(name: 'hit_points', includeIfNull: false)
  final double? hitPoints;
  @JsonKey(name: 'hit_dice', includeIfNull: false)
  final String? hitDice;
  @JsonKey(name: 'hit_points_roll', includeIfNull: false)
  final String? hitPointsRoll;
  @JsonKey(
    name: 'actions',
    includeIfNull: false,
    defaultValue: <MonsterAction>[],
  )
  final List<MonsterAction>? actions;
  @JsonKey(
    name: 'legendary_actions',
    includeIfNull: false,
    defaultValue: <MonsterAction>[],
  )
  final List<MonsterAction>? legendaryActions;
  @JsonKey(name: 'challenge_rating', includeIfNull: false)
  final double? challengeRating;
  @JsonKey(name: 'proficiency_bonus', includeIfNull: false)
  final double? proficiencyBonus;
  @JsonKey(
    name: 'condition_immunities',
    includeIfNull: false,
    defaultValue: <APIReference>[],
  )
  final List<APIReference>? conditionImmunities;
  @JsonKey(
    name: 'damage_immunities',
    includeIfNull: false,
    defaultValue: <String>[],
  )
  final List<String>? damageImmunities;
  @JsonKey(
    name: 'damage_resistances',
    includeIfNull: false,
    defaultValue: <String>[],
  )
  final List<String>? damageResistances;
  @JsonKey(
    name: 'damage_vulnerabilities',
    includeIfNull: false,
    defaultValue: <String>[],
  )
  final List<String>? damageVulnerabilities;
  @JsonKey(name: 'forms', includeIfNull: false, defaultValue: <APIReference>[])
  final List<APIReference>? forms;
  @JsonKey(name: 'languages', includeIfNull: false)
  final String? languages;
  @JsonKey(
    name: 'proficiencies',
    includeIfNull: false,
    defaultValue: <MonsterProficiency>[],
  )
  final List<MonsterProficiency>? proficiencies;
  @JsonKey(
    name: 'reactions',
    includeIfNull: false,
    defaultValue: <MonsterAction>[],
  )
  final List<MonsterAction>? reactions;
  @JsonKey(name: 'senses', includeIfNull: false)
  final MonsterSense? senses;
  @JsonKey(
    name: 'special_abilities',
    includeIfNull: false,
    defaultValue: <MonsterSpecialAbility>[],
  )
  final List<MonsterSpecialAbility>? specialAbilities;
  @JsonKey(name: 'speed', includeIfNull: false)
  final Monster$Speed? speed;
  @JsonKey(name: 'xp', includeIfNull: false)
  final double? xp;
  @JsonKey(name: 'index', includeIfNull: false)
  final String? index;
  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  @JsonKey(name: 'url', includeIfNull: false)
  final String? url;
  @JsonKey(name: 'updated_at', includeIfNull: false)
  final String? updatedAt;
  @JsonKey(name: 'desc', includeIfNull: false, defaultValue: <String>[])
  final List<String>? desc;
  @JsonKey(name: 'charisma', includeIfNull: false)
  final double? charisma;
  @JsonKey(name: 'constitution', includeIfNull: false)
  final double? constitution;
  @JsonKey(name: 'dexterity', includeIfNull: false)
  final double? dexterity;
  @JsonKey(name: 'intelligence', includeIfNull: false)
  final double? intelligence;
  @JsonKey(name: 'strength', includeIfNull: false)
  final double? strength;
  @JsonKey(name: 'wisdom', includeIfNull: false)
  final double? wisdom;
  static const fromJsonFactory = _$MonsterFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is Monster &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.size, size) ||
                const DeepCollectionEquality().equals(other.size, size)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.subtype, subtype) ||
                const DeepCollectionEquality().equals(
                  other.subtype,
                  subtype,
                )) &&
            (identical(other.alignment, alignment) ||
                const DeepCollectionEquality().equals(
                  other.alignment,
                  alignment,
                )) &&
            (identical(other.armorClass, armorClass) ||
                const DeepCollectionEquality().equals(
                  other.armorClass,
                  armorClass,
                )) &&
            (identical(other.hitPoints, hitPoints) ||
                const DeepCollectionEquality().equals(
                  other.hitPoints,
                  hitPoints,
                )) &&
            (identical(other.hitDice, hitDice) ||
                const DeepCollectionEquality().equals(
                  other.hitDice,
                  hitDice,
                )) &&
            (identical(other.hitPointsRoll, hitPointsRoll) ||
                const DeepCollectionEquality().equals(
                  other.hitPointsRoll,
                  hitPointsRoll,
                )) &&
            (identical(other.actions, actions) ||
                const DeepCollectionEquality().equals(
                  other.actions,
                  actions,
                )) &&
            (identical(other.legendaryActions, legendaryActions) ||
                const DeepCollectionEquality().equals(
                  other.legendaryActions,
                  legendaryActions,
                )) &&
            (identical(other.challengeRating, challengeRating) ||
                const DeepCollectionEquality().equals(
                  other.challengeRating,
                  challengeRating,
                )) &&
            (identical(other.proficiencyBonus, proficiencyBonus) ||
                const DeepCollectionEquality().equals(
                  other.proficiencyBonus,
                  proficiencyBonus,
                )) &&
            (identical(other.conditionImmunities, conditionImmunities) ||
                const DeepCollectionEquality().equals(
                  other.conditionImmunities,
                  conditionImmunities,
                )) &&
            (identical(other.damageImmunities, damageImmunities) ||
                const DeepCollectionEquality().equals(
                  other.damageImmunities,
                  damageImmunities,
                )) &&
            (identical(other.damageResistances, damageResistances) ||
                const DeepCollectionEquality().equals(
                  other.damageResistances,
                  damageResistances,
                )) &&
            (identical(other.damageVulnerabilities, damageVulnerabilities) ||
                const DeepCollectionEquality().equals(
                  other.damageVulnerabilities,
                  damageVulnerabilities,
                )) &&
            (identical(other.forms, forms) ||
                const DeepCollectionEquality().equals(other.forms, forms)) &&
            (identical(other.languages, languages) ||
                const DeepCollectionEquality().equals(
                  other.languages,
                  languages,
                )) &&
            (identical(other.proficiencies, proficiencies) ||
                const DeepCollectionEquality().equals(
                  other.proficiencies,
                  proficiencies,
                )) &&
            (identical(other.reactions, reactions) ||
                const DeepCollectionEquality().equals(
                  other.reactions,
                  reactions,
                )) &&
            (identical(other.senses, senses) ||
                const DeepCollectionEquality().equals(other.senses, senses)) &&
            (identical(other.specialAbilities, specialAbilities) ||
                const DeepCollectionEquality().equals(
                  other.specialAbilities,
                  specialAbilities,
                )) &&
            (identical(other.speed, speed) ||
                const DeepCollectionEquality().equals(other.speed, speed)) &&
            (identical(other.xp, xp) ||
                const DeepCollectionEquality().equals(other.xp, xp)) &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality().equals(
                  other.updatedAt,
                  updatedAt,
                )) &&
            (identical(other.desc, desc) ||
                const DeepCollectionEquality().equals(other.desc, desc)) &&
            (identical(other.charisma, charisma) ||
                const DeepCollectionEquality().equals(
                  other.charisma,
                  charisma,
                )) &&
            (identical(other.constitution, constitution) ||
                const DeepCollectionEquality().equals(
                  other.constitution,
                  constitution,
                )) &&
            (identical(other.dexterity, dexterity) ||
                const DeepCollectionEquality().equals(
                  other.dexterity,
                  dexterity,
                )) &&
            (identical(other.intelligence, intelligence) ||
                const DeepCollectionEquality().equals(
                  other.intelligence,
                  intelligence,
                )) &&
            (identical(other.strength, strength) ||
                const DeepCollectionEquality().equals(
                  other.strength,
                  strength,
                )) &&
            (identical(other.wisdom, wisdom) ||
                const DeepCollectionEquality().equals(other.wisdom, wisdom)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(size) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(subtype) ^
      const DeepCollectionEquality().hash(alignment) ^
      const DeepCollectionEquality().hash(armorClass) ^
      const DeepCollectionEquality().hash(hitPoints) ^
      const DeepCollectionEquality().hash(hitDice) ^
      const DeepCollectionEquality().hash(hitPointsRoll) ^
      const DeepCollectionEquality().hash(actions) ^
      const DeepCollectionEquality().hash(legendaryActions) ^
      const DeepCollectionEquality().hash(challengeRating) ^
      const DeepCollectionEquality().hash(proficiencyBonus) ^
      const DeepCollectionEquality().hash(conditionImmunities) ^
      const DeepCollectionEquality().hash(damageImmunities) ^
      const DeepCollectionEquality().hash(damageResistances) ^
      const DeepCollectionEquality().hash(damageVulnerabilities) ^
      const DeepCollectionEquality().hash(forms) ^
      const DeepCollectionEquality().hash(languages) ^
      const DeepCollectionEquality().hash(proficiencies) ^
      const DeepCollectionEquality().hash(reactions) ^
      const DeepCollectionEquality().hash(senses) ^
      const DeepCollectionEquality().hash(specialAbilities) ^
      const DeepCollectionEquality().hash(speed) ^
      const DeepCollectionEquality().hash(xp) ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(desc) ^
      const DeepCollectionEquality().hash(charisma) ^
      const DeepCollectionEquality().hash(constitution) ^
      const DeepCollectionEquality().hash(dexterity) ^
      const DeepCollectionEquality().hash(intelligence) ^
      const DeepCollectionEquality().hash(strength) ^
      const DeepCollectionEquality().hash(wisdom) ^
      runtimeType.hashCode;
}

extension $MonsterExtension on Monster {
  Monster copyWith({
    String? image,
    enums.MonsterSize? size,
    String? type,
    String? subtype,
    String? alignment,
    List<MonsterArmorClass>? armorClass,
    double? hitPoints,
    String? hitDice,
    String? hitPointsRoll,
    List<MonsterAction>? actions,
    List<MonsterAction>? legendaryActions,
    double? challengeRating,
    double? proficiencyBonus,
    List<APIReference>? conditionImmunities,
    List<String>? damageImmunities,
    List<String>? damageResistances,
    List<String>? damageVulnerabilities,
    List<APIReference>? forms,
    String? languages,
    List<MonsterProficiency>? proficiencies,
    List<MonsterAction>? reactions,
    MonsterSense? senses,
    List<MonsterSpecialAbility>? specialAbilities,
    Monster$Speed? speed,
    double? xp,
    String? index,
    String? name,
    String? url,
    String? updatedAt,
    List<String>? desc,
    double? charisma,
    double? constitution,
    double? dexterity,
    double? intelligence,
    double? strength,
    double? wisdom,
  }) {
    return Monster(
      image: image ?? this.image,
      size: size ?? this.size,
      type: type ?? this.type,
      subtype: subtype ?? this.subtype,
      alignment: alignment ?? this.alignment,
      armorClass: armorClass ?? this.armorClass,
      hitPoints: hitPoints ?? this.hitPoints,
      hitDice: hitDice ?? this.hitDice,
      hitPointsRoll: hitPointsRoll ?? this.hitPointsRoll,
      actions: actions ?? this.actions,
      legendaryActions: legendaryActions ?? this.legendaryActions,
      challengeRating: challengeRating ?? this.challengeRating,
      proficiencyBonus: proficiencyBonus ?? this.proficiencyBonus,
      conditionImmunities: conditionImmunities ?? this.conditionImmunities,
      damageImmunities: damageImmunities ?? this.damageImmunities,
      damageResistances: damageResistances ?? this.damageResistances,
      damageVulnerabilities:
          damageVulnerabilities ?? this.damageVulnerabilities,
      forms: forms ?? this.forms,
      languages: languages ?? this.languages,
      proficiencies: proficiencies ?? this.proficiencies,
      reactions: reactions ?? this.reactions,
      senses: senses ?? this.senses,
      specialAbilities: specialAbilities ?? this.specialAbilities,
      speed: speed ?? this.speed,
      xp: xp ?? this.xp,
      index: index ?? this.index,
      name: name ?? this.name,
      url: url ?? this.url,
      updatedAt: updatedAt ?? this.updatedAt,
      desc: desc ?? this.desc,
      charisma: charisma ?? this.charisma,
      constitution: constitution ?? this.constitution,
      dexterity: dexterity ?? this.dexterity,
      intelligence: intelligence ?? this.intelligence,
      strength: strength ?? this.strength,
      wisdom: wisdom ?? this.wisdom,
    );
  }

  Monster copyWithWrapped({
    Wrapped<String?>? image,
    Wrapped<enums.MonsterSize?>? size,
    Wrapped<String?>? type,
    Wrapped<String?>? subtype,
    Wrapped<String?>? alignment,
    Wrapped<List<MonsterArmorClass>?>? armorClass,
    Wrapped<double?>? hitPoints,
    Wrapped<String?>? hitDice,
    Wrapped<String?>? hitPointsRoll,
    Wrapped<List<MonsterAction>?>? actions,
    Wrapped<List<MonsterAction>?>? legendaryActions,
    Wrapped<double?>? challengeRating,
    Wrapped<double?>? proficiencyBonus,
    Wrapped<List<APIReference>?>? conditionImmunities,
    Wrapped<List<String>?>? damageImmunities,
    Wrapped<List<String>?>? damageResistances,
    Wrapped<List<String>?>? damageVulnerabilities,
    Wrapped<List<APIReference>?>? forms,
    Wrapped<String?>? languages,
    Wrapped<List<MonsterProficiency>?>? proficiencies,
    Wrapped<List<MonsterAction>?>? reactions,
    Wrapped<MonsterSense?>? senses,
    Wrapped<List<MonsterSpecialAbility>?>? specialAbilities,
    Wrapped<Monster$Speed?>? speed,
    Wrapped<double?>? xp,
    Wrapped<String?>? index,
    Wrapped<String?>? name,
    Wrapped<String?>? url,
    Wrapped<String?>? updatedAt,
    Wrapped<List<String>?>? desc,
    Wrapped<double?>? charisma,
    Wrapped<double?>? constitution,
    Wrapped<double?>? dexterity,
    Wrapped<double?>? intelligence,
    Wrapped<double?>? strength,
    Wrapped<double?>? wisdom,
  }) {
    return Monster(
      image: (image != null ? image.value : this.image),
      size: (size != null ? size.value : this.size),
      type: (type != null ? type.value : this.type),
      subtype: (subtype != null ? subtype.value : this.subtype),
      alignment: (alignment != null ? alignment.value : this.alignment),
      armorClass: (armorClass != null ? armorClass.value : this.armorClass),
      hitPoints: (hitPoints != null ? hitPoints.value : this.hitPoints),
      hitDice: (hitDice != null ? hitDice.value : this.hitDice),
      hitPointsRoll: (hitPointsRoll != null
          ? hitPointsRoll.value
          : this.hitPointsRoll),
      actions: (actions != null ? actions.value : this.actions),
      legendaryActions: (legendaryActions != null
          ? legendaryActions.value
          : this.legendaryActions),
      challengeRating: (challengeRating != null
          ? challengeRating.value
          : this.challengeRating),
      proficiencyBonus: (proficiencyBonus != null
          ? proficiencyBonus.value
          : this.proficiencyBonus),
      conditionImmunities: (conditionImmunities != null
          ? conditionImmunities.value
          : this.conditionImmunities),
      damageImmunities: (damageImmunities != null
          ? damageImmunities.value
          : this.damageImmunities),
      damageResistances: (damageResistances != null
          ? damageResistances.value
          : this.damageResistances),
      damageVulnerabilities: (damageVulnerabilities != null
          ? damageVulnerabilities.value
          : this.damageVulnerabilities),
      forms: (forms != null ? forms.value : this.forms),
      languages: (languages != null ? languages.value : this.languages),
      proficiencies: (proficiencies != null
          ? proficiencies.value
          : this.proficiencies),
      reactions: (reactions != null ? reactions.value : this.reactions),
      senses: (senses != null ? senses.value : this.senses),
      specialAbilities: (specialAbilities != null
          ? specialAbilities.value
          : this.specialAbilities),
      speed: (speed != null ? speed.value : this.speed),
      xp: (xp != null ? xp.value : this.xp),
      index: (index != null ? index.value : this.index),
      name: (name != null ? name.value : this.name),
      url: (url != null ? url.value : this.url),
      updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
      desc: (desc != null ? desc.value : this.desc),
      charisma: (charisma != null ? charisma.value : this.charisma),
      constitution: (constitution != null
          ? constitution.value
          : this.constitution),
      dexterity: (dexterity != null ? dexterity.value : this.dexterity),
      intelligence: (intelligence != null
          ? intelligence.value
          : this.intelligence),
      strength: (strength != null ? strength.value : this.strength),
      wisdom: (wisdom != null ? wisdom.value : this.wisdom),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class MonsterAbility {
  const MonsterAbility({
    this.charisma,
    this.constitution,
    this.dexterity,
    this.intelligence,
    this.strength,
    this.wisdom,
  });

  factory MonsterAbility.fromJson(Map<String, dynamic> json) =>
      _$MonsterAbilityFromJson(json);

  static const toJsonFactory = _$MonsterAbilityToJson;
  Map<String, dynamic> toJson() => _$MonsterAbilityToJson(this);

  @JsonKey(name: 'charisma', includeIfNull: false)
  final double? charisma;
  @JsonKey(name: 'constitution', includeIfNull: false)
  final double? constitution;
  @JsonKey(name: 'dexterity', includeIfNull: false)
  final double? dexterity;
  @JsonKey(name: 'intelligence', includeIfNull: false)
  final double? intelligence;
  @JsonKey(name: 'strength', includeIfNull: false)
  final double? strength;
  @JsonKey(name: 'wisdom', includeIfNull: false)
  final double? wisdom;
  static const fromJsonFactory = _$MonsterAbilityFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is MonsterAbility &&
            (identical(other.charisma, charisma) ||
                const DeepCollectionEquality().equals(
                  other.charisma,
                  charisma,
                )) &&
            (identical(other.constitution, constitution) ||
                const DeepCollectionEquality().equals(
                  other.constitution,
                  constitution,
                )) &&
            (identical(other.dexterity, dexterity) ||
                const DeepCollectionEquality().equals(
                  other.dexterity,
                  dexterity,
                )) &&
            (identical(other.intelligence, intelligence) ||
                const DeepCollectionEquality().equals(
                  other.intelligence,
                  intelligence,
                )) &&
            (identical(other.strength, strength) ||
                const DeepCollectionEquality().equals(
                  other.strength,
                  strength,
                )) &&
            (identical(other.wisdom, wisdom) ||
                const DeepCollectionEquality().equals(other.wisdom, wisdom)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(charisma) ^
      const DeepCollectionEquality().hash(constitution) ^
      const DeepCollectionEquality().hash(dexterity) ^
      const DeepCollectionEquality().hash(intelligence) ^
      const DeepCollectionEquality().hash(strength) ^
      const DeepCollectionEquality().hash(wisdom) ^
      runtimeType.hashCode;
}

extension $MonsterAbilityExtension on MonsterAbility {
  MonsterAbility copyWith({
    double? charisma,
    double? constitution,
    double? dexterity,
    double? intelligence,
    double? strength,
    double? wisdom,
  }) {
    return MonsterAbility(
      charisma: charisma ?? this.charisma,
      constitution: constitution ?? this.constitution,
      dexterity: dexterity ?? this.dexterity,
      intelligence: intelligence ?? this.intelligence,
      strength: strength ?? this.strength,
      wisdom: wisdom ?? this.wisdom,
    );
  }

  MonsterAbility copyWithWrapped({
    Wrapped<double?>? charisma,
    Wrapped<double?>? constitution,
    Wrapped<double?>? dexterity,
    Wrapped<double?>? intelligence,
    Wrapped<double?>? strength,
    Wrapped<double?>? wisdom,
  }) {
    return MonsterAbility(
      charisma: (charisma != null ? charisma.value : this.charisma),
      constitution: (constitution != null
          ? constitution.value
          : this.constitution),
      dexterity: (dexterity != null ? dexterity.value : this.dexterity),
      intelligence: (intelligence != null
          ? intelligence.value
          : this.intelligence),
      strength: (strength != null ? strength.value : this.strength),
      wisdom: (wisdom != null ? wisdom.value : this.wisdom),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class MonsterAction {
  const MonsterAction({
    this.name,
    this.desc,
    this.actionOptions,
    this.actions,
    this.options,
    this.multiattackType,
    this.attackBonus,
    this.dc,
    this.attacks,
    this.damage,
  });

  factory MonsterAction.fromJson(Map<String, dynamic> json) =>
      _$MonsterActionFromJson(json);

  static const toJsonFactory = _$MonsterActionToJson;
  Map<String, dynamic> toJson() => _$MonsterActionToJson(this);

  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  @JsonKey(name: 'desc', includeIfNull: false)
  final String? desc;
  @JsonKey(name: 'action_options', includeIfNull: false)
  final Choice? actionOptions;
  @JsonKey(
    name: 'actions',
    includeIfNull: false,
    defaultValue: <MonsterMultiAttackAction>[],
  )
  final List<MonsterMultiAttackAction>? actions;
  @JsonKey(name: 'options', includeIfNull: false)
  final Choice? options;
  @JsonKey(name: 'multiattack_type', includeIfNull: false)
  final String? multiattackType;
  @JsonKey(name: 'attack_bonus', includeIfNull: false)
  final double? attackBonus;
  @JsonKey(name: 'dc', includeIfNull: false)
  final Dc? dc;
  @JsonKey(
    name: 'attacks',
    includeIfNull: false,
    defaultValue: <MonsterAttack>[],
  )
  final List<MonsterAttack>? attacks;
  @JsonKey(name: 'damage', includeIfNull: false, defaultValue: <Damage>[])
  final List<Damage>? damage;
  static const fromJsonFactory = _$MonsterActionFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is MonsterAction &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.desc, desc) ||
                const DeepCollectionEquality().equals(other.desc, desc)) &&
            (identical(other.actionOptions, actionOptions) ||
                const DeepCollectionEquality().equals(
                  other.actionOptions,
                  actionOptions,
                )) &&
            (identical(other.actions, actions) ||
                const DeepCollectionEquality().equals(
                  other.actions,
                  actions,
                )) &&
            (identical(other.options, options) ||
                const DeepCollectionEquality().equals(
                  other.options,
                  options,
                )) &&
            (identical(other.multiattackType, multiattackType) ||
                const DeepCollectionEquality().equals(
                  other.multiattackType,
                  multiattackType,
                )) &&
            (identical(other.attackBonus, attackBonus) ||
                const DeepCollectionEquality().equals(
                  other.attackBonus,
                  attackBonus,
                )) &&
            (identical(other.dc, dc) ||
                const DeepCollectionEquality().equals(other.dc, dc)) &&
            (identical(other.attacks, attacks) ||
                const DeepCollectionEquality().equals(
                  other.attacks,
                  attacks,
                )) &&
            (identical(other.damage, damage) ||
                const DeepCollectionEquality().equals(other.damage, damage)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(desc) ^
      const DeepCollectionEquality().hash(actionOptions) ^
      const DeepCollectionEquality().hash(actions) ^
      const DeepCollectionEquality().hash(options) ^
      const DeepCollectionEquality().hash(multiattackType) ^
      const DeepCollectionEquality().hash(attackBonus) ^
      const DeepCollectionEquality().hash(dc) ^
      const DeepCollectionEquality().hash(attacks) ^
      const DeepCollectionEquality().hash(damage) ^
      runtimeType.hashCode;
}

extension $MonsterActionExtension on MonsterAction {
  MonsterAction copyWith({
    String? name,
    String? desc,
    Choice? actionOptions,
    List<MonsterMultiAttackAction>? actions,
    Choice? options,
    String? multiattackType,
    double? attackBonus,
    Dc? dc,
    List<MonsterAttack>? attacks,
    List<Damage>? damage,
  }) {
    return MonsterAction(
      name: name ?? this.name,
      desc: desc ?? this.desc,
      actionOptions: actionOptions ?? this.actionOptions,
      actions: actions ?? this.actions,
      options: options ?? this.options,
      multiattackType: multiattackType ?? this.multiattackType,
      attackBonus: attackBonus ?? this.attackBonus,
      dc: dc ?? this.dc,
      attacks: attacks ?? this.attacks,
      damage: damage ?? this.damage,
    );
  }

  MonsterAction copyWithWrapped({
    Wrapped<String?>? name,
    Wrapped<String?>? desc,
    Wrapped<Choice?>? actionOptions,
    Wrapped<List<MonsterMultiAttackAction>?>? actions,
    Wrapped<Choice?>? options,
    Wrapped<String?>? multiattackType,
    Wrapped<double?>? attackBonus,
    Wrapped<Dc?>? dc,
    Wrapped<List<MonsterAttack>?>? attacks,
    Wrapped<List<Damage>?>? damage,
  }) {
    return MonsterAction(
      name: (name != null ? name.value : this.name),
      desc: (desc != null ? desc.value : this.desc),
      actionOptions: (actionOptions != null
          ? actionOptions.value
          : this.actionOptions),
      actions: (actions != null ? actions.value : this.actions),
      options: (options != null ? options.value : this.options),
      multiattackType: (multiattackType != null
          ? multiattackType.value
          : this.multiattackType),
      attackBonus: (attackBonus != null ? attackBonus.value : this.attackBonus),
      dc: (dc != null ? dc.value : this.dc),
      attacks: (attacks != null ? attacks.value : this.attacks),
      damage: (damage != null ? damage.value : this.damage),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class MonsterArmorClass {
  const MonsterArmorClass();

  factory MonsterArmorClass.fromJson(Map<String, dynamic> json) =>
      _$MonsterArmorClassFromJson(json);

  static const toJsonFactory = _$MonsterArmorClassToJson;
  Map<String, dynamic> toJson() => _$MonsterArmorClassToJson(this);

  static const fromJsonFactory = _$MonsterArmorClassFromJson;

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode => runtimeType.hashCode;
}

@JsonSerializable(explicitToJson: true)
class MonsterAttack {
  const MonsterAttack({this.name, this.dc, this.damage});

  factory MonsterAttack.fromJson(Map<String, dynamic> json) =>
      _$MonsterAttackFromJson(json);

  static const toJsonFactory = _$MonsterAttackToJson;
  Map<String, dynamic> toJson() => _$MonsterAttackToJson(this);

  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  @JsonKey(name: 'dc', includeIfNull: false)
  final Dc? dc;
  @JsonKey(name: 'damage', includeIfNull: false)
  final Damage? damage;
  static const fromJsonFactory = _$MonsterAttackFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is MonsterAttack &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.dc, dc) ||
                const DeepCollectionEquality().equals(other.dc, dc)) &&
            (identical(other.damage, damage) ||
                const DeepCollectionEquality().equals(other.damage, damage)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(dc) ^
      const DeepCollectionEquality().hash(damage) ^
      runtimeType.hashCode;
}

extension $MonsterAttackExtension on MonsterAttack {
  MonsterAttack copyWith({String? name, Dc? dc, Damage? damage}) {
    return MonsterAttack(
      name: name ?? this.name,
      dc: dc ?? this.dc,
      damage: damage ?? this.damage,
    );
  }

  MonsterAttack copyWithWrapped({
    Wrapped<String?>? name,
    Wrapped<Dc?>? dc,
    Wrapped<Damage?>? damage,
  }) {
    return MonsterAttack(
      name: (name != null ? name.value : this.name),
      dc: (dc != null ? dc.value : this.dc),
      damage: (damage != null ? damage.value : this.damage),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class MonsterMultiAttackAction {
  const MonsterMultiAttackAction({this.actionName, this.count, this.type});

  factory MonsterMultiAttackAction.fromJson(Map<String, dynamic> json) =>
      _$MonsterMultiAttackActionFromJson(json);

  static const toJsonFactory = _$MonsterMultiAttackActionToJson;
  Map<String, dynamic> toJson() => _$MonsterMultiAttackActionToJson(this);

  @JsonKey(name: 'action_name', includeIfNull: false)
  final String? actionName;
  @JsonKey(name: 'count', includeIfNull: false)
  final double? count;
  @JsonKey(
    name: 'type',
    includeIfNull: false,
    toJson: monsterMultiAttackActionTypeNullableToJson,
    fromJson: monsterMultiAttackActionTypeNullableFromJson,
  )
  final enums.MonsterMultiAttackActionType? type;
  static const fromJsonFactory = _$MonsterMultiAttackActionFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is MonsterMultiAttackAction &&
            (identical(other.actionName, actionName) ||
                const DeepCollectionEquality().equals(
                  other.actionName,
                  actionName,
                )) &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(actionName) ^
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(type) ^
      runtimeType.hashCode;
}

extension $MonsterMultiAttackActionExtension on MonsterMultiAttackAction {
  MonsterMultiAttackAction copyWith({
    String? actionName,
    double? count,
    enums.MonsterMultiAttackActionType? type,
  }) {
    return MonsterMultiAttackAction(
      actionName: actionName ?? this.actionName,
      count: count ?? this.count,
      type: type ?? this.type,
    );
  }

  MonsterMultiAttackAction copyWithWrapped({
    Wrapped<String?>? actionName,
    Wrapped<double?>? count,
    Wrapped<enums.MonsterMultiAttackActionType?>? type,
  }) {
    return MonsterMultiAttackAction(
      actionName: (actionName != null ? actionName.value : this.actionName),
      count: (count != null ? count.value : this.count),
      type: (type != null ? type.value : this.type),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class MonsterProficiency {
  const MonsterProficiency({this.value, this.proficiency});

  factory MonsterProficiency.fromJson(Map<String, dynamic> json) =>
      _$MonsterProficiencyFromJson(json);

  static const toJsonFactory = _$MonsterProficiencyToJson;
  Map<String, dynamic> toJson() => _$MonsterProficiencyToJson(this);

  @JsonKey(name: 'value', includeIfNull: false)
  final double? value;
  @JsonKey(name: 'proficiency', includeIfNull: false)
  final APIReference? proficiency;
  static const fromJsonFactory = _$MonsterProficiencyFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is MonsterProficiency &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)) &&
            (identical(other.proficiency, proficiency) ||
                const DeepCollectionEquality().equals(
                  other.proficiency,
                  proficiency,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(value) ^
      const DeepCollectionEquality().hash(proficiency) ^
      runtimeType.hashCode;
}

extension $MonsterProficiencyExtension on MonsterProficiency {
  MonsterProficiency copyWith({double? value, APIReference? proficiency}) {
    return MonsterProficiency(
      value: value ?? this.value,
      proficiency: proficiency ?? this.proficiency,
    );
  }

  MonsterProficiency copyWithWrapped({
    Wrapped<double?>? value,
    Wrapped<APIReference?>? proficiency,
  }) {
    return MonsterProficiency(
      value: (value != null ? value.value : this.value),
      proficiency: (proficiency != null ? proficiency.value : this.proficiency),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class MonsterSense {
  const MonsterSense({
    this.passivePerception,
    this.blindsight,
    this.darkvision,
    this.tremorsense,
    this.truesight,
  });

  factory MonsterSense.fromJson(Map<String, dynamic> json) =>
      _$MonsterSenseFromJson(json);

  static const toJsonFactory = _$MonsterSenseToJson;
  Map<String, dynamic> toJson() => _$MonsterSenseToJson(this);

  @JsonKey(name: 'passive_perception', includeIfNull: false)
  final double? passivePerception;
  @JsonKey(name: 'blindsight', includeIfNull: false)
  final String? blindsight;
  @JsonKey(name: 'darkvision', includeIfNull: false)
  final String? darkvision;
  @JsonKey(name: 'tremorsense', includeIfNull: false)
  final String? tremorsense;
  @JsonKey(name: 'truesight', includeIfNull: false)
  final String? truesight;
  static const fromJsonFactory = _$MonsterSenseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is MonsterSense &&
            (identical(other.passivePerception, passivePerception) ||
                const DeepCollectionEquality().equals(
                  other.passivePerception,
                  passivePerception,
                )) &&
            (identical(other.blindsight, blindsight) ||
                const DeepCollectionEquality().equals(
                  other.blindsight,
                  blindsight,
                )) &&
            (identical(other.darkvision, darkvision) ||
                const DeepCollectionEquality().equals(
                  other.darkvision,
                  darkvision,
                )) &&
            (identical(other.tremorsense, tremorsense) ||
                const DeepCollectionEquality().equals(
                  other.tremorsense,
                  tremorsense,
                )) &&
            (identical(other.truesight, truesight) ||
                const DeepCollectionEquality().equals(
                  other.truesight,
                  truesight,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(passivePerception) ^
      const DeepCollectionEquality().hash(blindsight) ^
      const DeepCollectionEquality().hash(darkvision) ^
      const DeepCollectionEquality().hash(tremorsense) ^
      const DeepCollectionEquality().hash(truesight) ^
      runtimeType.hashCode;
}

extension $MonsterSenseExtension on MonsterSense {
  MonsterSense copyWith({
    double? passivePerception,
    String? blindsight,
    String? darkvision,
    String? tremorsense,
    String? truesight,
  }) {
    return MonsterSense(
      passivePerception: passivePerception ?? this.passivePerception,
      blindsight: blindsight ?? this.blindsight,
      darkvision: darkvision ?? this.darkvision,
      tremorsense: tremorsense ?? this.tremorsense,
      truesight: truesight ?? this.truesight,
    );
  }

  MonsterSense copyWithWrapped({
    Wrapped<double?>? passivePerception,
    Wrapped<String?>? blindsight,
    Wrapped<String?>? darkvision,
    Wrapped<String?>? tremorsense,
    Wrapped<String?>? truesight,
  }) {
    return MonsterSense(
      passivePerception: (passivePerception != null
          ? passivePerception.value
          : this.passivePerception),
      blindsight: (blindsight != null ? blindsight.value : this.blindsight),
      darkvision: (darkvision != null ? darkvision.value : this.darkvision),
      tremorsense: (tremorsense != null ? tremorsense.value : this.tremorsense),
      truesight: (truesight != null ? truesight.value : this.truesight),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class MonsterSpecialAbility {
  const MonsterSpecialAbility({
    this.name,
    this.desc,
    this.attackBonus,
    this.damage,
    this.dc,
    this.spellcasting,
    this.usage,
  });

  factory MonsterSpecialAbility.fromJson(Map<String, dynamic> json) =>
      _$MonsterSpecialAbilityFromJson(json);

  static const toJsonFactory = _$MonsterSpecialAbilityToJson;
  Map<String, dynamic> toJson() => _$MonsterSpecialAbilityToJson(this);

  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  @JsonKey(name: 'desc', includeIfNull: false)
  final String? desc;
  @JsonKey(name: 'attack_bonus', includeIfNull: false)
  final double? attackBonus;
  @JsonKey(name: 'damage', includeIfNull: false)
  final Damage? damage;
  @JsonKey(name: 'dc', includeIfNull: false)
  final Dc? dc;
  @JsonKey(name: 'spellcasting', includeIfNull: false)
  final MonsterSpellcasting? spellcasting;
  @JsonKey(name: 'usage', includeIfNull: false)
  final MonsterUsage? usage;
  static const fromJsonFactory = _$MonsterSpecialAbilityFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is MonsterSpecialAbility &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.desc, desc) ||
                const DeepCollectionEquality().equals(other.desc, desc)) &&
            (identical(other.attackBonus, attackBonus) ||
                const DeepCollectionEquality().equals(
                  other.attackBonus,
                  attackBonus,
                )) &&
            (identical(other.damage, damage) ||
                const DeepCollectionEquality().equals(other.damage, damage)) &&
            (identical(other.dc, dc) ||
                const DeepCollectionEquality().equals(other.dc, dc)) &&
            (identical(other.spellcasting, spellcasting) ||
                const DeepCollectionEquality().equals(
                  other.spellcasting,
                  spellcasting,
                )) &&
            (identical(other.usage, usage) ||
                const DeepCollectionEquality().equals(other.usage, usage)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(desc) ^
      const DeepCollectionEquality().hash(attackBonus) ^
      const DeepCollectionEquality().hash(damage) ^
      const DeepCollectionEquality().hash(dc) ^
      const DeepCollectionEquality().hash(spellcasting) ^
      const DeepCollectionEquality().hash(usage) ^
      runtimeType.hashCode;
}

extension $MonsterSpecialAbilityExtension on MonsterSpecialAbility {
  MonsterSpecialAbility copyWith({
    String? name,
    String? desc,
    double? attackBonus,
    Damage? damage,
    Dc? dc,
    MonsterSpellcasting? spellcasting,
    MonsterUsage? usage,
  }) {
    return MonsterSpecialAbility(
      name: name ?? this.name,
      desc: desc ?? this.desc,
      attackBonus: attackBonus ?? this.attackBonus,
      damage: damage ?? this.damage,
      dc: dc ?? this.dc,
      spellcasting: spellcasting ?? this.spellcasting,
      usage: usage ?? this.usage,
    );
  }

  MonsterSpecialAbility copyWithWrapped({
    Wrapped<String?>? name,
    Wrapped<String?>? desc,
    Wrapped<double?>? attackBonus,
    Wrapped<Damage?>? damage,
    Wrapped<Dc?>? dc,
    Wrapped<MonsterSpellcasting?>? spellcasting,
    Wrapped<MonsterUsage?>? usage,
  }) {
    return MonsterSpecialAbility(
      name: (name != null ? name.value : this.name),
      desc: (desc != null ? desc.value : this.desc),
      attackBonus: (attackBonus != null ? attackBonus.value : this.attackBonus),
      damage: (damage != null ? damage.value : this.damage),
      dc: (dc != null ? dc.value : this.dc),
      spellcasting: (spellcasting != null
          ? spellcasting.value
          : this.spellcasting),
      usage: (usage != null ? usage.value : this.usage),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class MonsterSpell {
  const MonsterSpell({this.name, this.level, this.url, this.usage});

  factory MonsterSpell.fromJson(Map<String, dynamic> json) =>
      _$MonsterSpellFromJson(json);

  static const toJsonFactory = _$MonsterSpellToJson;
  Map<String, dynamic> toJson() => _$MonsterSpellToJson(this);

  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  @JsonKey(name: 'level', includeIfNull: false)
  final double? level;
  @JsonKey(name: 'url', includeIfNull: false)
  final String? url;
  @JsonKey(name: 'usage', includeIfNull: false)
  final MonsterUsage? usage;
  static const fromJsonFactory = _$MonsterSpellFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is MonsterSpell &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.level, level) ||
                const DeepCollectionEquality().equals(other.level, level)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.usage, usage) ||
                const DeepCollectionEquality().equals(other.usage, usage)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(level) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(usage) ^
      runtimeType.hashCode;
}

extension $MonsterSpellExtension on MonsterSpell {
  MonsterSpell copyWith({
    String? name,
    double? level,
    String? url,
    MonsterUsage? usage,
  }) {
    return MonsterSpell(
      name: name ?? this.name,
      level: level ?? this.level,
      url: url ?? this.url,
      usage: usage ?? this.usage,
    );
  }

  MonsterSpell copyWithWrapped({
    Wrapped<String?>? name,
    Wrapped<double?>? level,
    Wrapped<String?>? url,
    Wrapped<MonsterUsage?>? usage,
  }) {
    return MonsterSpell(
      name: (name != null ? name.value : this.name),
      level: (level != null ? level.value : this.level),
      url: (url != null ? url.value : this.url),
      usage: (usage != null ? usage.value : this.usage),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class MonsterSpellcasting {
  const MonsterSpellcasting({
    this.ability,
    this.dc,
    this.modifier,
    this.componentsRequired,
    this.school,
    this.slots,
    this.spells,
  });

  factory MonsterSpellcasting.fromJson(Map<String, dynamic> json) =>
      _$MonsterSpellcastingFromJson(json);

  static const toJsonFactory = _$MonsterSpellcastingToJson;
  Map<String, dynamic> toJson() => _$MonsterSpellcastingToJson(this);

  @JsonKey(name: 'ability', includeIfNull: false)
  final APIReference? ability;
  @JsonKey(name: 'dc', includeIfNull: false)
  final double? dc;
  @JsonKey(name: 'modifier', includeIfNull: false)
  final double? modifier;
  @JsonKey(
    name: 'components_required',
    includeIfNull: false,
    defaultValue: <String>[],
  )
  final List<String>? componentsRequired;
  @JsonKey(name: 'school', includeIfNull: false)
  final String? school;
  @JsonKey(name: 'slots', includeIfNull: false)
  final Map<String, dynamic>? slots;
  @JsonKey(name: 'spells', includeIfNull: false, defaultValue: <MonsterSpell>[])
  final List<MonsterSpell>? spells;
  static const fromJsonFactory = _$MonsterSpellcastingFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is MonsterSpellcasting &&
            (identical(other.ability, ability) ||
                const DeepCollectionEquality().equals(
                  other.ability,
                  ability,
                )) &&
            (identical(other.dc, dc) ||
                const DeepCollectionEquality().equals(other.dc, dc)) &&
            (identical(other.modifier, modifier) ||
                const DeepCollectionEquality().equals(
                  other.modifier,
                  modifier,
                )) &&
            (identical(other.componentsRequired, componentsRequired) ||
                const DeepCollectionEquality().equals(
                  other.componentsRequired,
                  componentsRequired,
                )) &&
            (identical(other.school, school) ||
                const DeepCollectionEquality().equals(other.school, school)) &&
            (identical(other.slots, slots) ||
                const DeepCollectionEquality().equals(other.slots, slots)) &&
            (identical(other.spells, spells) ||
                const DeepCollectionEquality().equals(other.spells, spells)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(ability) ^
      const DeepCollectionEquality().hash(dc) ^
      const DeepCollectionEquality().hash(modifier) ^
      const DeepCollectionEquality().hash(componentsRequired) ^
      const DeepCollectionEquality().hash(school) ^
      const DeepCollectionEquality().hash(slots) ^
      const DeepCollectionEquality().hash(spells) ^
      runtimeType.hashCode;
}

extension $MonsterSpellcastingExtension on MonsterSpellcasting {
  MonsterSpellcasting copyWith({
    APIReference? ability,
    double? dc,
    double? modifier,
    List<String>? componentsRequired,
    String? school,
    Map<String, dynamic>? slots,
    List<MonsterSpell>? spells,
  }) {
    return MonsterSpellcasting(
      ability: ability ?? this.ability,
      dc: dc ?? this.dc,
      modifier: modifier ?? this.modifier,
      componentsRequired: componentsRequired ?? this.componentsRequired,
      school: school ?? this.school,
      slots: slots ?? this.slots,
      spells: spells ?? this.spells,
    );
  }

  MonsterSpellcasting copyWithWrapped({
    Wrapped<APIReference?>? ability,
    Wrapped<double?>? dc,
    Wrapped<double?>? modifier,
    Wrapped<List<String>?>? componentsRequired,
    Wrapped<String?>? school,
    Wrapped<Map<String, dynamic>?>? slots,
    Wrapped<List<MonsterSpell>?>? spells,
  }) {
    return MonsterSpellcasting(
      ability: (ability != null ? ability.value : this.ability),
      dc: (dc != null ? dc.value : this.dc),
      modifier: (modifier != null ? modifier.value : this.modifier),
      componentsRequired: (componentsRequired != null
          ? componentsRequired.value
          : this.componentsRequired),
      school: (school != null ? school.value : this.school),
      slots: (slots != null ? slots.value : this.slots),
      spells: (spells != null ? spells.value : this.spells),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class MonsterUsage {
  const MonsterUsage({this.type, this.restTypes, this.times});

  factory MonsterUsage.fromJson(Map<String, dynamic> json) =>
      _$MonsterUsageFromJson(json);

  static const toJsonFactory = _$MonsterUsageToJson;
  Map<String, dynamic> toJson() => _$MonsterUsageToJson(this);

  @JsonKey(
    name: 'type',
    includeIfNull: false,
    toJson: monsterUsageTypeNullableToJson,
    fromJson: monsterUsageTypeNullableFromJson,
  )
  final enums.MonsterUsageType? type;
  @JsonKey(name: 'rest_types', includeIfNull: false, defaultValue: <String>[])
  final List<String>? restTypes;
  @JsonKey(name: 'times', includeIfNull: false)
  final double? times;
  static const fromJsonFactory = _$MonsterUsageFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is MonsterUsage &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.restTypes, restTypes) ||
                const DeepCollectionEquality().equals(
                  other.restTypes,
                  restTypes,
                )) &&
            (identical(other.times, times) ||
                const DeepCollectionEquality().equals(other.times, times)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(restTypes) ^
      const DeepCollectionEquality().hash(times) ^
      runtimeType.hashCode;
}

extension $MonsterUsageExtension on MonsterUsage {
  MonsterUsage copyWith({
    enums.MonsterUsageType? type,
    List<String>? restTypes,
    double? times,
  }) {
    return MonsterUsage(
      type: type ?? this.type,
      restTypes: restTypes ?? this.restTypes,
      times: times ?? this.times,
    );
  }

  MonsterUsage copyWithWrapped({
    Wrapped<enums.MonsterUsageType?>? type,
    Wrapped<List<String>?>? restTypes,
    Wrapped<double?>? times,
  }) {
    return MonsterUsage(
      type: (type != null ? type.value : this.type),
      restTypes: (restTypes != null ? restTypes.value : this.restTypes),
      times: (times != null ? times.value : this.times),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class SpellPrerequisite {
  const SpellPrerequisite({
    this.type,
    this.index,
    this.name,
    this.url,
    this.updatedAt,
  });

  factory SpellPrerequisite.fromJson(Map<String, dynamic> json) =>
      _$SpellPrerequisiteFromJson(json);

  static const toJsonFactory = _$SpellPrerequisiteToJson;
  Map<String, dynamic> toJson() => _$SpellPrerequisiteToJson(this);

  @JsonKey(name: 'type', includeIfNull: false)
  final String? type;
  @JsonKey(name: 'index', includeIfNull: false)
  final String? index;
  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  @JsonKey(name: 'url', includeIfNull: false)
  final String? url;
  @JsonKey(name: 'updated_at', includeIfNull: false)
  final String? updatedAt;
  static const fromJsonFactory = _$SpellPrerequisiteFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is SpellPrerequisite &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality().equals(
                  other.updatedAt,
                  updatedAt,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $SpellPrerequisiteExtension on SpellPrerequisite {
  SpellPrerequisite copyWith({
    String? type,
    String? index,
    String? name,
    String? url,
    String? updatedAt,
  }) {
    return SpellPrerequisite(
      type: type ?? this.type,
      index: index ?? this.index,
      name: name ?? this.name,
      url: url ?? this.url,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  SpellPrerequisite copyWithWrapped({
    Wrapped<String?>? type,
    Wrapped<String?>? index,
    Wrapped<String?>? name,
    Wrapped<String?>? url,
    Wrapped<String?>? updatedAt,
  }) {
    return SpellPrerequisite(
      type: (type != null ? type.value : this.type),
      index: (index != null ? index.value : this.index),
      name: (name != null ? name.value : this.name),
      url: (url != null ? url.value : this.url),
      updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ErrorResponse {
  const ErrorResponse({required this.error});

  factory ErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$ErrorResponseFromJson(json);

  static const toJsonFactory = _$ErrorResponseToJson;
  Map<String, dynamic> toJson() => _$ErrorResponseToJson(this);

  @JsonKey(name: 'error', includeIfNull: false)
  final String error;
  static const fromJsonFactory = _$ErrorResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ErrorResponse &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(error) ^ runtimeType.hashCode;
}

extension $ErrorResponseExtension on ErrorResponse {
  ErrorResponse copyWith({String? error}) {
    return ErrorResponse(error: error ?? this.error);
  }

  ErrorResponse copyWithWrapped({Wrapped<String>? error}) {
    return ErrorResponse(error: (error != null ? error.value : this.error));
  }
}

@JsonSerializable(explicitToJson: true)
class Dc {
  const Dc({this.dcType, this.dcValue, this.successType});

  factory Dc.fromJson(Map<String, dynamic> json) => _$DcFromJson(json);

  static const toJsonFactory = _$DcToJson;
  Map<String, dynamic> toJson() => _$DcToJson(this);

  @JsonKey(name: 'dc_type', includeIfNull: false)
  final APIReference? dcType;
  @JsonKey(name: 'dc_value', includeIfNull: false)
  final double? dcValue;
  @JsonKey(name: 'success_type', includeIfNull: false)
  final String? successType;
  static const fromJsonFactory = _$DcFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is Dc &&
            (identical(other.dcType, dcType) ||
                const DeepCollectionEquality().equals(other.dcType, dcType)) &&
            (identical(other.dcValue, dcValue) ||
                const DeepCollectionEquality().equals(
                  other.dcValue,
                  dcValue,
                )) &&
            (identical(other.successType, successType) ||
                const DeepCollectionEquality().equals(
                  other.successType,
                  successType,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(dcType) ^
      const DeepCollectionEquality().hash(dcValue) ^
      const DeepCollectionEquality().hash(successType) ^
      runtimeType.hashCode;
}

extension $DcExtension on Dc {
  Dc copyWith({APIReference? dcType, double? dcValue, String? successType}) {
    return Dc(
      dcType: dcType ?? this.dcType,
      dcValue: dcValue ?? this.dcValue,
      successType: successType ?? this.successType,
    );
  }

  Dc copyWithWrapped({
    Wrapped<APIReference?>? dcType,
    Wrapped<double?>? dcValue,
    Wrapped<String?>? successType,
  }) {
    return Dc(
      dcType: (dcType != null ? dcType.value : this.dcType),
      dcValue: (dcValue != null ? dcValue.value : this.dcValue),
      successType: (successType != null ? successType.value : this.successType),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class OptionSet {
  const OptionSet();

  factory OptionSet.fromJson(Map<String, dynamic> json) =>
      _$OptionSetFromJson(json);

  static const toJsonFactory = _$OptionSetToJson;
  Map<String, dynamic> toJson() => _$OptionSetToJson(this);

  static const fromJsonFactory = _$OptionSetFromJson;

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode => runtimeType.hashCode;
}

@JsonSerializable(explicitToJson: true)
class Option {
  const Option();

  factory Option.fromJson(Map<String, dynamic> json) => _$OptionFromJson(json);

  static const toJsonFactory = _$OptionToJson;
  Map<String, dynamic> toJson() => _$OptionToJson(this);

  static const fromJsonFactory = _$OptionFromJson;

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode => runtimeType.hashCode;
}

@JsonSerializable(explicitToJson: true)
class ClassLevelSpell {
  const ClassLevelSpell({
    this.level,
    this.index,
    this.name,
    this.url,
    this.updatedAt,
  });

  factory ClassLevelSpell.fromJson(Map<String, dynamic> json) =>
      _$ClassLevelSpellFromJson(json);

  static const toJsonFactory = _$ClassLevelSpellToJson;
  Map<String, dynamic> toJson() => _$ClassLevelSpellToJson(this);

  @JsonKey(name: 'level', includeIfNull: false)
  final double? level;
  @JsonKey(name: 'index', includeIfNull: false)
  final String? index;
  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  @JsonKey(name: 'url', includeIfNull: false)
  final String? url;
  @JsonKey(name: 'updated_at', includeIfNull: false)
  final String? updatedAt;
  static const fromJsonFactory = _$ClassLevelSpellFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ClassLevelSpell &&
            (identical(other.level, level) ||
                const DeepCollectionEquality().equals(other.level, level)) &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality().equals(
                  other.updatedAt,
                  updatedAt,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(level) ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $ClassLevelSpellExtension on ClassLevelSpell {
  ClassLevelSpell copyWith({
    double? level,
    String? index,
    String? name,
    String? url,
    String? updatedAt,
  }) {
    return ClassLevelSpell(
      level: level ?? this.level,
      index: index ?? this.index,
      name: name ?? this.name,
      url: url ?? this.url,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  ClassLevelSpell copyWithWrapped({
    Wrapped<double?>? level,
    Wrapped<String?>? index,
    Wrapped<String?>? name,
    Wrapped<String?>? url,
    Wrapped<String?>? updatedAt,
  }) {
    return ClassLevelSpell(
      level: (level != null ? level.value : this.level),
      index: (index != null ? index.value : this.index),
      name: (name != null ? name.value : this.name),
      url: (url != null ? url.value : this.url),
      updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ClassSpellList {
  const ClassSpellList({this.count, this.results});

  factory ClassSpellList.fromJson(Map<String, dynamic> json) =>
      _$ClassSpellListFromJson(json);

  static const toJsonFactory = _$ClassSpellListToJson;
  Map<String, dynamic> toJson() => _$ClassSpellListToJson(this);

  @JsonKey(name: 'count', includeIfNull: false)
  final double? count;
  @JsonKey(
    name: 'results',
    includeIfNull: false,
    defaultValue: <ClassLevelSpell>[],
  )
  final List<ClassLevelSpell>? results;
  static const fromJsonFactory = _$ClassSpellListFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ClassSpellList &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.results, results) ||
                const DeepCollectionEquality().equals(other.results, results)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(results) ^
      runtimeType.hashCode;
}

extension $ClassSpellListExtension on ClassSpellList {
  ClassSpellList copyWith({double? count, List<ClassLevelSpell>? results}) {
    return ClassSpellList(
      count: count ?? this.count,
      results: results ?? this.results,
    );
  }

  ClassSpellList copyWithWrapped({
    Wrapped<double?>? count,
    Wrapped<List<ClassLevelSpell>?>? results,
  }) {
    return ClassSpellList(
      count: (count != null ? count.value : this.count),
      results: (results != null ? results.value : this.results),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class Class$StartingEquipment$Item {
  const Class$StartingEquipment$Item({this.quantity, this.equipment});

  factory Class$StartingEquipment$Item.fromJson(Map<String, dynamic> json) =>
      _$Class$StartingEquipment$ItemFromJson(json);

  static const toJsonFactory = _$Class$StartingEquipment$ItemToJson;
  Map<String, dynamic> toJson() => _$Class$StartingEquipment$ItemToJson(this);

  @JsonKey(name: 'quantity', includeIfNull: false)
  final double? quantity;
  @JsonKey(name: 'equipment', includeIfNull: false)
  final APIReference? equipment;
  static const fromJsonFactory = _$Class$StartingEquipment$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is Class$StartingEquipment$Item &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality().equals(
                  other.quantity,
                  quantity,
                )) &&
            (identical(other.equipment, equipment) ||
                const DeepCollectionEquality().equals(
                  other.equipment,
                  equipment,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(quantity) ^
      const DeepCollectionEquality().hash(equipment) ^
      runtimeType.hashCode;
}

extension $Class$StartingEquipment$ItemExtension
    on Class$StartingEquipment$Item {
  Class$StartingEquipment$Item copyWith({
    double? quantity,
    APIReference? equipment,
  }) {
    return Class$StartingEquipment$Item(
      quantity: quantity ?? this.quantity,
      equipment: equipment ?? this.equipment,
    );
  }

  Class$StartingEquipment$Item copyWithWrapped({
    Wrapped<double?>? quantity,
    Wrapped<APIReference?>? equipment,
  }) {
    return Class$StartingEquipment$Item(
      quantity: (quantity != null ? quantity.value : this.quantity),
      equipment: (equipment != null ? equipment.value : this.equipment),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class Spellcasting$Info$Item {
  const Spellcasting$Info$Item({this.name, this.desc});

  factory Spellcasting$Info$Item.fromJson(Map<String, dynamic> json) =>
      _$Spellcasting$Info$ItemFromJson(json);

  static const toJsonFactory = _$Spellcasting$Info$ItemToJson;
  Map<String, dynamic> toJson() => _$Spellcasting$Info$ItemToJson(this);

  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  @JsonKey(name: 'desc', includeIfNull: false, defaultValue: <Object>[])
  final List<Object>? desc;
  static const fromJsonFactory = _$Spellcasting$Info$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is Spellcasting$Info$Item &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.desc, desc) ||
                const DeepCollectionEquality().equals(other.desc, desc)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(desc) ^
      runtimeType.hashCode;
}

extension $Spellcasting$Info$ItemExtension on Spellcasting$Info$Item {
  Spellcasting$Info$Item copyWith({String? name, List<Object>? desc}) {
    return Spellcasting$Info$Item(
      name: name ?? this.name,
      desc: desc ?? this.desc,
    );
  }

  Spellcasting$Info$Item copyWithWrapped({
    Wrapped<String?>? name,
    Wrapped<List<Object>?>? desc,
  }) {
    return Spellcasting$Info$Item(
      name: (name != null ? name.value : this.name),
      desc: (desc != null ? desc.value : this.desc),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class Weapon$Range {
  const Weapon$Range({this.normal, this.long});

  factory Weapon$Range.fromJson(Map<String, dynamic> json) =>
      _$Weapon$RangeFromJson(json);

  static const toJsonFactory = _$Weapon$RangeToJson;
  Map<String, dynamic> toJson() => _$Weapon$RangeToJson(this);

  @JsonKey(name: 'normal', includeIfNull: false)
  final double? normal;
  @JsonKey(name: 'long', includeIfNull: false)
  final double? long;
  static const fromJsonFactory = _$Weapon$RangeFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is Weapon$Range &&
            (identical(other.normal, normal) ||
                const DeepCollectionEquality().equals(other.normal, normal)) &&
            (identical(other.long, long) ||
                const DeepCollectionEquality().equals(other.long, long)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(normal) ^
      const DeepCollectionEquality().hash(long) ^
      runtimeType.hashCode;
}

extension $Weapon$RangeExtension on Weapon$Range {
  Weapon$Range copyWith({double? normal, double? long}) {
    return Weapon$Range(normal: normal ?? this.normal, long: long ?? this.long);
  }

  Weapon$Range copyWithWrapped({
    Wrapped<double?>? normal,
    Wrapped<double?>? long,
  }) {
    return Weapon$Range(
      normal: (normal != null ? normal.value : this.normal),
      long: (long != null ? long.value : this.long),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class MagicItem$Rarity {
  const MagicItem$Rarity({this.name});

  factory MagicItem$Rarity.fromJson(Map<String, dynamic> json) =>
      _$MagicItem$RarityFromJson(json);

  static const toJsonFactory = _$MagicItem$RarityToJson;
  Map<String, dynamic> toJson() => _$MagicItem$RarityToJson(this);

  @JsonKey(
    name: 'name',
    includeIfNull: false,
    toJson: magicItem$RarityNameNullableToJson,
    fromJson: magicItem$RarityNameNullableFromJson,
  )
  final enums.MagicItem$RarityName? name;
  static const fromJsonFactory = _$MagicItem$RarityFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is MagicItem$Rarity &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^ runtimeType.hashCode;
}

extension $MagicItem$RarityExtension on MagicItem$Rarity {
  MagicItem$Rarity copyWith({enums.MagicItem$RarityName? name}) {
    return MagicItem$Rarity(name: name ?? this.name);
  }

  MagicItem$Rarity copyWithWrapped({
    Wrapped<enums.MagicItem$RarityName?>? name,
  }) {
    return MagicItem$Rarity(name: (name != null ? name.value : this.name));
  }
}

@JsonSerializable(explicitToJson: true)
class Background$Feature {
  const Background$Feature({this.name, this.desc});

  factory Background$Feature.fromJson(Map<String, dynamic> json) =>
      _$Background$FeatureFromJson(json);

  static const toJsonFactory = _$Background$FeatureToJson;
  Map<String, dynamic> toJson() => _$Background$FeatureToJson(this);

  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  @JsonKey(name: 'desc', includeIfNull: false, defaultValue: <String>[])
  final List<String>? desc;
  static const fromJsonFactory = _$Background$FeatureFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is Background$Feature &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.desc, desc) ||
                const DeepCollectionEquality().equals(other.desc, desc)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(desc) ^
      runtimeType.hashCode;
}

extension $Background$FeatureExtension on Background$Feature {
  Background$Feature copyWith({String? name, List<String>? desc}) {
    return Background$Feature(name: name ?? this.name, desc: desc ?? this.desc);
  }

  Background$Feature copyWithWrapped({
    Wrapped<String?>? name,
    Wrapped<List<String>?>? desc,
  }) {
    return Background$Feature(
      name: (name != null ? name.value : this.name),
      desc: (desc != null ? desc.value : this.desc),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class Subclass$Spells$Item {
  const Subclass$Spells$Item({this.prerequisites, this.spell});

  factory Subclass$Spells$Item.fromJson(Map<String, dynamic> json) =>
      _$Subclass$Spells$ItemFromJson(json);

  static const toJsonFactory = _$Subclass$Spells$ItemToJson;
  Map<String, dynamic> toJson() => _$Subclass$Spells$ItemToJson(this);

  @JsonKey(
    name: 'prerequisites',
    includeIfNull: false,
    defaultValue: <Object>[],
  )
  final List<Object>? prerequisites;
  @JsonKey(name: 'spell', includeIfNull: false)
  final APIReference? spell;
  static const fromJsonFactory = _$Subclass$Spells$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is Subclass$Spells$Item &&
            (identical(other.prerequisites, prerequisites) ||
                const DeepCollectionEquality().equals(
                  other.prerequisites,
                  prerequisites,
                )) &&
            (identical(other.spell, spell) ||
                const DeepCollectionEquality().equals(other.spell, spell)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(prerequisites) ^
      const DeepCollectionEquality().hash(spell) ^
      runtimeType.hashCode;
}

extension $Subclass$Spells$ItemExtension on Subclass$Spells$Item {
  Subclass$Spells$Item copyWith({
    List<Object>? prerequisites,
    APIReference? spell,
  }) {
    return Subclass$Spells$Item(
      prerequisites: prerequisites ?? this.prerequisites,
      spell: spell ?? this.spell,
    );
  }

  Subclass$Spells$Item copyWithWrapped({
    Wrapped<List<Object>?>? prerequisites,
    Wrapped<APIReference?>? spell,
  }) {
    return Subclass$Spells$Item(
      prerequisites: (prerequisites != null
          ? prerequisites.value
          : this.prerequisites),
      spell: (spell != null ? spell.value : this.spell),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class SubclassLevel$Spellcasting {
  const SubclassLevel$Spellcasting({
    this.cantripsKnown,
    this.spellsKnown,
    this.spellSlotsLevel1,
    this.spellSlotsLevel2,
    this.spellSlotsLevel3,
    this.spellSlotsLevel4,
    this.spellSlotsLevel5,
    this.spellSlotsLevel6,
    this.spellSlotsLevel7,
    this.spellSlotsLevel8,
    this.spellSlotsLevel9,
  });

  factory SubclassLevel$Spellcasting.fromJson(Map<String, dynamic> json) =>
      _$SubclassLevel$SpellcastingFromJson(json);

  static const toJsonFactory = _$SubclassLevel$SpellcastingToJson;
  Map<String, dynamic> toJson() => _$SubclassLevel$SpellcastingToJson(this);

  @JsonKey(name: 'cantrips_known', includeIfNull: false)
  final double? cantripsKnown;
  @JsonKey(name: 'spells_known', includeIfNull: false)
  final double? spellsKnown;
  @JsonKey(name: 'spell_slots_level_1', includeIfNull: false)
  final double? spellSlotsLevel1;
  @JsonKey(name: 'spell_slots_level_2', includeIfNull: false)
  final double? spellSlotsLevel2;
  @JsonKey(name: 'spell_slots_level_3', includeIfNull: false)
  final double? spellSlotsLevel3;
  @JsonKey(name: 'spell_slots_level_4', includeIfNull: false)
  final double? spellSlotsLevel4;
  @JsonKey(name: 'spell_slots_level_5', includeIfNull: false)
  final double? spellSlotsLevel5;
  @JsonKey(name: 'spell_slots_level_6', includeIfNull: false)
  final double? spellSlotsLevel6;
  @JsonKey(name: 'spell_slots_level_7', includeIfNull: false)
  final double? spellSlotsLevel7;
  @JsonKey(name: 'spell_slots_level_8', includeIfNull: false)
  final double? spellSlotsLevel8;
  @JsonKey(name: 'spell_slots_level_9', includeIfNull: false)
  final double? spellSlotsLevel9;
  static const fromJsonFactory = _$SubclassLevel$SpellcastingFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is SubclassLevel$Spellcasting &&
            (identical(other.cantripsKnown, cantripsKnown) ||
                const DeepCollectionEquality().equals(
                  other.cantripsKnown,
                  cantripsKnown,
                )) &&
            (identical(other.spellsKnown, spellsKnown) ||
                const DeepCollectionEquality().equals(
                  other.spellsKnown,
                  spellsKnown,
                )) &&
            (identical(other.spellSlotsLevel1, spellSlotsLevel1) ||
                const DeepCollectionEquality().equals(
                  other.spellSlotsLevel1,
                  spellSlotsLevel1,
                )) &&
            (identical(other.spellSlotsLevel2, spellSlotsLevel2) ||
                const DeepCollectionEquality().equals(
                  other.spellSlotsLevel2,
                  spellSlotsLevel2,
                )) &&
            (identical(other.spellSlotsLevel3, spellSlotsLevel3) ||
                const DeepCollectionEquality().equals(
                  other.spellSlotsLevel3,
                  spellSlotsLevel3,
                )) &&
            (identical(other.spellSlotsLevel4, spellSlotsLevel4) ||
                const DeepCollectionEquality().equals(
                  other.spellSlotsLevel4,
                  spellSlotsLevel4,
                )) &&
            (identical(other.spellSlotsLevel5, spellSlotsLevel5) ||
                const DeepCollectionEquality().equals(
                  other.spellSlotsLevel5,
                  spellSlotsLevel5,
                )) &&
            (identical(other.spellSlotsLevel6, spellSlotsLevel6) ||
                const DeepCollectionEquality().equals(
                  other.spellSlotsLevel6,
                  spellSlotsLevel6,
                )) &&
            (identical(other.spellSlotsLevel7, spellSlotsLevel7) ||
                const DeepCollectionEquality().equals(
                  other.spellSlotsLevel7,
                  spellSlotsLevel7,
                )) &&
            (identical(other.spellSlotsLevel8, spellSlotsLevel8) ||
                const DeepCollectionEquality().equals(
                  other.spellSlotsLevel8,
                  spellSlotsLevel8,
                )) &&
            (identical(other.spellSlotsLevel9, spellSlotsLevel9) ||
                const DeepCollectionEquality().equals(
                  other.spellSlotsLevel9,
                  spellSlotsLevel9,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(cantripsKnown) ^
      const DeepCollectionEquality().hash(spellsKnown) ^
      const DeepCollectionEquality().hash(spellSlotsLevel1) ^
      const DeepCollectionEquality().hash(spellSlotsLevel2) ^
      const DeepCollectionEquality().hash(spellSlotsLevel3) ^
      const DeepCollectionEquality().hash(spellSlotsLevel4) ^
      const DeepCollectionEquality().hash(spellSlotsLevel5) ^
      const DeepCollectionEquality().hash(spellSlotsLevel6) ^
      const DeepCollectionEquality().hash(spellSlotsLevel7) ^
      const DeepCollectionEquality().hash(spellSlotsLevel8) ^
      const DeepCollectionEquality().hash(spellSlotsLevel9) ^
      runtimeType.hashCode;
}

extension $SubclassLevel$SpellcastingExtension on SubclassLevel$Spellcasting {
  SubclassLevel$Spellcasting copyWith({
    double? cantripsKnown,
    double? spellsKnown,
    double? spellSlotsLevel1,
    double? spellSlotsLevel2,
    double? spellSlotsLevel3,
    double? spellSlotsLevel4,
    double? spellSlotsLevel5,
    double? spellSlotsLevel6,
    double? spellSlotsLevel7,
    double? spellSlotsLevel8,
    double? spellSlotsLevel9,
  }) {
    return SubclassLevel$Spellcasting(
      cantripsKnown: cantripsKnown ?? this.cantripsKnown,
      spellsKnown: spellsKnown ?? this.spellsKnown,
      spellSlotsLevel1: spellSlotsLevel1 ?? this.spellSlotsLevel1,
      spellSlotsLevel2: spellSlotsLevel2 ?? this.spellSlotsLevel2,
      spellSlotsLevel3: spellSlotsLevel3 ?? this.spellSlotsLevel3,
      spellSlotsLevel4: spellSlotsLevel4 ?? this.spellSlotsLevel4,
      spellSlotsLevel5: spellSlotsLevel5 ?? this.spellSlotsLevel5,
      spellSlotsLevel6: spellSlotsLevel6 ?? this.spellSlotsLevel6,
      spellSlotsLevel7: spellSlotsLevel7 ?? this.spellSlotsLevel7,
      spellSlotsLevel8: spellSlotsLevel8 ?? this.spellSlotsLevel8,
      spellSlotsLevel9: spellSlotsLevel9 ?? this.spellSlotsLevel9,
    );
  }

  SubclassLevel$Spellcasting copyWithWrapped({
    Wrapped<double?>? cantripsKnown,
    Wrapped<double?>? spellsKnown,
    Wrapped<double?>? spellSlotsLevel1,
    Wrapped<double?>? spellSlotsLevel2,
    Wrapped<double?>? spellSlotsLevel3,
    Wrapped<double?>? spellSlotsLevel4,
    Wrapped<double?>? spellSlotsLevel5,
    Wrapped<double?>? spellSlotsLevel6,
    Wrapped<double?>? spellSlotsLevel7,
    Wrapped<double?>? spellSlotsLevel8,
    Wrapped<double?>? spellSlotsLevel9,
  }) {
    return SubclassLevel$Spellcasting(
      cantripsKnown: (cantripsKnown != null
          ? cantripsKnown.value
          : this.cantripsKnown),
      spellsKnown: (spellsKnown != null ? spellsKnown.value : this.spellsKnown),
      spellSlotsLevel1: (spellSlotsLevel1 != null
          ? spellSlotsLevel1.value
          : this.spellSlotsLevel1),
      spellSlotsLevel2: (spellSlotsLevel2 != null
          ? spellSlotsLevel2.value
          : this.spellSlotsLevel2),
      spellSlotsLevel3: (spellSlotsLevel3 != null
          ? spellSlotsLevel3.value
          : this.spellSlotsLevel3),
      spellSlotsLevel4: (spellSlotsLevel4 != null
          ? spellSlotsLevel4.value
          : this.spellSlotsLevel4),
      spellSlotsLevel5: (spellSlotsLevel5 != null
          ? spellSlotsLevel5.value
          : this.spellSlotsLevel5),
      spellSlotsLevel6: (spellSlotsLevel6 != null
          ? spellSlotsLevel6.value
          : this.spellSlotsLevel6),
      spellSlotsLevel7: (spellSlotsLevel7 != null
          ? spellSlotsLevel7.value
          : this.spellSlotsLevel7),
      spellSlotsLevel8: (spellSlotsLevel8 != null
          ? spellSlotsLevel8.value
          : this.spellSlotsLevel8),
      spellSlotsLevel9: (spellSlotsLevel9 != null
          ? spellSlotsLevel9.value
          : this.spellSlotsLevel9),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ClassLevel$Spellcasting {
  const ClassLevel$Spellcasting({
    this.cantripsKnown,
    this.spellsKnown,
    this.spellSlotsLevel1,
    this.spellSlotsLevel2,
    this.spellSlotsLevel3,
    this.spellSlotsLevel4,
    this.spellSlotsLevel5,
    this.spellSlotsLevel6,
    this.spellSlotsLevel7,
    this.spellSlotsLevel8,
    this.spellSlotsLevel9,
  });

  factory ClassLevel$Spellcasting.fromJson(Map<String, dynamic> json) =>
      _$ClassLevel$SpellcastingFromJson(json);

  static const toJsonFactory = _$ClassLevel$SpellcastingToJson;
  Map<String, dynamic> toJson() => _$ClassLevel$SpellcastingToJson(this);

  @JsonKey(name: 'cantrips_known', includeIfNull: false)
  final double? cantripsKnown;
  @JsonKey(name: 'spells_known', includeIfNull: false)
  final double? spellsKnown;
  @JsonKey(name: 'spell_slots_level_1', includeIfNull: false)
  final double? spellSlotsLevel1;
  @JsonKey(name: 'spell_slots_level_2', includeIfNull: false)
  final double? spellSlotsLevel2;
  @JsonKey(name: 'spell_slots_level_3', includeIfNull: false)
  final double? spellSlotsLevel3;
  @JsonKey(name: 'spell_slots_level_4', includeIfNull: false)
  final double? spellSlotsLevel4;
  @JsonKey(name: 'spell_slots_level_5', includeIfNull: false)
  final double? spellSlotsLevel5;
  @JsonKey(name: 'spell_slots_level_6', includeIfNull: false)
  final double? spellSlotsLevel6;
  @JsonKey(name: 'spell_slots_level_7', includeIfNull: false)
  final double? spellSlotsLevel7;
  @JsonKey(name: 'spell_slots_level_8', includeIfNull: false)
  final double? spellSlotsLevel8;
  @JsonKey(name: 'spell_slots_level_9', includeIfNull: false)
  final double? spellSlotsLevel9;
  static const fromJsonFactory = _$ClassLevel$SpellcastingFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ClassLevel$Spellcasting &&
            (identical(other.cantripsKnown, cantripsKnown) ||
                const DeepCollectionEquality().equals(
                  other.cantripsKnown,
                  cantripsKnown,
                )) &&
            (identical(other.spellsKnown, spellsKnown) ||
                const DeepCollectionEquality().equals(
                  other.spellsKnown,
                  spellsKnown,
                )) &&
            (identical(other.spellSlotsLevel1, spellSlotsLevel1) ||
                const DeepCollectionEquality().equals(
                  other.spellSlotsLevel1,
                  spellSlotsLevel1,
                )) &&
            (identical(other.spellSlotsLevel2, spellSlotsLevel2) ||
                const DeepCollectionEquality().equals(
                  other.spellSlotsLevel2,
                  spellSlotsLevel2,
                )) &&
            (identical(other.spellSlotsLevel3, spellSlotsLevel3) ||
                const DeepCollectionEquality().equals(
                  other.spellSlotsLevel3,
                  spellSlotsLevel3,
                )) &&
            (identical(other.spellSlotsLevel4, spellSlotsLevel4) ||
                const DeepCollectionEquality().equals(
                  other.spellSlotsLevel4,
                  spellSlotsLevel4,
                )) &&
            (identical(other.spellSlotsLevel5, spellSlotsLevel5) ||
                const DeepCollectionEquality().equals(
                  other.spellSlotsLevel5,
                  spellSlotsLevel5,
                )) &&
            (identical(other.spellSlotsLevel6, spellSlotsLevel6) ||
                const DeepCollectionEquality().equals(
                  other.spellSlotsLevel6,
                  spellSlotsLevel6,
                )) &&
            (identical(other.spellSlotsLevel7, spellSlotsLevel7) ||
                const DeepCollectionEquality().equals(
                  other.spellSlotsLevel7,
                  spellSlotsLevel7,
                )) &&
            (identical(other.spellSlotsLevel8, spellSlotsLevel8) ||
                const DeepCollectionEquality().equals(
                  other.spellSlotsLevel8,
                  spellSlotsLevel8,
                )) &&
            (identical(other.spellSlotsLevel9, spellSlotsLevel9) ||
                const DeepCollectionEquality().equals(
                  other.spellSlotsLevel9,
                  spellSlotsLevel9,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(cantripsKnown) ^
      const DeepCollectionEquality().hash(spellsKnown) ^
      const DeepCollectionEquality().hash(spellSlotsLevel1) ^
      const DeepCollectionEquality().hash(spellSlotsLevel2) ^
      const DeepCollectionEquality().hash(spellSlotsLevel3) ^
      const DeepCollectionEquality().hash(spellSlotsLevel4) ^
      const DeepCollectionEquality().hash(spellSlotsLevel5) ^
      const DeepCollectionEquality().hash(spellSlotsLevel6) ^
      const DeepCollectionEquality().hash(spellSlotsLevel7) ^
      const DeepCollectionEquality().hash(spellSlotsLevel8) ^
      const DeepCollectionEquality().hash(spellSlotsLevel9) ^
      runtimeType.hashCode;
}

extension $ClassLevel$SpellcastingExtension on ClassLevel$Spellcasting {
  ClassLevel$Spellcasting copyWith({
    double? cantripsKnown,
    double? spellsKnown,
    double? spellSlotsLevel1,
    double? spellSlotsLevel2,
    double? spellSlotsLevel3,
    double? spellSlotsLevel4,
    double? spellSlotsLevel5,
    double? spellSlotsLevel6,
    double? spellSlotsLevel7,
    double? spellSlotsLevel8,
    double? spellSlotsLevel9,
  }) {
    return ClassLevel$Spellcasting(
      cantripsKnown: cantripsKnown ?? this.cantripsKnown,
      spellsKnown: spellsKnown ?? this.spellsKnown,
      spellSlotsLevel1: spellSlotsLevel1 ?? this.spellSlotsLevel1,
      spellSlotsLevel2: spellSlotsLevel2 ?? this.spellSlotsLevel2,
      spellSlotsLevel3: spellSlotsLevel3 ?? this.spellSlotsLevel3,
      spellSlotsLevel4: spellSlotsLevel4 ?? this.spellSlotsLevel4,
      spellSlotsLevel5: spellSlotsLevel5 ?? this.spellSlotsLevel5,
      spellSlotsLevel6: spellSlotsLevel6 ?? this.spellSlotsLevel6,
      spellSlotsLevel7: spellSlotsLevel7 ?? this.spellSlotsLevel7,
      spellSlotsLevel8: spellSlotsLevel8 ?? this.spellSlotsLevel8,
      spellSlotsLevel9: spellSlotsLevel9 ?? this.spellSlotsLevel9,
    );
  }

  ClassLevel$Spellcasting copyWithWrapped({
    Wrapped<double?>? cantripsKnown,
    Wrapped<double?>? spellsKnown,
    Wrapped<double?>? spellSlotsLevel1,
    Wrapped<double?>? spellSlotsLevel2,
    Wrapped<double?>? spellSlotsLevel3,
    Wrapped<double?>? spellSlotsLevel4,
    Wrapped<double?>? spellSlotsLevel5,
    Wrapped<double?>? spellSlotsLevel6,
    Wrapped<double?>? spellSlotsLevel7,
    Wrapped<double?>? spellSlotsLevel8,
    Wrapped<double?>? spellSlotsLevel9,
  }) {
    return ClassLevel$Spellcasting(
      cantripsKnown: (cantripsKnown != null
          ? cantripsKnown.value
          : this.cantripsKnown),
      spellsKnown: (spellsKnown != null ? spellsKnown.value : this.spellsKnown),
      spellSlotsLevel1: (spellSlotsLevel1 != null
          ? spellSlotsLevel1.value
          : this.spellSlotsLevel1),
      spellSlotsLevel2: (spellSlotsLevel2 != null
          ? spellSlotsLevel2.value
          : this.spellSlotsLevel2),
      spellSlotsLevel3: (spellSlotsLevel3 != null
          ? spellSlotsLevel3.value
          : this.spellSlotsLevel3),
      spellSlotsLevel4: (spellSlotsLevel4 != null
          ? spellSlotsLevel4.value
          : this.spellSlotsLevel4),
      spellSlotsLevel5: (spellSlotsLevel5 != null
          ? spellSlotsLevel5.value
          : this.spellSlotsLevel5),
      spellSlotsLevel6: (spellSlotsLevel6 != null
          ? spellSlotsLevel6.value
          : this.spellSlotsLevel6),
      spellSlotsLevel7: (spellSlotsLevel7 != null
          ? spellSlotsLevel7.value
          : this.spellSlotsLevel7),
      spellSlotsLevel8: (spellSlotsLevel8 != null
          ? spellSlotsLevel8.value
          : this.spellSlotsLevel8),
      spellSlotsLevel9: (spellSlotsLevel9 != null
          ? spellSlotsLevel9.value
          : this.spellSlotsLevel9),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class Monster$Speed {
  const Monster$Speed({
    this.walk,
    this.burrow,
    this.climb,
    this.fly,
    this.swim,
  });

  factory Monster$Speed.fromJson(Map<String, dynamic> json) =>
      _$Monster$SpeedFromJson(json);

  static const toJsonFactory = _$Monster$SpeedToJson;
  Map<String, dynamic> toJson() => _$Monster$SpeedToJson(this);

  @JsonKey(name: 'walk', includeIfNull: false)
  final String? walk;
  @JsonKey(name: 'burrow', includeIfNull: false)
  final String? burrow;
  @JsonKey(name: 'climb', includeIfNull: false)
  final String? climb;
  @JsonKey(name: 'fly', includeIfNull: false)
  final String? fly;
  @JsonKey(name: 'swim', includeIfNull: false)
  final String? swim;
  static const fromJsonFactory = _$Monster$SpeedFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is Monster$Speed &&
            (identical(other.walk, walk) ||
                const DeepCollectionEquality().equals(other.walk, walk)) &&
            (identical(other.burrow, burrow) ||
                const DeepCollectionEquality().equals(other.burrow, burrow)) &&
            (identical(other.climb, climb) ||
                const DeepCollectionEquality().equals(other.climb, climb)) &&
            (identical(other.fly, fly) ||
                const DeepCollectionEquality().equals(other.fly, fly)) &&
            (identical(other.swim, swim) ||
                const DeepCollectionEquality().equals(other.swim, swim)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(walk) ^
      const DeepCollectionEquality().hash(burrow) ^
      const DeepCollectionEquality().hash(climb) ^
      const DeepCollectionEquality().hash(fly) ^
      const DeepCollectionEquality().hash(swim) ^
      runtimeType.hashCode;
}

extension $Monster$SpeedExtension on Monster$Speed {
  Monster$Speed copyWith({
    String? walk,
    String? burrow,
    String? climb,
    String? fly,
    String? swim,
  }) {
    return Monster$Speed(
      walk: walk ?? this.walk,
      burrow: burrow ?? this.burrow,
      climb: climb ?? this.climb,
      fly: fly ?? this.fly,
      swim: swim ?? this.swim,
    );
  }

  Monster$Speed copyWithWrapped({
    Wrapped<String?>? walk,
    Wrapped<String?>? burrow,
    Wrapped<String?>? climb,
    Wrapped<String?>? fly,
    Wrapped<String?>? swim,
  }) {
    return Monster$Speed(
      walk: (walk != null ? walk.value : this.walk),
      burrow: (burrow != null ? burrow.value : this.burrow),
      climb: (climb != null ? climb.value : this.climb),
      fly: (fly != null ? fly.value : this.fly),
      swim: (swim != null ? swim.value : this.swim),
    );
  }
}

String? areaOfEffectTypeNullableToJson(
  enums.AreaOfEffectType? areaOfEffectType,
) {
  return areaOfEffectType?.value;
}

String? areaOfEffectTypeToJson(enums.AreaOfEffectType areaOfEffectType) {
  return areaOfEffectType.value;
}

enums.AreaOfEffectType areaOfEffectTypeFromJson(
  Object? areaOfEffectType, [
  enums.AreaOfEffectType? defaultValue,
]) {
  return enums.AreaOfEffectType.values.firstWhereOrNull(
        (e) => e.value == areaOfEffectType,
      ) ??
      defaultValue ??
      enums.AreaOfEffectType.swaggerGeneratedUnknown;
}

enums.AreaOfEffectType? areaOfEffectTypeNullableFromJson(
  Object? areaOfEffectType, [
  enums.AreaOfEffectType? defaultValue,
]) {
  if (areaOfEffectType == null) {
    return null;
  }
  return enums.AreaOfEffectType.values.firstWhereOrNull(
        (e) => e.value == areaOfEffectType,
      ) ??
      defaultValue;
}

String areaOfEffectTypeExplodedListToJson(
  List<enums.AreaOfEffectType>? areaOfEffectType,
) {
  return areaOfEffectType?.map((e) => e.value!).join(',') ?? '';
}

List<String> areaOfEffectTypeListToJson(
  List<enums.AreaOfEffectType>? areaOfEffectType,
) {
  if (areaOfEffectType == null) {
    return [];
  }

  return areaOfEffectType.map((e) => e.value!).toList();
}

List<enums.AreaOfEffectType> areaOfEffectTypeListFromJson(
  List? areaOfEffectType, [
  List<enums.AreaOfEffectType>? defaultValue,
]) {
  if (areaOfEffectType == null) {
    return defaultValue ?? [];
  }

  return areaOfEffectType
      .map((e) => areaOfEffectTypeFromJson(e.toString()))
      .toList();
}

List<enums.AreaOfEffectType>? areaOfEffectTypeNullableListFromJson(
  List? areaOfEffectType, [
  List<enums.AreaOfEffectType>? defaultValue,
]) {
  if (areaOfEffectType == null) {
    return defaultValue;
  }

  return areaOfEffectType
      .map((e) => areaOfEffectTypeFromJson(e.toString()))
      .toList();
}

String? magicItem$RarityNameNullableToJson(
  enums.MagicItem$RarityName? magicItem$RarityName,
) {
  return magicItem$RarityName?.value;
}

String? magicItem$RarityNameToJson(
  enums.MagicItem$RarityName magicItem$RarityName,
) {
  return magicItem$RarityName.value;
}

enums.MagicItem$RarityName magicItem$RarityNameFromJson(
  Object? magicItem$RarityName, [
  enums.MagicItem$RarityName? defaultValue,
]) {
  return enums.MagicItem$RarityName.values.firstWhereOrNull(
        (e) => e.value == magicItem$RarityName,
      ) ??
      defaultValue ??
      enums.MagicItem$RarityName.swaggerGeneratedUnknown;
}

enums.MagicItem$RarityName? magicItem$RarityNameNullableFromJson(
  Object? magicItem$RarityName, [
  enums.MagicItem$RarityName? defaultValue,
]) {
  if (magicItem$RarityName == null) {
    return null;
  }
  return enums.MagicItem$RarityName.values.firstWhereOrNull(
        (e) => e.value == magicItem$RarityName,
      ) ??
      defaultValue;
}

String magicItem$RarityNameExplodedListToJson(
  List<enums.MagicItem$RarityName>? magicItem$RarityName,
) {
  return magicItem$RarityName?.map((e) => e.value!).join(',') ?? '';
}

List<String> magicItem$RarityNameListToJson(
  List<enums.MagicItem$RarityName>? magicItem$RarityName,
) {
  if (magicItem$RarityName == null) {
    return [];
  }

  return magicItem$RarityName.map((e) => e.value!).toList();
}

List<enums.MagicItem$RarityName> magicItem$RarityNameListFromJson(
  List? magicItem$RarityName, [
  List<enums.MagicItem$RarityName>? defaultValue,
]) {
  if (magicItem$RarityName == null) {
    return defaultValue ?? [];
  }

  return magicItem$RarityName
      .map((e) => magicItem$RarityNameFromJson(e.toString()))
      .toList();
}

List<enums.MagicItem$RarityName>? magicItem$RarityNameNullableListFromJson(
  List? magicItem$RarityName, [
  List<enums.MagicItem$RarityName>? defaultValue,
]) {
  if (magicItem$RarityName == null) {
    return defaultValue;
  }

  return magicItem$RarityName
      .map((e) => magicItem$RarityNameFromJson(e.toString()))
      .toList();
}

String? languageTypeNullableToJson(enums.LanguageType? languageType) {
  return languageType?.value;
}

String? languageTypeToJson(enums.LanguageType languageType) {
  return languageType.value;
}

enums.LanguageType languageTypeFromJson(
  Object? languageType, [
  enums.LanguageType? defaultValue,
]) {
  return enums.LanguageType.values.firstWhereOrNull(
        (e) => e.value == languageType,
      ) ??
      defaultValue ??
      enums.LanguageType.swaggerGeneratedUnknown;
}

enums.LanguageType? languageTypeNullableFromJson(
  Object? languageType, [
  enums.LanguageType? defaultValue,
]) {
  if (languageType == null) {
    return null;
  }
  return enums.LanguageType.values.firstWhereOrNull(
        (e) => e.value == languageType,
      ) ??
      defaultValue;
}

String languageTypeExplodedListToJson(List<enums.LanguageType>? languageType) {
  return languageType?.map((e) => e.value!).join(',') ?? '';
}

List<String> languageTypeListToJson(List<enums.LanguageType>? languageType) {
  if (languageType == null) {
    return [];
  }

  return languageType.map((e) => e.value!).toList();
}

List<enums.LanguageType> languageTypeListFromJson(
  List? languageType, [
  List<enums.LanguageType>? defaultValue,
]) {
  if (languageType == null) {
    return defaultValue ?? [];
  }

  return languageType.map((e) => languageTypeFromJson(e.toString())).toList();
}

List<enums.LanguageType>? languageTypeNullableListFromJson(
  List? languageType, [
  List<enums.LanguageType>? defaultValue,
]) {
  if (languageType == null) {
    return defaultValue;
  }

  return languageType.map((e) => languageTypeFromJson(e.toString())).toList();
}

String? spellComponentsNullableToJson(enums.SpellComponents? spellComponents) {
  return spellComponents?.value;
}

String? spellComponentsToJson(enums.SpellComponents spellComponents) {
  return spellComponents.value;
}

enums.SpellComponents spellComponentsFromJson(
  Object? spellComponents, [
  enums.SpellComponents? defaultValue,
]) {
  return enums.SpellComponents.values.firstWhereOrNull(
        (e) => e.value == spellComponents,
      ) ??
      defaultValue ??
      enums.SpellComponents.swaggerGeneratedUnknown;
}

enums.SpellComponents? spellComponentsNullableFromJson(
  Object? spellComponents, [
  enums.SpellComponents? defaultValue,
]) {
  if (spellComponents == null) {
    return null;
  }
  return enums.SpellComponents.values.firstWhereOrNull(
        (e) => e.value == spellComponents,
      ) ??
      defaultValue;
}

String spellComponentsExplodedListToJson(
  List<enums.SpellComponents>? spellComponents,
) {
  return spellComponents?.map((e) => e.value!).join(',') ?? '';
}

List<String> spellComponentsListToJson(
  List<enums.SpellComponents>? spellComponents,
) {
  if (spellComponents == null) {
    return [];
  }

  return spellComponents.map((e) => e.value!).toList();
}

List<enums.SpellComponents> spellComponentsListFromJson(
  List? spellComponents, [
  List<enums.SpellComponents>? defaultValue,
]) {
  if (spellComponents == null) {
    return defaultValue ?? [];
  }

  return spellComponents
      .map((e) => spellComponentsFromJson(e.toString()))
      .toList();
}

List<enums.SpellComponents>? spellComponentsNullableListFromJson(
  List? spellComponents, [
  List<enums.SpellComponents>? defaultValue,
]) {
  if (spellComponents == null) {
    return defaultValue;
  }

  return spellComponents
      .map((e) => spellComponentsFromJson(e.toString()))
      .toList();
}

String? monsterSizeNullableToJson(enums.MonsterSize? monsterSize) {
  return monsterSize?.value;
}

String? monsterSizeToJson(enums.MonsterSize monsterSize) {
  return monsterSize.value;
}

enums.MonsterSize monsterSizeFromJson(
  Object? monsterSize, [
  enums.MonsterSize? defaultValue,
]) {
  return enums.MonsterSize.values.firstWhereOrNull(
        (e) => e.value == monsterSize,
      ) ??
      defaultValue ??
      enums.MonsterSize.swaggerGeneratedUnknown;
}

enums.MonsterSize? monsterSizeNullableFromJson(
  Object? monsterSize, [
  enums.MonsterSize? defaultValue,
]) {
  if (monsterSize == null) {
    return null;
  }
  return enums.MonsterSize.values.firstWhereOrNull(
        (e) => e.value == monsterSize,
      ) ??
      defaultValue;
}

String monsterSizeExplodedListToJson(List<enums.MonsterSize>? monsterSize) {
  return monsterSize?.map((e) => e.value!).join(',') ?? '';
}

List<String> monsterSizeListToJson(List<enums.MonsterSize>? monsterSize) {
  if (monsterSize == null) {
    return [];
  }

  return monsterSize.map((e) => e.value!).toList();
}

List<enums.MonsterSize> monsterSizeListFromJson(
  List? monsterSize, [
  List<enums.MonsterSize>? defaultValue,
]) {
  if (monsterSize == null) {
    return defaultValue ?? [];
  }

  return monsterSize.map((e) => monsterSizeFromJson(e.toString())).toList();
}

List<enums.MonsterSize>? monsterSizeNullableListFromJson(
  List? monsterSize, [
  List<enums.MonsterSize>? defaultValue,
]) {
  if (monsterSize == null) {
    return defaultValue;
  }

  return monsterSize.map((e) => monsterSizeFromJson(e.toString())).toList();
}

String? monsterMultiAttackActionTypeNullableToJson(
  enums.MonsterMultiAttackActionType? monsterMultiAttackActionType,
) {
  return monsterMultiAttackActionType?.value;
}

String? monsterMultiAttackActionTypeToJson(
  enums.MonsterMultiAttackActionType monsterMultiAttackActionType,
) {
  return monsterMultiAttackActionType.value;
}

enums.MonsterMultiAttackActionType monsterMultiAttackActionTypeFromJson(
  Object? monsterMultiAttackActionType, [
  enums.MonsterMultiAttackActionType? defaultValue,
]) {
  return enums.MonsterMultiAttackActionType.values.firstWhereOrNull(
        (e) => e.value == monsterMultiAttackActionType,
      ) ??
      defaultValue ??
      enums.MonsterMultiAttackActionType.swaggerGeneratedUnknown;
}

enums.MonsterMultiAttackActionType?
monsterMultiAttackActionTypeNullableFromJson(
  Object? monsterMultiAttackActionType, [
  enums.MonsterMultiAttackActionType? defaultValue,
]) {
  if (monsterMultiAttackActionType == null) {
    return null;
  }
  return enums.MonsterMultiAttackActionType.values.firstWhereOrNull(
        (e) => e.value == monsterMultiAttackActionType,
      ) ??
      defaultValue;
}

String monsterMultiAttackActionTypeExplodedListToJson(
  List<enums.MonsterMultiAttackActionType>? monsterMultiAttackActionType,
) {
  return monsterMultiAttackActionType?.map((e) => e.value!).join(',') ?? '';
}

List<String> monsterMultiAttackActionTypeListToJson(
  List<enums.MonsterMultiAttackActionType>? monsterMultiAttackActionType,
) {
  if (monsterMultiAttackActionType == null) {
    return [];
  }

  return monsterMultiAttackActionType.map((e) => e.value!).toList();
}

List<enums.MonsterMultiAttackActionType>
monsterMultiAttackActionTypeListFromJson(
  List? monsterMultiAttackActionType, [
  List<enums.MonsterMultiAttackActionType>? defaultValue,
]) {
  if (monsterMultiAttackActionType == null) {
    return defaultValue ?? [];
  }

  return monsterMultiAttackActionType
      .map((e) => monsterMultiAttackActionTypeFromJson(e.toString()))
      .toList();
}

List<enums.MonsterMultiAttackActionType>?
monsterMultiAttackActionTypeNullableListFromJson(
  List? monsterMultiAttackActionType, [
  List<enums.MonsterMultiAttackActionType>? defaultValue,
]) {
  if (monsterMultiAttackActionType == null) {
    return defaultValue;
  }

  return monsterMultiAttackActionType
      .map((e) => monsterMultiAttackActionTypeFromJson(e.toString()))
      .toList();
}

String? monsterUsageTypeNullableToJson(
  enums.MonsterUsageType? monsterUsageType,
) {
  return monsterUsageType?.value;
}

String? monsterUsageTypeToJson(enums.MonsterUsageType monsterUsageType) {
  return monsterUsageType.value;
}

enums.MonsterUsageType monsterUsageTypeFromJson(
  Object? monsterUsageType, [
  enums.MonsterUsageType? defaultValue,
]) {
  return enums.MonsterUsageType.values.firstWhereOrNull(
        (e) => e.value == monsterUsageType,
      ) ??
      defaultValue ??
      enums.MonsterUsageType.swaggerGeneratedUnknown;
}

enums.MonsterUsageType? monsterUsageTypeNullableFromJson(
  Object? monsterUsageType, [
  enums.MonsterUsageType? defaultValue,
]) {
  if (monsterUsageType == null) {
    return null;
  }
  return enums.MonsterUsageType.values.firstWhereOrNull(
        (e) => e.value == monsterUsageType,
      ) ??
      defaultValue;
}

String monsterUsageTypeExplodedListToJson(
  List<enums.MonsterUsageType>? monsterUsageType,
) {
  return monsterUsageType?.map((e) => e.value!).join(',') ?? '';
}

List<String> monsterUsageTypeListToJson(
  List<enums.MonsterUsageType>? monsterUsageType,
) {
  if (monsterUsageType == null) {
    return [];
  }

  return monsterUsageType.map((e) => e.value!).toList();
}

List<enums.MonsterUsageType> monsterUsageTypeListFromJson(
  List? monsterUsageType, [
  List<enums.MonsterUsageType>? defaultValue,
]) {
  if (monsterUsageType == null) {
    return defaultValue ?? [];
  }

  return monsterUsageType
      .map((e) => monsterUsageTypeFromJson(e.toString()))
      .toList();
}

List<enums.MonsterUsageType>? monsterUsageTypeNullableListFromJson(
  List? monsterUsageType, [
  List<enums.MonsterUsageType>? defaultValue,
]) {
  if (monsterUsageType == null) {
    return defaultValue;
  }

  return monsterUsageType
      .map((e) => monsterUsageTypeFromJson(e.toString()))
      .toList();
}

String? abilityScoreIndexNullableToJson(
  enums.AbilityScoreIndex? abilityScoreIndex,
) {
  return abilityScoreIndex?.value;
}

String? abilityScoreIndexToJson(enums.AbilityScoreIndex abilityScoreIndex) {
  return abilityScoreIndex.value;
}

enums.AbilityScoreIndex abilityScoreIndexFromJson(
  Object? abilityScoreIndex, [
  enums.AbilityScoreIndex? defaultValue,
]) {
  return enums.AbilityScoreIndex.values.firstWhereOrNull(
        (e) => e.value == abilityScoreIndex,
      ) ??
      defaultValue ??
      enums.AbilityScoreIndex.swaggerGeneratedUnknown;
}

enums.AbilityScoreIndex? abilityScoreIndexNullableFromJson(
  Object? abilityScoreIndex, [
  enums.AbilityScoreIndex? defaultValue,
]) {
  if (abilityScoreIndex == null) {
    return null;
  }
  return enums.AbilityScoreIndex.values.firstWhereOrNull(
        (e) => e.value == abilityScoreIndex,
      ) ??
      defaultValue;
}

String abilityScoreIndexExplodedListToJson(
  List<enums.AbilityScoreIndex>? abilityScoreIndex,
) {
  return abilityScoreIndex?.map((e) => e.value!).join(',') ?? '';
}

List<String> abilityScoreIndexListToJson(
  List<enums.AbilityScoreIndex>? abilityScoreIndex,
) {
  if (abilityScoreIndex == null) {
    return [];
  }

  return abilityScoreIndex.map((e) => e.value!).toList();
}

List<enums.AbilityScoreIndex> abilityScoreIndexListFromJson(
  List? abilityScoreIndex, [
  List<enums.AbilityScoreIndex>? defaultValue,
]) {
  if (abilityScoreIndex == null) {
    return defaultValue ?? [];
  }

  return abilityScoreIndex
      .map((e) => abilityScoreIndexFromJson(e.toString()))
      .toList();
}

List<enums.AbilityScoreIndex>? abilityScoreIndexNullableListFromJson(
  List? abilityScoreIndex, [
  List<enums.AbilityScoreIndex>? defaultValue,
]) {
  if (abilityScoreIndex == null) {
    return defaultValue;
  }

  return abilityScoreIndex
      .map((e) => abilityScoreIndexFromJson(e.toString()))
      .toList();
}

String? alignmentIndexNullableToJson(enums.AlignmentIndex? alignmentIndex) {
  return alignmentIndex?.value;
}

String? alignmentIndexToJson(enums.AlignmentIndex alignmentIndex) {
  return alignmentIndex.value;
}

enums.AlignmentIndex alignmentIndexFromJson(
  Object? alignmentIndex, [
  enums.AlignmentIndex? defaultValue,
]) {
  return enums.AlignmentIndex.values.firstWhereOrNull(
        (e) => e.value == alignmentIndex,
      ) ??
      defaultValue ??
      enums.AlignmentIndex.swaggerGeneratedUnknown;
}

enums.AlignmentIndex? alignmentIndexNullableFromJson(
  Object? alignmentIndex, [
  enums.AlignmentIndex? defaultValue,
]) {
  if (alignmentIndex == null) {
    return null;
  }
  return enums.AlignmentIndex.values.firstWhereOrNull(
        (e) => e.value == alignmentIndex,
      ) ??
      defaultValue;
}

String alignmentIndexExplodedListToJson(
  List<enums.AlignmentIndex>? alignmentIndex,
) {
  return alignmentIndex?.map((e) => e.value!).join(',') ?? '';
}

List<String> alignmentIndexListToJson(
  List<enums.AlignmentIndex>? alignmentIndex,
) {
  if (alignmentIndex == null) {
    return [];
  }

  return alignmentIndex.map((e) => e.value!).toList();
}

List<enums.AlignmentIndex> alignmentIndexListFromJson(
  List? alignmentIndex, [
  List<enums.AlignmentIndex>? defaultValue,
]) {
  if (alignmentIndex == null) {
    return defaultValue ?? [];
  }

  return alignmentIndex
      .map((e) => alignmentIndexFromJson(e.toString()))
      .toList();
}

List<enums.AlignmentIndex>? alignmentIndexNullableListFromJson(
  List? alignmentIndex, [
  List<enums.AlignmentIndex>? defaultValue,
]) {
  if (alignmentIndex == null) {
    return defaultValue;
  }

  return alignmentIndex
      .map((e) => alignmentIndexFromJson(e.toString()))
      .toList();
}

String? languageIndexNullableToJson(enums.LanguageIndex? languageIndex) {
  return languageIndex?.value;
}

String? languageIndexToJson(enums.LanguageIndex languageIndex) {
  return languageIndex.value;
}

enums.LanguageIndex languageIndexFromJson(
  Object? languageIndex, [
  enums.LanguageIndex? defaultValue,
]) {
  return enums.LanguageIndex.values.firstWhereOrNull(
        (e) => e.value == languageIndex,
      ) ??
      defaultValue ??
      enums.LanguageIndex.swaggerGeneratedUnknown;
}

enums.LanguageIndex? languageIndexNullableFromJson(
  Object? languageIndex, [
  enums.LanguageIndex? defaultValue,
]) {
  if (languageIndex == null) {
    return null;
  }
  return enums.LanguageIndex.values.firstWhereOrNull(
        (e) => e.value == languageIndex,
      ) ??
      defaultValue;
}

String languageIndexExplodedListToJson(
  List<enums.LanguageIndex>? languageIndex,
) {
  return languageIndex?.map((e) => e.value!).join(',') ?? '';
}

List<String> languageIndexListToJson(List<enums.LanguageIndex>? languageIndex) {
  if (languageIndex == null) {
    return [];
  }

  return languageIndex.map((e) => e.value!).toList();
}

List<enums.LanguageIndex> languageIndexListFromJson(
  List? languageIndex, [
  List<enums.LanguageIndex>? defaultValue,
]) {
  if (languageIndex == null) {
    return defaultValue ?? [];
  }

  return languageIndex.map((e) => languageIndexFromJson(e.toString())).toList();
}

List<enums.LanguageIndex>? languageIndexNullableListFromJson(
  List? languageIndex, [
  List<enums.LanguageIndex>? defaultValue,
]) {
  if (languageIndex == null) {
    return defaultValue;
  }

  return languageIndex.map((e) => languageIndexFromJson(e.toString())).toList();
}

String? skillIndexNullableToJson(enums.SkillIndex? skillIndex) {
  return skillIndex?.value;
}

String? skillIndexToJson(enums.SkillIndex skillIndex) {
  return skillIndex.value;
}

enums.SkillIndex skillIndexFromJson(
  Object? skillIndex, [
  enums.SkillIndex? defaultValue,
]) {
  return enums.SkillIndex.values.firstWhereOrNull(
        (e) => e.value == skillIndex,
      ) ??
      defaultValue ??
      enums.SkillIndex.swaggerGeneratedUnknown;
}

enums.SkillIndex? skillIndexNullableFromJson(
  Object? skillIndex, [
  enums.SkillIndex? defaultValue,
]) {
  if (skillIndex == null) {
    return null;
  }
  return enums.SkillIndex.values.firstWhereOrNull(
        (e) => e.value == skillIndex,
      ) ??
      defaultValue;
}

String skillIndexExplodedListToJson(List<enums.SkillIndex>? skillIndex) {
  return skillIndex?.map((e) => e.value!).join(',') ?? '';
}

List<String> skillIndexListToJson(List<enums.SkillIndex>? skillIndex) {
  if (skillIndex == null) {
    return [];
  }

  return skillIndex.map((e) => e.value!).toList();
}

List<enums.SkillIndex> skillIndexListFromJson(
  List? skillIndex, [
  List<enums.SkillIndex>? defaultValue,
]) {
  if (skillIndex == null) {
    return defaultValue ?? [];
  }

  return skillIndex.map((e) => skillIndexFromJson(e.toString())).toList();
}

List<enums.SkillIndex>? skillIndexNullableListFromJson(
  List? skillIndex, [
  List<enums.SkillIndex>? defaultValue,
]) {
  if (skillIndex == null) {
    return defaultValue;
  }

  return skillIndex.map((e) => skillIndexFromJson(e.toString())).toList();
}

String? classIndexNullableToJson(enums.ClassIndex? classIndex) {
  return classIndex?.value;
}

String? classIndexToJson(enums.ClassIndex classIndex) {
  return classIndex.value;
}

enums.ClassIndex classIndexFromJson(
  Object? classIndex, [
  enums.ClassIndex? defaultValue,
]) {
  return enums.ClassIndex.values.firstWhereOrNull(
        (e) => e.value == classIndex,
      ) ??
      defaultValue ??
      enums.ClassIndex.swaggerGeneratedUnknown;
}

enums.ClassIndex? classIndexNullableFromJson(
  Object? classIndex, [
  enums.ClassIndex? defaultValue,
]) {
  if (classIndex == null) {
    return null;
  }
  return enums.ClassIndex.values.firstWhereOrNull(
        (e) => e.value == classIndex,
      ) ??
      defaultValue;
}

String classIndexExplodedListToJson(List<enums.ClassIndex>? classIndex) {
  return classIndex?.map((e) => e.value!).join(',') ?? '';
}

List<String> classIndexListToJson(List<enums.ClassIndex>? classIndex) {
  if (classIndex == null) {
    return [];
  }

  return classIndex.map((e) => e.value!).toList();
}

List<enums.ClassIndex> classIndexListFromJson(
  List? classIndex, [
  List<enums.ClassIndex>? defaultValue,
]) {
  if (classIndex == null) {
    return defaultValue ?? [];
  }

  return classIndex.map((e) => classIndexFromJson(e.toString())).toList();
}

List<enums.ClassIndex>? classIndexNullableListFromJson(
  List? classIndex, [
  List<enums.ClassIndex>? defaultValue,
]) {
  if (classIndex == null) {
    return defaultValue;
  }

  return classIndex.map((e) => classIndexFromJson(e.toString())).toList();
}

String? backgroundIndexNullableToJson(enums.BackgroundIndex? backgroundIndex) {
  return backgroundIndex?.value;
}

String? backgroundIndexToJson(enums.BackgroundIndex backgroundIndex) {
  return backgroundIndex.value;
}

enums.BackgroundIndex backgroundIndexFromJson(
  Object? backgroundIndex, [
  enums.BackgroundIndex? defaultValue,
]) {
  return enums.BackgroundIndex.values.firstWhereOrNull(
        (e) => e.value == backgroundIndex,
      ) ??
      defaultValue ??
      enums.BackgroundIndex.swaggerGeneratedUnknown;
}

enums.BackgroundIndex? backgroundIndexNullableFromJson(
  Object? backgroundIndex, [
  enums.BackgroundIndex? defaultValue,
]) {
  if (backgroundIndex == null) {
    return null;
  }
  return enums.BackgroundIndex.values.firstWhereOrNull(
        (e) => e.value == backgroundIndex,
      ) ??
      defaultValue;
}

String backgroundIndexExplodedListToJson(
  List<enums.BackgroundIndex>? backgroundIndex,
) {
  return backgroundIndex?.map((e) => e.value!).join(',') ?? '';
}

List<String> backgroundIndexListToJson(
  List<enums.BackgroundIndex>? backgroundIndex,
) {
  if (backgroundIndex == null) {
    return [];
  }

  return backgroundIndex.map((e) => e.value!).toList();
}

List<enums.BackgroundIndex> backgroundIndexListFromJson(
  List? backgroundIndex, [
  List<enums.BackgroundIndex>? defaultValue,
]) {
  if (backgroundIndex == null) {
    return defaultValue ?? [];
  }

  return backgroundIndex
      .map((e) => backgroundIndexFromJson(e.toString()))
      .toList();
}

List<enums.BackgroundIndex>? backgroundIndexNullableListFromJson(
  List? backgroundIndex, [
  List<enums.BackgroundIndex>? defaultValue,
]) {
  if (backgroundIndex == null) {
    return defaultValue;
  }

  return backgroundIndex
      .map((e) => backgroundIndexFromJson(e.toString()))
      .toList();
}

String? weaponPropertyIndexNullableToJson(
  enums.WeaponPropertyIndex? weaponPropertyIndex,
) {
  return weaponPropertyIndex?.value;
}

String? weaponPropertyIndexToJson(
  enums.WeaponPropertyIndex weaponPropertyIndex,
) {
  return weaponPropertyIndex.value;
}

enums.WeaponPropertyIndex weaponPropertyIndexFromJson(
  Object? weaponPropertyIndex, [
  enums.WeaponPropertyIndex? defaultValue,
]) {
  return enums.WeaponPropertyIndex.values.firstWhereOrNull(
        (e) => e.value == weaponPropertyIndex,
      ) ??
      defaultValue ??
      enums.WeaponPropertyIndex.swaggerGeneratedUnknown;
}

enums.WeaponPropertyIndex? weaponPropertyIndexNullableFromJson(
  Object? weaponPropertyIndex, [
  enums.WeaponPropertyIndex? defaultValue,
]) {
  if (weaponPropertyIndex == null) {
    return null;
  }
  return enums.WeaponPropertyIndex.values.firstWhereOrNull(
        (e) => e.value == weaponPropertyIndex,
      ) ??
      defaultValue;
}

String weaponPropertyIndexExplodedListToJson(
  List<enums.WeaponPropertyIndex>? weaponPropertyIndex,
) {
  return weaponPropertyIndex?.map((e) => e.value!).join(',') ?? '';
}

List<String> weaponPropertyIndexListToJson(
  List<enums.WeaponPropertyIndex>? weaponPropertyIndex,
) {
  if (weaponPropertyIndex == null) {
    return [];
  }

  return weaponPropertyIndex.map((e) => e.value!).toList();
}

List<enums.WeaponPropertyIndex> weaponPropertyIndexListFromJson(
  List? weaponPropertyIndex, [
  List<enums.WeaponPropertyIndex>? defaultValue,
]) {
  if (weaponPropertyIndex == null) {
    return defaultValue ?? [];
  }

  return weaponPropertyIndex
      .map((e) => weaponPropertyIndexFromJson(e.toString()))
      .toList();
}

List<enums.WeaponPropertyIndex>? weaponPropertyIndexNullableListFromJson(
  List? weaponPropertyIndex, [
  List<enums.WeaponPropertyIndex>? defaultValue,
]) {
  if (weaponPropertyIndex == null) {
    return defaultValue;
  }

  return weaponPropertyIndex
      .map((e) => weaponPropertyIndexFromJson(e.toString()))
      .toList();
}

String? conditionIndexNullableToJson(enums.ConditionIndex? conditionIndex) {
  return conditionIndex?.value;
}

String? conditionIndexToJson(enums.ConditionIndex conditionIndex) {
  return conditionIndex.value;
}

enums.ConditionIndex conditionIndexFromJson(
  Object? conditionIndex, [
  enums.ConditionIndex? defaultValue,
]) {
  return enums.ConditionIndex.values.firstWhereOrNull(
        (e) => e.value == conditionIndex,
      ) ??
      defaultValue ??
      enums.ConditionIndex.swaggerGeneratedUnknown;
}

enums.ConditionIndex? conditionIndexNullableFromJson(
  Object? conditionIndex, [
  enums.ConditionIndex? defaultValue,
]) {
  if (conditionIndex == null) {
    return null;
  }
  return enums.ConditionIndex.values.firstWhereOrNull(
        (e) => e.value == conditionIndex,
      ) ??
      defaultValue;
}

String conditionIndexExplodedListToJson(
  List<enums.ConditionIndex>? conditionIndex,
) {
  return conditionIndex?.map((e) => e.value!).join(',') ?? '';
}

List<String> conditionIndexListToJson(
  List<enums.ConditionIndex>? conditionIndex,
) {
  if (conditionIndex == null) {
    return [];
  }

  return conditionIndex.map((e) => e.value!).toList();
}

List<enums.ConditionIndex> conditionIndexListFromJson(
  List? conditionIndex, [
  List<enums.ConditionIndex>? defaultValue,
]) {
  if (conditionIndex == null) {
    return defaultValue ?? [];
  }

  return conditionIndex
      .map((e) => conditionIndexFromJson(e.toString()))
      .toList();
}

List<enums.ConditionIndex>? conditionIndexNullableListFromJson(
  List? conditionIndex, [
  List<enums.ConditionIndex>? defaultValue,
]) {
  if (conditionIndex == null) {
    return defaultValue;
  }

  return conditionIndex
      .map((e) => conditionIndexFromJson(e.toString()))
      .toList();
}

String? damageTypeIndexNullableToJson(enums.DamageTypeIndex? damageTypeIndex) {
  return damageTypeIndex?.value;
}

String? damageTypeIndexToJson(enums.DamageTypeIndex damageTypeIndex) {
  return damageTypeIndex.value;
}

enums.DamageTypeIndex damageTypeIndexFromJson(
  Object? damageTypeIndex, [
  enums.DamageTypeIndex? defaultValue,
]) {
  return enums.DamageTypeIndex.values.firstWhereOrNull(
        (e) => e.value == damageTypeIndex,
      ) ??
      defaultValue ??
      enums.DamageTypeIndex.swaggerGeneratedUnknown;
}

enums.DamageTypeIndex? damageTypeIndexNullableFromJson(
  Object? damageTypeIndex, [
  enums.DamageTypeIndex? defaultValue,
]) {
  if (damageTypeIndex == null) {
    return null;
  }
  return enums.DamageTypeIndex.values.firstWhereOrNull(
        (e) => e.value == damageTypeIndex,
      ) ??
      defaultValue;
}

String damageTypeIndexExplodedListToJson(
  List<enums.DamageTypeIndex>? damageTypeIndex,
) {
  return damageTypeIndex?.map((e) => e.value!).join(',') ?? '';
}

List<String> damageTypeIndexListToJson(
  List<enums.DamageTypeIndex>? damageTypeIndex,
) {
  if (damageTypeIndex == null) {
    return [];
  }

  return damageTypeIndex.map((e) => e.value!).toList();
}

List<enums.DamageTypeIndex> damageTypeIndexListFromJson(
  List? damageTypeIndex, [
  List<enums.DamageTypeIndex>? defaultValue,
]) {
  if (damageTypeIndex == null) {
    return defaultValue ?? [];
  }

  return damageTypeIndex
      .map((e) => damageTypeIndexFromJson(e.toString()))
      .toList();
}

List<enums.DamageTypeIndex>? damageTypeIndexNullableListFromJson(
  List? damageTypeIndex, [
  List<enums.DamageTypeIndex>? defaultValue,
]) {
  if (damageTypeIndex == null) {
    return defaultValue;
  }

  return damageTypeIndex
      .map((e) => damageTypeIndexFromJson(e.toString()))
      .toList();
}

String? magicSchoolIndexNullableToJson(
  enums.MagicSchoolIndex? magicSchoolIndex,
) {
  return magicSchoolIndex?.value;
}

String? magicSchoolIndexToJson(enums.MagicSchoolIndex magicSchoolIndex) {
  return magicSchoolIndex.value;
}

enums.MagicSchoolIndex magicSchoolIndexFromJson(
  Object? magicSchoolIndex, [
  enums.MagicSchoolIndex? defaultValue,
]) {
  return enums.MagicSchoolIndex.values.firstWhereOrNull(
        (e) => e.value == magicSchoolIndex,
      ) ??
      defaultValue ??
      enums.MagicSchoolIndex.swaggerGeneratedUnknown;
}

enums.MagicSchoolIndex? magicSchoolIndexNullableFromJson(
  Object? magicSchoolIndex, [
  enums.MagicSchoolIndex? defaultValue,
]) {
  if (magicSchoolIndex == null) {
    return null;
  }
  return enums.MagicSchoolIndex.values.firstWhereOrNull(
        (e) => e.value == magicSchoolIndex,
      ) ??
      defaultValue;
}

String magicSchoolIndexExplodedListToJson(
  List<enums.MagicSchoolIndex>? magicSchoolIndex,
) {
  return magicSchoolIndex?.map((e) => e.value!).join(',') ?? '';
}

List<String> magicSchoolIndexListToJson(
  List<enums.MagicSchoolIndex>? magicSchoolIndex,
) {
  if (magicSchoolIndex == null) {
    return [];
  }

  return magicSchoolIndex.map((e) => e.value!).toList();
}

List<enums.MagicSchoolIndex> magicSchoolIndexListFromJson(
  List? magicSchoolIndex, [
  List<enums.MagicSchoolIndex>? defaultValue,
]) {
  if (magicSchoolIndex == null) {
    return defaultValue ?? [];
  }

  return magicSchoolIndex
      .map((e) => magicSchoolIndexFromJson(e.toString()))
      .toList();
}

List<enums.MagicSchoolIndex>? magicSchoolIndexNullableListFromJson(
  List? magicSchoolIndex, [
  List<enums.MagicSchoolIndex>? defaultValue,
]) {
  if (magicSchoolIndex == null) {
    return defaultValue;
  }

  return magicSchoolIndex
      .map((e) => magicSchoolIndexFromJson(e.toString()))
      .toList();
}

String? ruleIndexNullableToJson(enums.RuleIndex? ruleIndex) {
  return ruleIndex?.value;
}

String? ruleIndexToJson(enums.RuleIndex ruleIndex) {
  return ruleIndex.value;
}

enums.RuleIndex ruleIndexFromJson(
  Object? ruleIndex, [
  enums.RuleIndex? defaultValue,
]) {
  return enums.RuleIndex.values.firstWhereOrNull((e) => e.value == ruleIndex) ??
      defaultValue ??
      enums.RuleIndex.swaggerGeneratedUnknown;
}

enums.RuleIndex? ruleIndexNullableFromJson(
  Object? ruleIndex, [
  enums.RuleIndex? defaultValue,
]) {
  if (ruleIndex == null) {
    return null;
  }
  return enums.RuleIndex.values.firstWhereOrNull((e) => e.value == ruleIndex) ??
      defaultValue;
}

String ruleIndexExplodedListToJson(List<enums.RuleIndex>? ruleIndex) {
  return ruleIndex?.map((e) => e.value!).join(',') ?? '';
}

List<String> ruleIndexListToJson(List<enums.RuleIndex>? ruleIndex) {
  if (ruleIndex == null) {
    return [];
  }

  return ruleIndex.map((e) => e.value!).toList();
}

List<enums.RuleIndex> ruleIndexListFromJson(
  List? ruleIndex, [
  List<enums.RuleIndex>? defaultValue,
]) {
  if (ruleIndex == null) {
    return defaultValue ?? [];
  }

  return ruleIndex.map((e) => ruleIndexFromJson(e.toString())).toList();
}

List<enums.RuleIndex>? ruleIndexNullableListFromJson(
  List? ruleIndex, [
  List<enums.RuleIndex>? defaultValue,
]) {
  if (ruleIndex == null) {
    return defaultValue;
  }

  return ruleIndex.map((e) => ruleIndexFromJson(e.toString())).toList();
}

String? ruleSectionIndexNullableToJson(
  enums.RuleSectionIndex? ruleSectionIndex,
) {
  return ruleSectionIndex?.value;
}

String? ruleSectionIndexToJson(enums.RuleSectionIndex ruleSectionIndex) {
  return ruleSectionIndex.value;
}

enums.RuleSectionIndex ruleSectionIndexFromJson(
  Object? ruleSectionIndex, [
  enums.RuleSectionIndex? defaultValue,
]) {
  return enums.RuleSectionIndex.values.firstWhereOrNull(
        (e) => e.value == ruleSectionIndex,
      ) ??
      defaultValue ??
      enums.RuleSectionIndex.swaggerGeneratedUnknown;
}

enums.RuleSectionIndex? ruleSectionIndexNullableFromJson(
  Object? ruleSectionIndex, [
  enums.RuleSectionIndex? defaultValue,
]) {
  if (ruleSectionIndex == null) {
    return null;
  }
  return enums.RuleSectionIndex.values.firstWhereOrNull(
        (e) => e.value == ruleSectionIndex,
      ) ??
      defaultValue;
}

String ruleSectionIndexExplodedListToJson(
  List<enums.RuleSectionIndex>? ruleSectionIndex,
) {
  return ruleSectionIndex?.map((e) => e.value!).join(',') ?? '';
}

List<String> ruleSectionIndexListToJson(
  List<enums.RuleSectionIndex>? ruleSectionIndex,
) {
  if (ruleSectionIndex == null) {
    return [];
  }

  return ruleSectionIndex.map((e) => e.value!).toList();
}

List<enums.RuleSectionIndex> ruleSectionIndexListFromJson(
  List? ruleSectionIndex, [
  List<enums.RuleSectionIndex>? defaultValue,
]) {
  if (ruleSectionIndex == null) {
    return defaultValue ?? [];
  }

  return ruleSectionIndex
      .map((e) => ruleSectionIndexFromJson(e.toString()))
      .toList();
}

List<enums.RuleSectionIndex>? ruleSectionIndexNullableListFromJson(
  List? ruleSectionIndex, [
  List<enums.RuleSectionIndex>? defaultValue,
]) {
  if (ruleSectionIndex == null) {
    return defaultValue;
  }

  return ruleSectionIndex
      .map((e) => ruleSectionIndexFromJson(e.toString()))
      .toList();
}

String? raceIndexNullableToJson(enums.RaceIndex? raceIndex) {
  return raceIndex?.value;
}

String? raceIndexToJson(enums.RaceIndex raceIndex) {
  return raceIndex.value;
}

enums.RaceIndex raceIndexFromJson(
  Object? raceIndex, [
  enums.RaceIndex? defaultValue,
]) {
  return enums.RaceIndex.values.firstWhereOrNull((e) => e.value == raceIndex) ??
      defaultValue ??
      enums.RaceIndex.swaggerGeneratedUnknown;
}

enums.RaceIndex? raceIndexNullableFromJson(
  Object? raceIndex, [
  enums.RaceIndex? defaultValue,
]) {
  if (raceIndex == null) {
    return null;
  }
  return enums.RaceIndex.values.firstWhereOrNull((e) => e.value == raceIndex) ??
      defaultValue;
}

String raceIndexExplodedListToJson(List<enums.RaceIndex>? raceIndex) {
  return raceIndex?.map((e) => e.value!).join(',') ?? '';
}

List<String> raceIndexListToJson(List<enums.RaceIndex>? raceIndex) {
  if (raceIndex == null) {
    return [];
  }

  return raceIndex.map((e) => e.value!).toList();
}

List<enums.RaceIndex> raceIndexListFromJson(
  List? raceIndex, [
  List<enums.RaceIndex>? defaultValue,
]) {
  if (raceIndex == null) {
    return defaultValue ?? [];
  }

  return raceIndex.map((e) => raceIndexFromJson(e.toString())).toList();
}

List<enums.RaceIndex>? raceIndexNullableListFromJson(
  List? raceIndex, [
  List<enums.RaceIndex>? defaultValue,
]) {
  if (raceIndex == null) {
    return defaultValue;
  }

  return raceIndex.map((e) => raceIndexFromJson(e.toString())).toList();
}

String? subclassIndexNullableToJson(enums.SubclassIndex? subclassIndex) {
  return subclassIndex?.value;
}

String? subclassIndexToJson(enums.SubclassIndex subclassIndex) {
  return subclassIndex.value;
}

enums.SubclassIndex subclassIndexFromJson(
  Object? subclassIndex, [
  enums.SubclassIndex? defaultValue,
]) {
  return enums.SubclassIndex.values.firstWhereOrNull(
        (e) => e.value == subclassIndex,
      ) ??
      defaultValue ??
      enums.SubclassIndex.swaggerGeneratedUnknown;
}

enums.SubclassIndex? subclassIndexNullableFromJson(
  Object? subclassIndex, [
  enums.SubclassIndex? defaultValue,
]) {
  if (subclassIndex == null) {
    return null;
  }
  return enums.SubclassIndex.values.firstWhereOrNull(
        (e) => e.value == subclassIndex,
      ) ??
      defaultValue;
}

String subclassIndexExplodedListToJson(
  List<enums.SubclassIndex>? subclassIndex,
) {
  return subclassIndex?.map((e) => e.value!).join(',') ?? '';
}

List<String> subclassIndexListToJson(List<enums.SubclassIndex>? subclassIndex) {
  if (subclassIndex == null) {
    return [];
  }

  return subclassIndex.map((e) => e.value!).toList();
}

List<enums.SubclassIndex> subclassIndexListFromJson(
  List? subclassIndex, [
  List<enums.SubclassIndex>? defaultValue,
]) {
  if (subclassIndex == null) {
    return defaultValue ?? [];
  }

  return subclassIndex.map((e) => subclassIndexFromJson(e.toString())).toList();
}

List<enums.SubclassIndex>? subclassIndexNullableListFromJson(
  List? subclassIndex, [
  List<enums.SubclassIndex>? defaultValue,
]) {
  if (subclassIndex == null) {
    return defaultValue;
  }

  return subclassIndex.map((e) => subclassIndexFromJson(e.toString())).toList();
}

String? subraceIndexNullableToJson(enums.SubraceIndex? subraceIndex) {
  return subraceIndex?.value;
}

String? subraceIndexToJson(enums.SubraceIndex subraceIndex) {
  return subraceIndex.value;
}

enums.SubraceIndex subraceIndexFromJson(
  Object? subraceIndex, [
  enums.SubraceIndex? defaultValue,
]) {
  return enums.SubraceIndex.values.firstWhereOrNull(
        (e) => e.value == subraceIndex,
      ) ??
      defaultValue ??
      enums.SubraceIndex.swaggerGeneratedUnknown;
}

enums.SubraceIndex? subraceIndexNullableFromJson(
  Object? subraceIndex, [
  enums.SubraceIndex? defaultValue,
]) {
  if (subraceIndex == null) {
    return null;
  }
  return enums.SubraceIndex.values.firstWhereOrNull(
        (e) => e.value == subraceIndex,
      ) ??
      defaultValue;
}

String subraceIndexExplodedListToJson(List<enums.SubraceIndex>? subraceIndex) {
  return subraceIndex?.map((e) => e.value!).join(',') ?? '';
}

List<String> subraceIndexListToJson(List<enums.SubraceIndex>? subraceIndex) {
  if (subraceIndex == null) {
    return [];
  }

  return subraceIndex.map((e) => e.value!).toList();
}

List<enums.SubraceIndex> subraceIndexListFromJson(
  List? subraceIndex, [
  List<enums.SubraceIndex>? defaultValue,
]) {
  if (subraceIndex == null) {
    return defaultValue ?? [];
  }

  return subraceIndex.map((e) => subraceIndexFromJson(e.toString())).toList();
}

List<enums.SubraceIndex>? subraceIndexNullableListFromJson(
  List? subraceIndex, [
  List<enums.SubraceIndex>? defaultValue,
]) {
  if (subraceIndex == null) {
    return defaultValue;
  }

  return subraceIndex.map((e) => subraceIndexFromJson(e.toString())).toList();
}

String? traitIndexNullableToJson(enums.TraitIndex? traitIndex) {
  return traitIndex?.value;
}

String? traitIndexToJson(enums.TraitIndex traitIndex) {
  return traitIndex.value;
}

enums.TraitIndex traitIndexFromJson(
  Object? traitIndex, [
  enums.TraitIndex? defaultValue,
]) {
  return enums.TraitIndex.values.firstWhereOrNull(
        (e) => e.value == traitIndex,
      ) ??
      defaultValue ??
      enums.TraitIndex.swaggerGeneratedUnknown;
}

enums.TraitIndex? traitIndexNullableFromJson(
  Object? traitIndex, [
  enums.TraitIndex? defaultValue,
]) {
  if (traitIndex == null) {
    return null;
  }
  return enums.TraitIndex.values.firstWhereOrNull(
        (e) => e.value == traitIndex,
      ) ??
      defaultValue;
}

String traitIndexExplodedListToJson(List<enums.TraitIndex>? traitIndex) {
  return traitIndex?.map((e) => e.value!).join(',') ?? '';
}

List<String> traitIndexListToJson(List<enums.TraitIndex>? traitIndex) {
  if (traitIndex == null) {
    return [];
  }

  return traitIndex.map((e) => e.value!).toList();
}

List<enums.TraitIndex> traitIndexListFromJson(
  List? traitIndex, [
  List<enums.TraitIndex>? defaultValue,
]) {
  if (traitIndex == null) {
    return defaultValue ?? [];
  }

  return traitIndex.map((e) => traitIndexFromJson(e.toString())).toList();
}

List<enums.TraitIndex>? traitIndexNullableListFromJson(
  List? traitIndex, [
  List<enums.TraitIndex>? defaultValue,
]) {
  if (traitIndex == null) {
    return defaultValue;
  }

  return traitIndex.map((e) => traitIndexFromJson(e.toString())).toList();
}

String? baseEndpointIndexNullableToJson(
  enums.BaseEndpointIndex? baseEndpointIndex,
) {
  return baseEndpointIndex?.value;
}

String? baseEndpointIndexToJson(enums.BaseEndpointIndex baseEndpointIndex) {
  return baseEndpointIndex.value;
}

enums.BaseEndpointIndex baseEndpointIndexFromJson(
  Object? baseEndpointIndex, [
  enums.BaseEndpointIndex? defaultValue,
]) {
  return enums.BaseEndpointIndex.values.firstWhereOrNull(
        (e) => e.value == baseEndpointIndex,
      ) ??
      defaultValue ??
      enums.BaseEndpointIndex.swaggerGeneratedUnknown;
}

enums.BaseEndpointIndex? baseEndpointIndexNullableFromJson(
  Object? baseEndpointIndex, [
  enums.BaseEndpointIndex? defaultValue,
]) {
  if (baseEndpointIndex == null) {
    return null;
  }
  return enums.BaseEndpointIndex.values.firstWhereOrNull(
        (e) => e.value == baseEndpointIndex,
      ) ??
      defaultValue;
}

String baseEndpointIndexExplodedListToJson(
  List<enums.BaseEndpointIndex>? baseEndpointIndex,
) {
  return baseEndpointIndex?.map((e) => e.value!).join(',') ?? '';
}

List<String> baseEndpointIndexListToJson(
  List<enums.BaseEndpointIndex>? baseEndpointIndex,
) {
  if (baseEndpointIndex == null) {
    return [];
  }

  return baseEndpointIndex.map((e) => e.value!).toList();
}

List<enums.BaseEndpointIndex> baseEndpointIndexListFromJson(
  List? baseEndpointIndex, [
  List<enums.BaseEndpointIndex>? defaultValue,
]) {
  if (baseEndpointIndex == null) {
    return defaultValue ?? [];
  }

  return baseEndpointIndex
      .map((e) => baseEndpointIndexFromJson(e.toString()))
      .toList();
}

List<enums.BaseEndpointIndex>? baseEndpointIndexNullableListFromJson(
  List? baseEndpointIndex, [
  List<enums.BaseEndpointIndex>? defaultValue,
]) {
  if (baseEndpointIndex == null) {
    return defaultValue;
  }

  return baseEndpointIndex
      .map((e) => baseEndpointIndexFromJson(e.toString()))
      .toList();
}

String? api2014FeatsIndexGetIndexNullableToJson(
  enums.Api2014FeatsIndexGetIndex? api2014FeatsIndexGetIndex,
) {
  return api2014FeatsIndexGetIndex?.value;
}

String? api2014FeatsIndexGetIndexToJson(
  enums.Api2014FeatsIndexGetIndex api2014FeatsIndexGetIndex,
) {
  return api2014FeatsIndexGetIndex.value;
}

enums.Api2014FeatsIndexGetIndex api2014FeatsIndexGetIndexFromJson(
  Object? api2014FeatsIndexGetIndex, [
  enums.Api2014FeatsIndexGetIndex? defaultValue,
]) {
  return enums.Api2014FeatsIndexGetIndex.values.firstWhereOrNull(
        (e) => e.value == api2014FeatsIndexGetIndex,
      ) ??
      defaultValue ??
      enums.Api2014FeatsIndexGetIndex.swaggerGeneratedUnknown;
}

enums.Api2014FeatsIndexGetIndex? api2014FeatsIndexGetIndexNullableFromJson(
  Object? api2014FeatsIndexGetIndex, [
  enums.Api2014FeatsIndexGetIndex? defaultValue,
]) {
  if (api2014FeatsIndexGetIndex == null) {
    return null;
  }
  return enums.Api2014FeatsIndexGetIndex.values.firstWhereOrNull(
        (e) => e.value == api2014FeatsIndexGetIndex,
      ) ??
      defaultValue;
}

String api2014FeatsIndexGetIndexExplodedListToJson(
  List<enums.Api2014FeatsIndexGetIndex>? api2014FeatsIndexGetIndex,
) {
  return api2014FeatsIndexGetIndex?.map((e) => e.value!).join(',') ?? '';
}

List<String> api2014FeatsIndexGetIndexListToJson(
  List<enums.Api2014FeatsIndexGetIndex>? api2014FeatsIndexGetIndex,
) {
  if (api2014FeatsIndexGetIndex == null) {
    return [];
  }

  return api2014FeatsIndexGetIndex.map((e) => e.value!).toList();
}

List<enums.Api2014FeatsIndexGetIndex> api2014FeatsIndexGetIndexListFromJson(
  List? api2014FeatsIndexGetIndex, [
  List<enums.Api2014FeatsIndexGetIndex>? defaultValue,
]) {
  if (api2014FeatsIndexGetIndex == null) {
    return defaultValue ?? [];
  }

  return api2014FeatsIndexGetIndex
      .map((e) => api2014FeatsIndexGetIndexFromJson(e.toString()))
      .toList();
}

List<enums.Api2014FeatsIndexGetIndex>?
api2014FeatsIndexGetIndexNullableListFromJson(
  List? api2014FeatsIndexGetIndex, [
  List<enums.Api2014FeatsIndexGetIndex>? defaultValue,
]) {
  if (api2014FeatsIndexGetIndex == null) {
    return defaultValue;
  }

  return api2014FeatsIndexGetIndex
      .map((e) => api2014FeatsIndexGetIndexFromJson(e.toString()))
      .toList();
}

// ignore: unused_element
String? _dateToJson(DateTime? date) {
  if (date == null) {
    return null;
  }

  final year = date.year.toString();
  final month = date.month < 10 ? '0${date.month}' : date.month.toString();
  final day = date.day < 10 ? '0${date.day}' : date.day.toString();

  return '$year-$month-$day';
}

class Wrapped<T> {
  final T value;
  const Wrapped.value(this.value);
}
