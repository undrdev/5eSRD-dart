// coverage:ignore-file
// ignore_for_file: type=lint

import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';

enum AreaOfEffectType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('sphere')
  sphere('sphere'),
  @JsonValue('cone')
  cone('cone'),
  @JsonValue('cylinder')
  cylinder('cylinder'),
  @JsonValue('line')
  line('line'),
  @JsonValue('cube')
  cube('cube');

  final String? value;

  const AreaOfEffectType(this.value);
}

enum MagicItem$RarityName {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('Varies')
  varies('Varies'),
  @JsonValue('Common')
  common('Common'),
  @JsonValue('Uncommon')
  uncommon('Uncommon'),
  @JsonValue('Rare')
  rare('Rare'),
  @JsonValue('Very Rare')
  veryRare('Very Rare'),
  @JsonValue('Legendary')
  legendary('Legendary'),
  @JsonValue('Artifact')
  artifact('Artifact');

  final String? value;

  const MagicItem$RarityName(this.value);
}

enum LanguageType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('Standard')
  standard('Standard'),
  @JsonValue('Exotic')
  exotic('Exotic');

  final String? value;

  const LanguageType(this.value);
}

enum SpellComponents {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('V')
  v('V'),
  @JsonValue('S')
  s('S'),
  @JsonValue('M')
  m('M');

  final String? value;

  const SpellComponents(this.value);
}

enum MonsterSize {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('Tiny')
  tiny('Tiny'),
  @JsonValue('Small')
  small('Small'),
  @JsonValue('Medium')
  medium('Medium'),
  @JsonValue('Large')
  large('Large'),
  @JsonValue('Huge')
  huge('Huge'),
  @JsonValue('Gargantuan')
  gargantuan('Gargantuan');

  final String? value;

  const MonsterSize(this.value);
}

enum MonsterMultiAttackActionType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('melee')
  melee('melee'),
  @JsonValue('ranged')
  ranged('ranged'),
  @JsonValue('ability')
  ability('ability'),
  @JsonValue('magic')
  magic('magic');

  final String? value;

  const MonsterMultiAttackActionType(this.value);
}

enum MonsterUsageType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('at will')
  atWill('at will'),
  @JsonValue('per day')
  perDay('per day'),
  @JsonValue('recharge after rest')
  rechargeAfterRest('recharge after rest'),
  @JsonValue('recharge on roll')
  rechargeOnRoll('recharge on roll');

  final String? value;

  const MonsterUsageType(this.value);
}

enum AbilityScoreIndex {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('cha')
  cha('cha'),
  @JsonValue('con')
  con('con'),
  @JsonValue('dex')
  dex('dex'),
  @JsonValue('int')
  int('int'),
  @JsonValue('str')
  str('str'),
  @JsonValue('wis')
  wis('wis');

  final String? value;

  const AbilityScoreIndex(this.value);
}

enum AlignmentIndex {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('chaotic-neutral')
  chaoticNeutral('chaotic-neutral'),
  @JsonValue('chaotic-evil')
  chaoticEvil('chaotic-evil'),
  @JsonValue('chaotic-good')
  chaoticGood('chaotic-good'),
  @JsonValue('lawful-neutral')
  lawfulNeutral('lawful-neutral'),
  @JsonValue('lawful-evil')
  lawfulEvil('lawful-evil'),
  @JsonValue('lawful-good')
  lawfulGood('lawful-good'),
  @JsonValue('neutral')
  neutral('neutral'),
  @JsonValue('neutral-evil')
  neutralEvil('neutral-evil'),
  @JsonValue('neutral-good')
  neutralGood('neutral-good');

  final String? value;

  const AlignmentIndex(this.value);
}

