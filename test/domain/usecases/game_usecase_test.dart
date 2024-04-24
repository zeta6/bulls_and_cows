import 'package:test/test.dart';
import 'package:bulls_and_cows/domain/models/game.dart';
import 'package:bulls_and_cows/domain/usecases/game_usecase.dart';

void main() {
  group('GameUsecase', () {
    final game = Game(answer: '123');
    final gameUsecase = GameUsecase(game);

    test('should increase challengeCount correctly', () {
      expect(gameUsecase.increaseChallengeCount, equals(1));
      expect(gameUsecase.increaseChallengeCount, equals(2));
    });

    test('should return correct BallCount for given guess', () {
      var ballCount = gameUsecase.submitGuess('132');
      expect(ballCount.strikes, equals(1));
      expect(ballCount.balls, equals(2));
    });

    test('should update game state correctly', () {
      gameUsecase.updatePlaying(true);
      expect(game.isPlaying, equals(true));
      gameUsecase.updatePlaying(false);
      expect(game.isPlaying, equals(false));
    });
  });
}
