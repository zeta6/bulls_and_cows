import 'package:bulls_and_cows/domain/models/ball_count.dart';
import 'package:test/test.dart';

void main() {
  group('BallCount', () {
    test('should throw AssertionError when strikes is not between 0 and 3', () {
      expect(() => BallCount(strikes: -1, balls: 0),
          throwsA(isA<AssertionError>()));
      expect(() => BallCount(strikes: 4, balls: 0),
          throwsA(isA<AssertionError>()));
    });

    test('should throw AssertionError when balls is not between 0 and 3', () {
      expect(() => BallCount(strikes: 0, balls: -1),
          throwsA(isA<AssertionError>()));
      expect(() => BallCount(strikes: 0, balls: 4),
          throwsA(isA<AssertionError>()));
    });

    test('should create BallCount when strikes and balls are between 0 and 3',
        () {
      expect(() => BallCount(strikes: 0, balls: 0), returnsNormally);
      expect(() => BallCount(strikes: 3, balls: 3), returnsNormally);
    });
  });
}