enum LanguageIndex {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('abyssal')
  abyssal('abyssal'),
  @JsonValue('celestial')
  celestial('celestial'),
  @JsonValue('common')
  common('common'),
  @JsonValue('deep-speech')
  deepSpeech('deep-speech'),
  @JsonValue('draconic')
  draconic('draconic'),
  @JsonValue('dwarvish')
  dwarvish('dwarvish'),
  @JsonValue('elvish')
  elvish('elvish'),
  @JsonValue('giant')
  giant('giant'),
  @JsonValue('gnomish')
  gnomish('gnomish'),
  @JsonValue('goblin')
  goblin('goblin'),
  @JsonValue('halfling')
  halfling('halfling'),
  @JsonValue('infernal')
  infernal('infernal'),
  @JsonValue('orc')
  orc('orc'),
  @JsonValue('primordial')
  primordial('primordial'),
  @JsonValue('sylvan')
  sylvan('sylvan'),
  @JsonValue('undercommon')
  undercommon('undercommon');

  final String? value;

  const LanguageIndex(this.value);
}

enum SkillIndex {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('acrobatics')
  acrobatics('acrobatics'),
  @JsonValue('animal-handling')
  animalHandling('animal-handling'),
  @JsonValue('arcana')
  arcana('arcana'),
  @JsonValue('athletics')
  athletics('athletics'),
  @JsonValue('deception')
  deception('deception'),
  @JsonValue('history')
  history('history'),
  @JsonValue('insight')
  insight('insight'),
  @JsonValue('intimidation')
  intimidation('intimidation'),
  @JsonValue('investigation')
  investigation('investigation'),
  @JsonValue('medicine')
  medicine('medicine'),
  @JsonValue('nature')
  nature('nature'),
  @JsonValue('perception')
  perception('perception'),
  @JsonValue('performance')
  performance('performance'),
  @JsonValue('persuasion')
  persuasion('persuasion'),
  @JsonValue('religion')
  religion('religion'),
  @JsonValue('sleight-of-hand')
  sleightOfHand('sleight-of-hand'),
  @JsonValue('stealth')
  stealth('stealth'),
  @JsonValue('survival')
  survival('survival');

  final String? value;

  const SkillIndex(this.value);
}

enum ClassIndex {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('barbarian')
  barbarian('barbarian'),
  @JsonValue('bard')
  bard('bard'),
  @JsonValue('cleric')
  cleric('cleric'),
  @JsonValue('druid')
  druid('druid'),
  @JsonValue('fighter')
  fighter('fighter'),
  @JsonValue('monk')
  monk('monk'),
  @JsonValue('paladin')
  paladin('paladin'),
  @JsonValue('ranger')
  ranger('ranger'),
  @JsonValue('rogue')
  rogue('rogue'),
  @JsonValue('sorcerer')
  sorcerer('sorcerer'),
  @JsonValue('warlock')
  warlock('warlock'),
  @JsonValue('wizard')
  wizard('wizard');

  final String? value;

  const ClassIndex(this.value);
}

enum BackgroundIndex {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('acolyte')
  acolyte('acolyte');

  final String? value;

  const BackgroundIndex(this.value);
}

enum WeaponPropertyIndex {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('ammunition')
  ammunition('ammunition'),
  @JsonValue('finesse')
  finesse('finesse'),
  @JsonValue('heavy')
  heavy('heavy'),
  @JsonValue('light')
  light('light'),
  @JsonValue('loading')
  loading('loading'),
  @JsonValue('monk')
  monk('monk'),
  @JsonValue('reach')
  reach('reach'),
  @JsonValue('special')
  special('special'),
  @JsonValue('thrown')
  thrown('thrown'),
  @JsonValue('two-handed')
  twoHanded('two-handed'),
  @JsonValue('versatile')
  versatile('versatile');

  final String? value;

  const WeaponPropertyIndex(this.value);
}

enum ConditionIndex {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('blinded')
  blinded('blinded'),
  @JsonValue('charmed')
  charmed('charmed'),
  @JsonValue('deafened')
  deafened('deafened'),
  @JsonValue('exhaustion')
  exhaustion('exhaustion'),
  @JsonValue('frightened')
  frightened('frightened'),
  @JsonValue('grappled')
  grappled('grappled'),
  @JsonValue('incapacitated')
  incapacitated('incapacitated'),
  @JsonValue('invisible')
  invisible('invisible'),
  @JsonValue('paralyzed')
  paralyzed('paralyzed'),
  @JsonValue('petrified')
  petrified('petrified'),
  @JsonValue('poisoned')
  poisoned('poisoned'),
  @JsonValue('prone')
  prone('prone'),
  @JsonValue('restrained')
  restrained('restrained'),
  @JsonValue('stunned')
  stunned('stunned'),
  @JsonValue('unconscious')
  unconscious('unconscious');

