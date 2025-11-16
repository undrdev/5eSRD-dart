const String monstersOverviewQuery = r'''
query MonstersOverview($skip: Int, $limit: Int, $name: String, $type: String) {
  monsters(skip: $skip, limit: $limit, name: $name, type: $type) {
    index
    name
    size
    type
    alignment
    hit_points
    challenge_rating
    armor_class {
      __typename
      ... on ArmorClassDex {
        type
        value
        desc
      }
      ... on ArmorClassNatural {
        type
        value
        desc
      }
      ... on ArmorClassArmor {
        type
        value
        desc
        armor {
          index
          name
        }
      }
      ... on ArmorClassCondition {
        type
        value
        desc
        condition {
          index
          name
        }
      }
      ... on ArmorClassSpell {
        type
        value
        desc
        spell {
          index
          name
        }
      }
    }
  }
}
''';

const String monsterDetailQuery = r'''
query MonsterDetail($index: String!) {
  monster(index: $index) {
    index
    name
    size
    type
    alignment
    hit_points
    hit_points_roll
    challenge_rating
    xp
    strength
    dexterity
    constitution
    intelligence
    wisdom
    charisma
    senses {
      darkvision
      blindsight
      tremorsense
      truesight
      passive_perception
    }
    languages
    damage_resistances
    damage_vulnerabilities
    damage_immunities
    condition_immunities {
      index
      name
    }
    proficiencies {
      proficiency {
        index
        name
      }
      value
    }
    armor_class {
      __typename
      ... on ArmorClassDex {
        type
        value
        desc
      }
      ... on ArmorClassNatural {
        type
        value
        desc
      }
      ... on ArmorClassArmor {
        type
        value
        desc
        armor {
          index
          name
        }
      }
      ... on ArmorClassCondition {
        type
        value
        desc
        condition {
          index
          name
        }
      }
      ... on ArmorClassSpell {
        type
        value
        desc
        spell {
          index
          name
        }
      }
    }
    special_abilities {
      name
      desc
    }
    speed {
      walk
      fly
      swim
      burrow
      climb
      hover
    }
  }
}
''';

const String abilityScoresQuery = r'''
query AbilityScores($skip: Int, $limit: Int) {
  abilityScores(skip: $skip, limit: $limit) {
    index
    name
    full_name
    desc
    skills {
      index
      name
    }
  }
}
''';
