import 'package:fiveesrd_client/fiveesrd_client.dart';
import 'package:fiveesrd_models/fiveesrd_models.dart';

/// Test that Equipment.fromJson() correctly deserializes into concrete types.
Future<void> main() async {
  final client = RestClient();

  // Test weapon
  final weaponJson =
      await client.getRaw('equipment/blowgun') as Map<String, dynamic>;
  final weapon = Equipment.fromJson(weaponJson);
  if (weapon is! Weapon) {
    throw StateError('Expected Weapon, got ${weapon.runtimeType}');
  }
  print(
    '✓ Weapon deserialized correctly: ${weapon.name} (${weapon.weaponCategory})',
  );

  // Test armor
  final armorJson =
      await client.getRaw('equipment/chain-mail') as Map<String, dynamic>;
  final armor = Equipment.fromJson(armorJson);
  if (armor is! Armor) {
    throw StateError('Expected Armor, got ${armor.runtimeType}');
  }
  print(
    '✓ Armor deserialized correctly: ${armor.name} (${armor.armorCategory})',
  );

  // Test gear
  final gearJson =
      await client.getRaw('equipment/alchemists-fire-flask')
          as Map<String, dynamic>;
  final gear = Equipment.fromJson(gearJson);
  if (gear is! Gear) {
    throw StateError('Expected Gear, got ${gear.runtimeType}');
  }
  print('✓ Gear deserialized correctly: ${gear.name}');

  // Test via RestClient.getEquipment
  final equipment = await client.getEquipment('battleaxe');
  if (equipment is! Weapon) {
    throw StateError(
      'Expected Weapon from getEquipment, got ${equipment.runtimeType}',
    );
  }
  print('✓ RestClient.getEquipment() returns correct type: ${equipment.name}');

  // Test pattern matching
  final testEquipment = await client.getEquipment('chain-mail');
  switch (testEquipment) {
    case Weapon():
      throw StateError('Expected Armor or Gear, got Weapon');
    case Armor():
      print('✓ Pattern matching works: ${testEquipment.name} is Armor');
    case Gear():
      print('✓ Pattern matching works: ${testEquipment.name} is Gear');
  }

  print('\nAll equipment union type tests passed!');
}