  final String? value;

  const ConditionIndex(this.value);
}

enum DamageTypeIndex {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('acid')
  acid('acid'),
  @JsonValue('bludgeoning')
  bludgeoning('bludgeoning'),
  @JsonValue('cold')
  cold('cold'),
  @JsonValue('fire')
  fire('fire'),
  @JsonValue('force')
  force('force'),
  @JsonValue('lightning')
  lightning('lightning'),
  @JsonValue('necrotic')
  necrotic('necrotic'),
  @JsonValue('piercing')
  piercing('piercing'),
  @JsonValue('poison')
  poison('poison'),
  @JsonValue('psychic')
  psychic('psychic'),
  @JsonValue('radiant')
  radiant('radiant'),
  @JsonValue('slashing')
  slashing('slashing'),
  @JsonValue('thunder')
  thunder('thunder');

  final String? value;

  const DamageTypeIndex(this.value);
}

enum MagicSchoolIndex {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('abjuration')
  abjuration('abjuration'),
  @JsonValue('conjuration')
  conjuration('conjuration'),
  @JsonValue('divination')
  divination('divination'),
  @JsonValue('enchantment')
  enchantment('enchantment'),
  @JsonValue('evocation')
  evocation('evocation'),
  @JsonValue('illusion')
  illusion('illusion'),
  @JsonValue('necromancy')
  necromancy('necromancy'),
  @JsonValue('transmutation')
  transmutation('transmutation');

  final String? value;

  const MagicSchoolIndex(this.value);
}

enum RuleIndex {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('adventuring')
  adventuring('adventuring'),
  @JsonValue('appendix')
  appendix('appendix'),
  @JsonValue('combat')
  combat('combat'),
  @JsonValue('equipment')
  equipment('equipment'),
  @JsonValue('spellcasting')
  spellcasting('spellcasting'),
  @JsonValue('using-ability-scores')
  usingAbilityScores('using-ability-scores');

  final String? value;

  const RuleIndex(this.value);
}

enum RuleSectionIndex {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('ability-checks')
  abilityChecks('ability-checks'),
  @JsonValue('ability-scores-and-modifiers')
  abilityScoresAndModifiers('ability-scores-and-modifiers'),
  @JsonValue('actions-in-combat')
  actionsInCombat('actions-in-combat'),
  @JsonValue('activating-an-item')
  activatingAnItem('activating-an-item'),
  @JsonValue('advantage-and-disadvantage')
  advantageAndDisadvantage('advantage-and-disadvantage'),
  @JsonValue('attunement')
  attunement('attunement'),
  @JsonValue('between-adventures')
  betweenAdventures('between-adventures'),
  @JsonValue('casting-a-spell')
  castingASpell('casting-a-spell'),
  @JsonValue('cover')
  cover('cover'),
  @JsonValue('damage-and-healing')
  damageAndHealing('damage-and-healing'),
  @JsonValue('diseases')
  diseases('diseases'),
  @JsonValue('fantasy-historical-pantheons')
  fantasyHistoricalPantheons('fantasy-historical-pantheons'),
  @JsonValue('madness')
  madness('madness'),
  @JsonValue('making-an-attack')
  makingAnAttack('making-an-attack'),
  @JsonValue('mounted-combat')
  mountedCombat('mounted-combat'),
  @JsonValue('movement')
  movement('movement'),
  @JsonValue('movement-and-position')
  movementAndPosition('movement-and-position'),
  @JsonValue('objects')
  objects('objects'),
  @JsonValue('poisons')
  poisons('poisons'),
  @JsonValue('proficiency-bonus')
  proficiencyBonus('proficiency-bonus'),
  @JsonValue('resting')
  resting('resting'),
  @JsonValue('saving-throws')
  savingThrows('saving-throws'),
  @JsonValue('sentient-magic-items')
  sentientMagicItems('sentient-magic-items'),
  @JsonValue('standard-exchange-rates')
  standardExchangeRates('standard-exchange-rates'),
  @JsonValue('the-environment')
  theEnvironment('the-environment'),
  @JsonValue('the-order-of-combat')
  theOrderOfCombat('the-order-of-combat'),
  @JsonValue('the-planes-of-existence')
  thePlanesOfExistence('the-planes-of-existence'),
  @JsonValue('time')
  time('time'),
  @JsonValue('traps')
  traps('traps'),
  @JsonValue('underwater-combat')
  underwaterCombat('underwater-combat'),
  @JsonValue('using-each-ability')
  usingEachAbility('using-each-ability'),
  @JsonValue('wearing-and-wielding-items')
  wearingAndWieldingItems('wearing-and-wielding-items'),
  @JsonValue('what-is-a-spell')
  whatIsASpell('what-is-a-spell');

