import 'package:bulls_and_cows/domain/models/game.dart';
import 'package:bulls_and_cows/domain/usecases/game_usecase.dart';
import 'package:bulls_and_cows/ui/console.dart';
import 'package:bulls_and_cows/utils/number_generater.dart';

void main(List<String> arguments) {
  Game game = Game(
    answer: NumberGenerater().generateNonRepeatingThreeDigitNumber,
  );
  GameUsecase gameUsecase = GameUsecase(game);
  Console(gameUsecase: gameUsecase).runGame();
}
