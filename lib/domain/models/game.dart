import 'package:bulls_and_cows/utils/extensions/string_extension.dart';

class Game {
  Game({
    required this.answer,
  }) : assert(
          answer.isValidAnswer,
          "answer is invalid",
        );

  final String answer;

  bool _isPlaying = true;
  int _challengeCount = 0;

  bool get isPlaying => _isPlaying;
  int get challengeCount => _challengeCount;

  void get incrementChallengeCount {
    _challengeCount++;
  }

  void setPlaying({required bool updateValue}) {
    _isPlaying = updateValue;
  }
}