  final String? value;

  const RuleSectionIndex(this.value);
}

enum RaceIndex {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('dragonborn')
  dragonborn('dragonborn'),
  @JsonValue('dwarf')
  dwarf('dwarf'),
  @JsonValue('elf')
  elf('elf'),
  @JsonValue('gnome')
  gnome('gnome'),
  @JsonValue('half-elf')
  halfElf('half-elf'),
  @JsonValue('half-orc')
  halfOrc('half-orc'),
  @JsonValue('halfling')
  halfling('halfling'),
  @JsonValue('human')
  human('human'),
  @JsonValue('tiefling')
  tiefling('tiefling');

  final String? value;

  const RaceIndex(this.value);
}

enum SubclassIndex {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('berserker')
  berserker('berserker'),
  @JsonValue('champion')
  champion('champion'),
  @JsonValue('devotion')
  devotion('devotion'),
  @JsonValue('draconic')
  draconic('draconic'),
  @JsonValue('evocation')
  evocation('evocation'),
  @JsonValue('fiend')
  fiend('fiend'),
  @JsonValue('hunter')
  hunter('hunter'),
  @JsonValue('land')
  land('land'),
  @JsonValue('life')
  life('life'),
  @JsonValue('lore')
  lore('lore'),
  @JsonValue('open-hand')
  openHand('open-hand'),
  @JsonValue('thief')
  thief('thief');

  final String? value;

  const SubclassIndex(this.value);
}

enum SubraceIndex {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('high-elf')
  highElf('high-elf'),
  @JsonValue('hill-dwarf')
  hillDwarf('hill-dwarf'),
  @JsonValue('lightfoot-halfling')
  lightfootHalfling('lightfoot-halfling'),
  @JsonValue('rock-gnome')
  rockGnome('rock-gnome');

  final String? value;

  const SubraceIndex(this.value);
}

