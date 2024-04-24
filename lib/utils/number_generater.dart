import 'dart:math';

class NumberGenerater {
  String get generateNonRepeatingThreeDigitNumber {
    var rng = Random();
    var digits = [for (var i = 0; i < 10; i++) i];
    digits.shuffle(rng);
    return digits.sublist(0, 3).join();
  }
}
