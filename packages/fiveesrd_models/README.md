# fiveesrd_models

Shared REST/GraphQL models and value objects for the FiveEsrd package suite.

Add the dependency:

```
dart pub add fiveesrd_models
```

Usage:

```dart
import 'package:fiveesrd_models/fiveesrd_models.dart';

const summary = MonsterSummary(index: 'aboleth', name: 'Aboleth');
print(summary.toJson());
```
