## 0.1.1

- Fix Equipment union type: `Equipment.fromJson()` now correctly deserializes into
  concrete types (`Weapon`, `Armor`, or `Gear`) based on `equipment_category.index`.
- Make `Equipment` a sealed class with `Weapon`, `Armor`, and `Gear` as subtypes.

## 0.1.0

- Initial extraction of shared REST/GraphQL models from the `fiveesrd` package.
