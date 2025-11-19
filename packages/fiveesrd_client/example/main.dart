import 'package:fiveesrd_client/fiveesrd_client.dart';

Future<void> main() async {
  final client = FiveEsrdClient();
  final classList = await client.rest.listIndex('classes');
  print('Classes available: ${classList.count ?? classList.results?.length ?? 0}');
}
