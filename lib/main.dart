import 'package:flutter/material.dart';
import 'package:ts_4_8_1_eigene_app_ui/features/authentication/registration_screen.dart';
import 'package:ts_4_8_1_eigene_app_ui/landing_screen.dart';
import 'package:ts_4_8_1_eigene_app_ui/theme/theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  ThemeMode themeMode = ThemeMode.system;
  bool _isDarkMode = true;

  void toggleTheme() {
    _isDarkMode = !_isDarkMode;
    setState(() {
      if (_isDarkMode) {
        themeMode = ThemeMode.dark;
      } else {
        themeMode = ThemeMode.light;
      }
    });
  }

  final router = {
    '/': (context) => const LandingScreen(),
    '/register': (context) => const RegistrationScreen()
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: router,
      themeMode: themeMode,
      theme: GlobalThemeData.lightThemeData,
      darkTheme: GlobalThemeData.darkThemeData,
      //home: const LandingScreen()
    );
  }
}
