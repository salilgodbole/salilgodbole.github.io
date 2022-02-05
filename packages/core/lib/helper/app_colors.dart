part of core;

const Color backgroundColorLight = Color.fromARGB(255, 255, 241, 159);

const Color primaryColorLight = Color(0xFFFFFFFF); //Color(0xFFFFD428);
const Color accentColorLight = Color(0xFF223554); //Color(0xFF242A37); //Color(0xFF577BF3);
const Color scaffoldBackgroundColorLight = Color(0xFFB1D9DB); //Color(0xFFCFD8E8);
const Color scaffoldBackgroundColor2Light = Color(0xFFF0F9F9);
const Color primaryDarkColorLight = Color(0xFFFFFFFF);
const Color secondaryColorLight = Color(0x69EDF1F9);
const Color unselectedColorLight = Color(0xFF000000);
const Color primaryTextColorLight = Color(0xFF223554);
const Color secondaryTextColorLight = Color(0xFF707070);
const Color dividerColorLight = Color(0xFFB1D9DB);
const Color appBarBackgroundColorLight = Color(0xFFF0F9F9);

// Dark Theme
const Color backgroundColorDark = Color.fromARGB(255, 255, 241, 159);

const Color primaryColorDark = Color(0xFF212D3B);
const Color accentColorDark = Color(0xFF577BF3);
const Color scaffoldBackgroundColorDark = Color(0xFF1D2733);
const Color scaffoldBackgroundColor2Dark = Color(0xFFEEF2FA);
const Color primaryDarkColorDark = Color(0xFF212D3B);
const Color secondaryColorDark = Color(0x69212D3B);
const Color unselectedColorDark = Color(0xFFFFFFFF);
const Color primaryTextColorDark = Color(0xFFFFFFFF);
const Color secondaryTextColorDark = Color(0xFF9A9A9A);
const Color dividerColorDark = Color(0xFFD5D5D5);
const Color appBarBackgroundColorDark = Color(0xFFF0F9F9);

// Actual colors set based on theme selected.
const Color backgroundColor = isDarkTheme ? backgroundColorDark : backgroundColorLight;
const Color primaryColor = isDarkTheme ? primaryColorDark : primaryColorLight;
const Color accentColor = isDarkTheme ? accentColorDark : accentColorLight;
const Color scaffoldBackgroundColor =
    isDarkTheme ? scaffoldBackgroundColorDark : scaffoldBackgroundColorLight;
const Color scaffoldBackgroundColor2 =
    isDarkTheme ? scaffoldBackgroundColor2Dark : scaffoldBackgroundColor2Light;
const Color primaryDarkColor = isDarkTheme ? primaryDarkColorDark : primaryDarkColorLight;
const Color secondaryColor = isDarkTheme ? secondaryColorDark : secondaryColorLight;
const Color unselectedColor = isDarkTheme ? unselectedColorDark : unselectedColorLight;
const Color primaryTextColor = isDarkTheme ? primaryTextColorDark : primaryTextColorLight;
const Color secondaryTextColor = isDarkTheme ? secondaryTextColorDark : secondaryTextColorLight;
const Color dividerColor = isDarkTheme ? dividerColorDark : dividerColorLight;
const Color commentColor = Color.fromARGB(255, 255, 246, 196);
const Color appBarBackgroundColor =
    isDarkTheme ? appBarBackgroundColorDark : appBarBackgroundColorLight;
