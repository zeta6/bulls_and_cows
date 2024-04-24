extension StringExtension on String {
  bool get isNumeric {
    return double.tryParse(this) != null;
  }

  bool get hasUniqueDigits {
    return split('').toSet().length == length;
  }

  bool get isValidAnswer {
    return isNumeric && length == 3 && hasUniqueDigits;
  }
}
