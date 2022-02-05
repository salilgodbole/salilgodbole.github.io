part of core;

class UiUtils {
  static bool isiOSPlatform(BuildContext context) {
    return Theme.of(context).platform == TargetPlatform.iOS;
  }

  static Future navigateToScreen(BuildContext context, Widget widget) {
    return Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
    );
  }

  static Future navigateToScreenWithReplacement(
      BuildContext context, Widget widget) {
    return Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
    );
  }

  static double getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double getScreenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static bool isKeyboardVisible(BuildContext context) {
    return MediaQuery.of(context).viewInsets.bottom == 0;
  }

  static void hideKeyboard(BuildContext context) {
    FocusScope.of(context).requestFocus(new FocusNode());
  }

  /// Generate session id in the form xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx / 8-4-4-4-12.
  static String generateSessionId() {
    final int special = 8 + Random().nextInt(4);

    return '${_bitsDigits(16, 4)}${_bitsDigits(16, 4)}-'
        '${_bitsDigits(16, 4)}-'
        '4${_bitsDigits(12, 3)}-'
        '${_printDigits(special, 1)}${_bitsDigits(12, 3)}-'
        '${_bitsDigits(16, 4)}${_bitsDigits(16, 4)}${_bitsDigits(16, 4)}';
  }

  static String _bitsDigits(int bitCount, int digitCount) =>
      _printDigits(_generateBits(bitCount), digitCount);

  static int _generateBits(int bitCount) => Random().nextInt(1 << bitCount);

  static String _printDigits(int value, int count) =>
      value.toRadixString(16).padLeft(count, '0');
}
