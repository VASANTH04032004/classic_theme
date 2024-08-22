import 'package:flutter/material.dart';

const COLOR_PRIMARY = Colors.deepOrangeAccent;
const COLOR_ACCENT = Colors.orange;

class TextStyles {
  static const TextStyle headlineMedium = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle titleMedium = TextStyle(
    fontSize: 18,
  );

  static const TextStyle bodyText = TextStyle(
    fontSize: 16,
  );
}

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: COLOR_PRIMARY,
  scaffoldBackgroundColor: Colors.white,
  textTheme: TextTheme(
    headlineMedium: TextStyles.headlineMedium.copyWith(color: Colors.black),
    titleMedium: TextStyles.titleMedium.copyWith(color: Colors.black),
  ),
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Colors.white,
  scaffoldBackgroundColor: Colors.black54,
  textTheme: TextTheme(
    headlineMedium: TextStyles.headlineMedium.copyWith(color: Colors.white),
    titleMedium: TextStyles.titleMedium.copyWith(color: Colors.white),
  ),
);
