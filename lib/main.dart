import 'package:calendar_view/calendar_view.dart';
import 'package:flutter/material.dart';
import 'package:ts_4_8_1_eigene_app_ui/config/themes.dart';
import 'package:ts_4_8_1_eigene_app_ui/features/authentication/registration_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CalendarControllerProvider(
        controller: EventController(),
        child: MaterialApp(
            themeMode: ThemeMode.dark,
            theme: ThemeData.light(),
            darkTheme: darkTheme,
            home: RegistrationScreen()));
  }
}
