import 'package:flutter/material.dart';

import 'app_theme.dart';

class DarkTheme {
  static ThemeData get theme {
    return ThemeData.dark().copyWith(
      colorScheme: ColorScheme.fromSwatch(
        primarySwatch: MaterialColor(
          Colors.black.value,
          <int, Color>{
            50: Color(0xFF000000),
            100: Color(0xFF000000),
            200: Color(0xFF000000),
            300: Color(0xFF000000),
            400: Color(0xFF000000),
            500: Color(Colors.black.value),
            600: Color(0xFF000000),
            700: Color(0xFF000000),
            800: Color(0xFF000000),
            900: Color(0xFF000000),
          },
        ),
      ),
      brightness: Brightness.dark,
      scaffoldBackgroundColor: AppTheme.primaryColor,
      primaryColor: AppTheme.primaryColor,
      primaryColorLight: AppTheme.primaryColorLight,
      primaryColorDark: AppTheme.primaryColorDark,
      splashColor: AppTheme.primaryColorAlpha,
      highlightColor: AppTheme.primaryColorAlpha,
      accentColor: AppTheme.accentColor,
      errorColor: AppTheme.errorColor,
      toggleableActiveColor: AppTheme.primaryTextColor,
      focusColor: AppTheme.accentColor,
      indicatorColor: Colors.white,
      appBarTheme: AppBarTheme(
          brightness: Brightness.dark,
          titleTextStyle: TextStyle(
              fontFamily: AppTheme.fontFamily,
              fontSize: 15,
              fontWeight: FontWeight.w600,
              height: 1.1,
              color: Colors.white),
          iconTheme: IconThemeData(color: Colors.white70)),
      buttonTheme: ButtonThemeData(buttonColor: AppTheme.primaryTextColor),
      textTheme: TextTheme(
        headline1: TextStyle(
            fontFamily: AppTheme.fontFamily,
            fontSize: 25,
            fontWeight: FontWeight.w800,
            height: 1.1,
            color: Colors.white70),
        headline2: TextStyle(
            fontFamily: AppTheme.fontFamily,
            fontSize: 23,
            fontWeight: FontWeight.w700,
            height: 1.1,
            color: Colors.white70),
        headline3: TextStyle(
            fontFamily: AppTheme.fontFamily,
            fontSize: 21,
            fontWeight: FontWeight.w700,
            height: 1.1,
            color: Colors.white70),
        headline4: TextStyle(
            fontFamily: AppTheme.fontFamily,
            fontSize: 19,
            fontWeight: FontWeight.w600,
            height: 1.1,
            color: Colors.white70),
        headline5: TextStyle(
            fontFamily: AppTheme.fontFamily,
            fontSize: 17,
            fontWeight: FontWeight.w600,
            height: 1.1,
            color: Colors.white70),
        headline6: TextStyle(
            fontFamily: AppTheme.fontFamily,
            fontSize: 15,
            fontWeight: FontWeight.w600,
            height: 1.1,
            color: Colors.white70),
        bodyText1: TextStyle(
            fontFamily: AppTheme.fontFamily,
            fontSize: 13,
            fontWeight: FontWeight.w500,
            height: 1.1,
            color: Colors.white70),
        bodyText2: TextStyle(
            fontFamily: AppTheme.fontFamily,
            fontSize: 13,
            fontWeight: FontWeight.w400,
            height: 1.1,
            color: Colors.white60),
        button: TextStyle(
            fontFamily: AppTheme.fontFamily,
            fontSize: 14,
            fontWeight: FontWeight.w600,
            height: 1.1,
            color: Colors.white70),
      ),
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: TextStyle(
            fontFamily: AppTheme.fontFamily,
            fontSize: 13,
            fontWeight: FontWeight.w300,
            height: 1.1,
            color: AppTheme.secondaryTextColor),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide.none),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide(color: Colors.white70, width: 1.5)),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide(color: AppTheme.errorColor, width: 1.5)),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          shape: MaterialStateProperty.all(StadiumBorder()),
          backgroundColor: MaterialStateProperty.all(Colors.white30),
          textStyle: MaterialStateProperty.all(
            TextStyle(
                fontFamily: AppTheme.fontFamily,
                fontSize: 14,
                fontWeight: FontWeight.w600,
                height: 1.1,
                color: AppTheme.primaryTextColor),
          ),
          padding: MaterialStateProperty.all(
              EdgeInsets.symmetric(horizontal: 20, vertical: 15)),
          elevation: MaterialStateProperty.resolveWith((state) {
            if (state.contains(MaterialState.pressed)) return 15;
            return 4;
          }),
        ),
      ),
    );
  }
}
