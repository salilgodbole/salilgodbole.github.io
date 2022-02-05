part of core;

ThemeData appTheme = ThemeData(
  primaryColor: primaryColor,
  primaryColorDark: primaryDarkColor,
  scaffoldBackgroundColor: scaffoldBackgroundColor2,
  accentColor: accentColor,
  canvasColor: appBarBackgroundColor,
  selectedRowColor: primaryColor,
  dividerColor: dividerColor,
  unselectedWidgetColor: unselectedColor,
  iconTheme: IconThemeData(color: accentColor, size: 15),
  cardTheme: CardTheme(
    color: primaryColor,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(accentColor),
      elevation: MaterialStateProperty.all(10),
    ),
  ),
  buttonTheme: ButtonThemeData(
      buttonColor: accentColor, textTheme: ButtonTextTheme.primary, height: 80),
  textTheme: TextTheme(
    headline4: TextStyle(
      color: primaryTextColor,
      fontFamily: "Circular Std Bold",
      fontSize: 29.0,
      fontWeight: FontWeight.bold,
    ),
    headline5: TextStyle(
      color: primaryTextColor,
      fontFamily: "Circular Std Bold",
      fontSize: 27.0,
      fontWeight: FontWeight.bold,
    ),
    headline6: TextStyle(
      color: primaryTextColor,
      fontFamily: "Circular Std Bold",
      fontSize: 18.0,
      fontWeight: FontWeight.bold,
    ),
    subtitle1: TextStyle(
      color: primaryTextColor,
      fontFamily: "Circular Std Bold",
      fontSize: 16.0,
      fontWeight: FontWeight.normal,
    ),
    subtitle2: TextStyle(
      color: primaryTextColor,
      fontFamily: "Circular Std Medium",
      fontSize: 15.0,
      fontWeight: FontWeight.bold,
    ),
    caption: TextStyle(
      color: primaryTextColor,
      fontFamily: "Circular Std Book",
      fontSize: 15.0,
    ),
    bodyText1: TextStyle(
      color: secondaryTextColor,
      fontFamily: "Circular Std Book",
      fontSize: 13.0,
    ),
    bodyText2: TextStyle(
      color: secondaryTextColor,
      fontFamily: "Circular Std Book",
      fontSize: 10.0,
    ),
  ),
);
