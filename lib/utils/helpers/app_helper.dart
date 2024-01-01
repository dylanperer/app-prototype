class AppHelper {
  AppHelper._();

  static String? leftPadIntZeroToNine(int? value) {
    if (value == null) {
      return null;
    }

    if (value < 0 || value > 9) {
      return value.toString();
    }

    return '0${value.toString()}';
  }
}
