import 'package:flutter/material.dart';

const COLOR_PRIMARY = Colors.deepOrangeAccent;
const COLOR_ACCENT = Colors.orange;

class TextStyles {
  static const TextStyle headlineLarge = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.w900,
  );

  static const TextStyle headlineMedium = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle headlineSmall = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle subtitle1 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle subtitle2 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle bodyText = TextStyle(
    fontSize: 16,
  );

  static const TextStyle bodyText2 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle caption = TextStyle(
    fontSize: 12,
    color: Colors.grey,
  );

  static const TextStyle button = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle overline = TextStyle(
    fontSize: 10,
    color: Colors.grey,
  );

  static const TextStyle display1 = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle display2 = TextStyle(
    fontSize: 36,
    fontWeight: FontWeight.w800,
  );
}

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: COLOR_PRIMARY,
  scaffoldBackgroundColor: Colors.white,
  textTheme: TextTheme(
    displayLarge: TextStyles.headlineLarge,
    displayMedium: TextStyles.headlineMedium,
    displaySmall: TextStyles.headlineSmall,
    titleMedium: TextStyles.subtitle1,
    titleSmall: TextStyles.subtitle2,
    bodyLarge: TextStyles.bodyText,
    bodyMedium: TextStyles.bodyText2,
    bodySmall: TextStyles.caption,
    labelLarge: TextStyles.button,
    labelSmall: TextStyles.overline,
    headlineMedium: TextStyles.display1,
    headlineSmall: TextStyles.display2,
  ),
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Colors.white,
  scaffoldBackgroundColor: Colors.black54,
  textTheme: TextTheme(
    displayLarge: TextStyles.headlineLarge.copyWith(color: Colors.white),
    displayMedium: TextStyles.headlineMedium.copyWith(color: Colors.white),
    displaySmall: TextStyles.headlineSmall.copyWith(color: Colors.white),
    titleMedium: TextStyles.subtitle1.copyWith(color: Colors.white),
    titleSmall: TextStyles.subtitle2.copyWith(color: Colors.white),
    bodyLarge: TextStyles.bodyText.copyWith(color: Colors.white),
    bodyMedium: TextStyles.bodyText2.copyWith(color: Colors.white),
    bodySmall: TextStyles.caption.copyWith(color: Colors.white),
    labelLarge: TextStyles.button.copyWith(color: Colors.white),
    labelSmall: TextStyles.overline.copyWith(color: Colors.white),
    headlineMedium: TextStyles.display1.copyWith(color: Colors.white),
    headlineSmall: TextStyles.display2.copyWith(color: Colors.white),
  ),
);
