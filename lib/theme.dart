import 'package:flutter/material.dart';
import 'package:toeictimer/constants.dart';

ThemeData themeData(BuildContext context) {
  return ThemeData(
    appBarTheme: appBarTheme,
    primaryColor: kPrimaryColor,
    accentColor: kAccentColor,
    scaffoldBackgroundColor: Colors.white,
    colorScheme: ColorScheme.light(
      secondary: kAccentColor,
    ),
    backgroundColor: Colors.white,
    iconTheme: IconThemeData(color: kBodyTextSubColor),
    accentIconTheme: IconThemeData(color: kAccentColor),
    primaryIconTheme: IconThemeData(color: kTimer25to0Color // temporary
        ),
    textTheme: TextTheme(
      bodyText1: TextStyle(color: kBodyTextBlackColor),
      bodyText2: TextStyle(color: kBodyTextBlackColor),
      subtitle1: TextStyle(color: kBodyTextSubColor),

    ),
  );
}

AppBarTheme appBarTheme = AppBarTheme(color: Colors.transparent, elevation: 0);
