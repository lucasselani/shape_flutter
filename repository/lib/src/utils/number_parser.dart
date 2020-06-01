class NumberParser {
  static num tryParse(dynamic value) {
    if (value is String) {
      try {
        return num.parse(value) ?? 0;
      } on FormatException catch (_) {
        return 0;
      }
    } else {
      return value as num;
    }
  }
}