enum TraitIndex {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('artificers-lore')
  artificersLore('artificers-lore'),
  @JsonValue('brave')
  brave('brave'),
  @JsonValue('breath-weapon')
  breathWeapon('breath-weapon'),
  @JsonValue('damage-resistance')
  damageResistance('damage-resistance'),
  @JsonValue('darkvision')
  darkvision('darkvision'),
  @JsonValue('draconic-ancestry')
  draconicAncestry('draconic-ancestry'),
  @JsonValue('draconic-ancestry-black')
  draconicAncestryBlack('draconic-ancestry-black'),
  @JsonValue('draconic-ancestry-blue')
  draconicAncestryBlue('draconic-ancestry-blue'),
  @JsonValue('draconic-ancestry-brass')
  draconicAncestryBrass('draconic-ancestry-brass'),
  @JsonValue('draconic-ancestry-bronze')
  draconicAncestryBronze('draconic-ancestry-bronze'),
  @JsonValue('draconic-ancestry-copper')
  draconicAncestryCopper('draconic-ancestry-copper'),
  @JsonValue('draconic-ancestry-gold')
  draconicAncestryGold('draconic-ancestry-gold'),
  @JsonValue('draconic-ancestry-green')
  draconicAncestryGreen('draconic-ancestry-green'),
  @JsonValue('draconic-ancestry-red')
  draconicAncestryRed('draconic-ancestry-red'),
  @JsonValue('draconic-ancestry-silver')
  draconicAncestrySilver('draconic-ancestry-silver'),
  @JsonValue('draconic-ancestry-white')
  draconicAncestryWhite('draconic-ancestry-white'),
  @JsonValue('dwarven-combat-training')
  dwarvenCombatTraining('dwarven-combat-training'),
  @JsonValue('dwarven-resilience')
  dwarvenResilience('dwarven-resilience'),
  @JsonValue('dwarven-toughness')
  dwarvenToughness('dwarven-toughness'),
  @JsonValue('elf-weapon-training')
  elfWeaponTraining('elf-weapon-training'),
  @JsonValue('extra-language')
  extraLanguage('extra-language'),
  @JsonValue('fey-ancestry')
  feyAncestry('fey-ancestry'),
  @JsonValue('gnome-cunning')
  gnomeCunning('gnome-cunning'),
  @JsonValue('halfling-nimbleness')
  halflingNimbleness('halfling-nimbleness'),
  @JsonValue('hellish-resistance')
  hellishResistance('hellish-resistance'),
  @JsonValue('high-elf-cantrip')
  highElfCantrip('high-elf-cantrip'),
  @JsonValue('infernal-legacy')
  infernalLegacy('infernal-legacy'),
  @JsonValue('keen-senses')
  keenSenses('keen-senses'),
  @JsonValue('lucky')
  lucky('lucky'),
  @JsonValue('menacing')
  menacing('menacing'),
  @JsonValue('naturally-stealthy')
  naturallyStealthy('naturally-stealthy'),
  @JsonValue('relentless-endurance')
  relentlessEndurance('relentless-endurance'),
  @JsonValue('savage-attacks')
  savageAttacks('savage-attacks'),
  @JsonValue('skill-versatility')
  skillVersatility('skill-versatility'),
  @JsonValue('stonecunning')
  stonecunning('stonecunning'),
  @JsonValue('tinker')
  tinker('tinker'),
  @JsonValue('tool-proficiency')
  toolProficiency('tool-proficiency'),
  @JsonValue('trance')
  trance('trance');

  final String? value;

  const TraitIndex(this.value);
}

enum BaseEndpointIndex {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('ability-scores')
  abilityScores('ability-scores'),
  @JsonValue('alignments')
  alignments('alignments'),
  @JsonValue('backgrounds')
  backgrounds('backgrounds'),
  @JsonValue('classes')
  classes('classes'),
  @JsonValue('conditions')
  conditions('conditions'),
  @JsonValue('damage-types')
  damageTypes('damage-types'),
  @JsonValue('equipment')
  equipment('equipment'),
  @JsonValue('equipment-categories')
  equipmentCategories('equipment-categories'),
  @JsonValue('feats')
  feats('feats'),
  @JsonValue('features')
  features('features'),
  @JsonValue('languages')
  languages('languages'),
  @JsonValue('magic-items')
  magicItems('magic-items'),
  @JsonValue('magic-schools')
  magicSchools('magic-schools'),
  @JsonValue('monsters')
  monsters('monsters'),
  @JsonValue('proficiencies')
  proficiencies('proficiencies'),
  @JsonValue('races')
  races('races'),
  @JsonValue('rule-sections')
  ruleSections('rule-sections'),
  @JsonValue('rules')
  rules('rules'),
  @JsonValue('skills')
  skills('skills'),
  @JsonValue('spells')
  spells('spells'),
  @JsonValue('subclasses')
  subclasses('subclasses'),
  @JsonValue('subraces')
  subraces('subraces'),
  @JsonValue('traits')
  traits('traits'),
  @JsonValue('weapon-properties')
  weaponProperties('weapon-properties');

  final String? value;

  const BaseEndpointIndex(this.value);
}

enum Api2014FeatsIndexGetIndex {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('grappler')
  grappler('grappler');

  final String? value;

  const Api2014FeatsIndexGetIndex(this.value);
}
