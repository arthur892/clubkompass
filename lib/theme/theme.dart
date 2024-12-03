import 'package:flutter/material.dart';

class GlobalThemeData {
  static final Color _lightFocusColor = Colors.black.withOpacity(0.12);
  static final Color _darkFocusColor = Colors.white.withOpacity(0.12);

  static ThemeData lightThemeData =
      themeData(lightColorScheme, _lightFocusColor);

  static ThemeData darkThemeData = themeData(darkColorScheme, _darkFocusColor);

  static ThemeData themeData(ColorScheme colorScheme, Color focusColor) {
    return ThemeData(
        useMaterial3: true,
        colorScheme: colorScheme,
        appBarTheme: AppBarTheme(
            backgroundColor: colorScheme.primary,
            foregroundColor: colorScheme.onPrimary),
        //primaryColor: colorScheme.primary,
        //canvasColor: colorScheme.surface,
        //scaffoldBackgroundColor: colorScheme.surface,
        //highlightColor: Colors.transparent,
        textTheme: textTheme(colorScheme),
        focusColor: focusColor);
  }

  static const ColorScheme lightColorScheme = ColorScheme(
    primary: Color(0xFF1ABC9C),
    onPrimary: Colors.white,
    secondary: Color(0xFFEFF3F3),
    surface: Color(0xFFFAFBFB),
    error: Colors.redAccent,
    onError: Colors.white,
    onSecondary: Color(0xFF322942),
    onSurface: Color(0xFF241E30),
    brightness: Brightness.light,
  );

  static const ColorScheme darkColorScheme = ColorScheme(
    primary: Color(0xFFFF8383),
    onPrimary: Colors.white,
    secondary: Color(0xFF4D1F7C),
    surface: Color(0xFF1F1929),
    error: Colors.redAccent,
    onError: Colors.white,
    onSecondary: Colors.white,
    onSurface: Colors.white,
    brightness: Brightness.dark,
  );

  static TextTheme textTheme(ColorScheme colorScheme) {
    return TextTheme(
      displayLarge: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: colorScheme.primary,
      ),
      headlineMedium: TextStyle(
        fontSize: 24,
        color: colorScheme.onSurface,
      ),
      bodyLarge: TextStyle(
        fontSize: 18,
        color: colorScheme.onSurface,
      ),
      bodyMedium: TextStyle(
        fontSize: 16,
        color: colorScheme.onSurface,
      ),
      bodySmall: TextStyle(
        fontSize: 14,
        color: colorScheme.onSurface,
      ),
    );
  }
}
