import 'dart:io';

import 'package:bulls_and_cows/domain/models/ball_count.dart';
import 'package:bulls_and_cows/domain/usecases/game_usecase.dart';

class Console {
  Console({
    required this.gameUsecase,
  });
  final GameUsecase gameUsecase;
  void runGame() {
    while (gameUsecase.gameObject.isPlaying) {
      print('Enter a number:');
      String entered = stdin.readLineSync() ?? '';
      try {
        if (entered == 'exit') {
          gameUsecase.updatePlaying(false);
          print('Game Over');
          print('Answer: ${gameUsecase.gameObject.answer}');
          break;
        }
        BallCount ballCount = gameUsecase.submitGuess(entered);
        print('You entered: $entered'
            ' '
            "Challange: ${gameUsecase.gameObject.challengeCount}");
        print('Strikes: ${ballCount.strikes}, Balls: ${ballCount.balls}');
      } catch (e) {
        print(e);
      }
    }
  }
}
