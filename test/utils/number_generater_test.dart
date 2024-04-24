import 'package:bulls_and_cows/utils/extensions/string_extension.dart';
import 'package:bulls_and_cows/utils/number_generater.dart';
import 'package:test/test.dart';

void main() {
  group('NumberGenerater', () {
    final numberGenerater = NumberGenerater();

    test('should generate a three-digit number with non-repeating digits', () {
      String number = numberGenerater.generateNonRepeatingThreeDigitNumber;
      expect(number.length, equals(3));
      expect(number.isNumeric, equals(true));
      expect(number.hasUniqueDigits, equals(true));
    });
  });
}
