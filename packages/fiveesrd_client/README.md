# fiveesrd_client

HTTP + GraphQL clients for the FiveEsrd suite. This package wraps the official
D&D 5e SRD API and serializes responses using `fiveesrd_models`.

```
dart pub add fiveesrd_client
```

```dart
import 'package:fiveesrd_client/fiveesrd_client.dart';

final client = FiveEsrdClient();
final fighter = await client.rest.getClass('fighter');
print(fighter.name);
```
