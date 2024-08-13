import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get light {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(
        seedColor: const Color(0xFF13B9FF),
        brightness: Brightness.light,
        primary: Color.fromRGBO(60, 175, 39, 1),
        secondary: Color.fromRGBO(0, 118, 71, 1),
      ),
      appBarTheme: AppBarTheme(color: Color.fromRGBO(0, 118, 71, 2)),
      snackBarTheme: const SnackBarThemeData(
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  static ThemeData get dark {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(
        seedColor: const Color(0xFF13B9FF),
        brightness: Brightness.dark,
        primary: Color.fromRGBO(60, 175, 39, 1),
        secondary: Color.fromRGBO(0, 118, 71, 1),
      ),
      snackBarTheme: const SnackBarThemeData(
        behavior: SnackBarBehavior.floating,
      ),
    );
  }
}
