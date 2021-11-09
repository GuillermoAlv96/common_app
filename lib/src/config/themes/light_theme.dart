import 'package:flutter/material.dart';

import 'app_theme.dart';

class LightTheme {
  static ThemeData get theme {
    return ThemeData.light().copyWith(
      brightness: Brightness.light,
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
      scaffoldBackgroundColor: Color(0xFFFAFAFA),
      primaryColor: AppTheme.primaryColor,
      primaryColorLight: AppTheme.primaryColorLight,
      primaryColorDark: AppTheme.primaryColorDark,
      splashColor: AppTheme.primaryColorAlpha,
      highlightColor: AppTheme.primaryColorAlpha,
      accentColor: AppTheme.accentColor,
      errorColor: AppTheme.errorColor,
      toggleableActiveColor: AppTheme.primaryTextColor,
      focusColor: AppTheme.accentColor,
      indicatorColor: AppTheme.primaryColor,
      appBarTheme: AppBarTheme(
          brightness: Brightness.light,
          color: Color(0xFFFAFAFA),
          titleTextStyle: TextStyle(
            fontFamily: AppTheme.fontFamily,
            fontSize: 15,
            fontWeight: FontWeight.w600,
            height: 1.1,
            color: AppTheme.primaryColor,
          ),
          iconTheme: IconThemeData(color: AppTheme.primaryTextColor)),
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: AppTheme.primaryColor,
        selectionColor: AppTheme.primaryColor.withOpacity(0.1),
        selectionHandleColor: AppTheme.primaryColor,
      ),
      buttonTheme: ButtonThemeData(buttonColor: AppTheme.primaryColor),
      textTheme: TextTheme(
        headline1: TextStyle(
            fontFamily: AppTheme.fontFamily,
            fontSize: 25,
            fontWeight: FontWeight.w800,
            height: 1.1,
            color: AppTheme.primaryTextColor),
        headline2: TextStyle(
            fontFamily: AppTheme.fontFamily,
            fontSize: 23,
            fontWeight: FontWeight.w700,
            height: 1.1,
            color: AppTheme.primaryTextColor),
        headline3: TextStyle(
            fontFamily: AppTheme.fontFamily,
            fontSize: 21,
            fontWeight: FontWeight.w700,
            height: 1.1,
            color: AppTheme.primaryTextColor),
        headline4: TextStyle(
            fontFamily: AppTheme.fontFamily,
            fontSize: 19,
            fontWeight: FontWeight.w600,
            height: 1.1,
            color: AppTheme.primaryTextColor),
        headline5: TextStyle(
            fontFamily: AppTheme.fontFamily,
            fontSize: 17,
            fontWeight: FontWeight.w600,
            height: 1.1,
            color: AppTheme.primaryTextColor),
        headline6: TextStyle(
            fontFamily: AppTheme.fontFamily,
            fontSize: 15,
            fontWeight: FontWeight.w600,
            height: 1.1,
            color: AppTheme.primaryTextColor),
        bodyText1: TextStyle(
            fontFamily: AppTheme.fontFamily,
            fontSize: 13,
            fontWeight: FontWeight.w500,
            height: 1.1,
            color: AppTheme.primaryTextColor),
        bodyText2: TextStyle(
            fontFamily: AppTheme.fontFamily,
            fontSize: 13,
            fontWeight: FontWeight.w400,
            height: 1.1,
            color: AppTheme.secondaryTextColor),
        button: TextStyle(
            fontFamily: AppTheme.fontFamily,
            fontSize: 14,
            fontWeight: FontWeight.w600,
            height: 1.1,
            color: Colors.white),
        caption: TextStyle(
            fontFamily: AppTheme.fontFamily,
            fontSize: 12,
            fontWeight: FontWeight.w300,
            height: 1.1,
            color: AppTheme.secondaryTextColor),
      ),
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: TextStyle(
          fontFamily: AppTheme.fontFamily,
          fontSize: 13,
          fontWeight: FontWeight.w300,
          height: 1.1,
          color: AppTheme.secondaryTextColor,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: BorderSide(color: AppTheme.primaryColor, width: 1.5),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: BorderSide(color: AppTheme.errorColor, width: 1.5),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          shape: MaterialStateProperty.all(StadiumBorder()),
          backgroundColor: MaterialStateProperty.all(AppTheme.primaryColor),
          textStyle: MaterialStateProperty.all(
            TextStyle(
                fontFamily: AppTheme.fontFamily,
                fontSize: 14,
                fontWeight: FontWeight.w600,
                height: 1.1,
                color: Colors.white),
          ),
          padding: MaterialStateProperty.all(
            EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          ),
          elevation: MaterialStateProperty.resolveWith((state) {
            if (state.contains(MaterialState.pressed)) return 15;
            return 4;
          }),
        ),
      ),
    );
  }
}
