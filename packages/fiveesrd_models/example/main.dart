import 'package:fiveesrd_models/fiveesrd_models.dart';

void main() {
  const score = AbilityScore(
    index: 'str',
    name: 'Strength',
    fullName: 'Strength',
    desc: ['A measure of raw physical power.'],
    skills: [],
  );
  print('Serialized ability score: ${score.toJson()}');
}
