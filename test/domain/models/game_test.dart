import 'package:test/test.dart';
import 'package:bulls_and_cows/domain/models/game.dart';

void main() {
  group('Game', () {
    final game = Game(answer: '123');

    test('should throw AssertionError when answer is invalid', () {
      expect(() => Game(answer: 'abcd'), throwsA(isA<AssertionError>()));
    });

    test('should create Game when answer is valid', () {
      expect(() => Game(answer: '123'), returnsNormally);
    });

    test('should increment challengeCount correctly', () {
      game.incrementChallengeCount;
      expect(game.challengeCount, equals(1));
      game.incrementChallengeCount;
      expect(game.challengeCount, equals(2));
    });

    test('should update game state correctly', () {
      game.setPlaying(updateValue: false);
      expect(game.isPlaying, equals(false));
      game.setPlaying(updateValue: true);
      expect(game.isPlaying, equals(true));
    });
  });
}
