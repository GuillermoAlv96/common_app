import 'package:flutter/material.dart';

import 'dark_theme.dart';
import 'light_theme.dart';

class AppTheme with ChangeNotifier {
  static const Color primaryColor = Color(0xFF1C1C1C);
  static const Color primaryColorDark = Color(0xFF000000);
  static const Color primaryColorLight = Color(0xFF212121);
  static const Color primaryColorAlpha = Color(0x10212121);
  static const Color accentColor = Color(0xFF212B35);
  static const Color accentColorAlpha = Color(0x20212B35);
  static const Color errorColor = Color(0xFFDD0426);
  static const Color primaryTextColor = Color(0xFF000000);
  static const Color secondaryTextColor = Color(0xFF757575);
  static const Color successColor = Color(0xff0B7A75);
  static const Color pendingColor = Color(0xffEA9010);

  static const String fontFamily = "Lato";

  AppTheme(bool isLightTheme) {
    _currentTheme = isLightTheme ? LightTheme.theme : DarkTheme.theme;
  }

  late ThemeData _currentTheme;

  ThemeData get currentTheme => _currentTheme;
}
