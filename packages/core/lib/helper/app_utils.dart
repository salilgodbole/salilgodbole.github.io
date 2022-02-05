part of core;

class AppUtils {
  static Future<void> saveUserToken(String accessToken) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString("authorizationToken", accessToken);
  }

  // static Future<String> getUserToken() async {
  //   SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  //   return sharedPreferences.getString("authorizationToken");
  // }

  static Future<void> saveUserRole(String userFlow) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString("userRole", userFlow);
  }

  // static Future<String> getUserRole() async {
  //   SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  //   return sharedPreferences.getString("userRole");
  // }

  // static Future<bool> isParent() async {
  //   var userRole = await getUserRole();
  //   return "PARENT" == userRole;
  // }

  // static Future<void> checkUserLoginAndNavigateAccordingly(
  //     BuildContext context) async {
  //   var accessToken = await AppUtils.getUserToken();
  //   if (accessToken == null || accessToken == "") {
  //     navigateToLoginScreen(context);
  //   }
  //
  //   // UiUtils.navigateToScreenWithReplacement(context, ParentView());
  // }

  static void navigateToLoginScreen(BuildContext context) {
    // UiUtils.navigateToScreen(context, LoginView());
  }

  static String enumToString(Object o) => o.toString().split('.').last;

  static T enumFromString<T>(String key, List<T> values) =>
      values.firstWhere((element) => key == enumToString(element!));

  static bool isNullOrEmpty(Object o) => o == null || "" == o;

  static String removeLastCharacter(s) =>
      (s == null || s.length == 0) ? '' : (s.substring(0, s.length - 1));

  static String prettyDateFormat(String date) {
    try {
      DateTime dateTime = DateTime.parse(date);

      int diff = DateTime.now().difference(dateTime).inSeconds;

      if (diff <= 1) {
        return "just now";
      } else if (diff < 20) {
        return "$diff seconds ago";
      } else if (diff < 40) {
        return "half a minute ago";
      } else if (diff < 60) {
        return "less than a minute ago";
      } else if (diff <= 90) {
        return "one minute ago";
      } else if (diff <= 3540) {
        return "${(diff / 60).round()} minutes ago";
      } else if (diff <= 5400) {
        return "1 hour ago";
      } else if (diff <= 86400) {
        return "${(diff / 3600).round()} hours ago";
      } else if (diff <= 129600) {
        return "1 day ago";
      } else if (diff < 604800) {
        return "${(diff / 86400).round()} days ago";
      } else if (diff <= 777600) {
        return "1 week ago";
      }

      return formatDate(date, dateTime: dateTime);
    } on Exception catch (_) {
      return date;
    }
  }

  static String formatDate(String date, {DateTime? dateTime, String format = 'dd MMM yyyy'}) {
    try {
      if (dateTime == null) {
        dateTime = DateTime.parse(date);
      }

      final DateFormat formatter = DateFormat(format);
      final String formatted = formatter.format(dateTime);

      return formatted;
    } on Exception catch (_) {
      return date;
    }
  }

  static String prettyFormatFutureDate(String date) {
    try {
      DateTime dateTime = DateTime.parse(date);

      int diff = dateTime.difference(DateTime.now()).inDays;

      if (diff > 1 && diff < 2) {
        return 'Next Dose tomorrow';
      } else if (diff > 2 && diff < 180) {
        return "Next Dose in $diff days";
      } else {
        return formatDate(date, dateTime: dateTime);
      }
    } on Exception catch (_) {
      return date;
    }
  }
}
