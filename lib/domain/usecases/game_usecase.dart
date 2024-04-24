import 'package:bulls_and_cows/domain/models/ball_count.dart';
import 'package:bulls_and_cows/domain/models/game.dart';
import 'package:bulls_and_cows/utils/extensions/string_extension.dart';

class GameUsecase {
  GameUsecase(
    this.game,
  );
  final Game game;

  int get increaseChallengeCount {
    game.incrementChallengeCount;
    return game.challengeCount;
  }

  BallCount submitGuess(String guess) {
    if (!guess.isValidAnswer) {
      throw Exception("guess is invalid");
    }
    increaseChallengeCount;
    int strikes = 0;
    int balls = 0;
    for (int i = 0; i < guess.length; i++) {
      if (game.answer[i] == guess[i]) {
        strikes++;
      } else if (game.answer.contains(guess[i])) {
        balls++;
      }
    }
    return BallCount(strikes: strikes, balls: balls);
  }

  Game get gameObject => game;

  void updatePlaying(bool updateValue) {
    game.setPlaying(updateValue: updateValue);
  }
}
