import 'package:flutter/material.dart';

Color ckBackgroundColor = Color(0xFF1ABC9C);
Color DarkThemeTextColorAccent = Color(0xFFBFBFBF);
Color DarkThemeTextColor = Colors.white;

ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    useMaterial3: true,
    textTheme: TextTheme(
        displayLarge: TextStyle(
            fontSize: 32,
            //fontWeight: FontWeight.bold,
            color: DarkThemeTextColor),
        headlineMedium: TextStyle(
            fontSize: 24, color: DarkThemeTextColor), // Keep the headlineMedium
        bodyLarge: TextStyle(fontSize: 18, color: DarkThemeTextColor),
        bodyMedium: TextStyle(fontSize: 16, color: DarkThemeTextColor),
        bodySmall: TextStyle(fontSize: 14, color: DarkThemeTextColorAccent))
    //     ),
    // appBarTheme: const AppBarTheme(
    //   color: Colors.blue, // Background color for the AppBar in light mode
    //   titleTextStyle: TextStyle(
    //     color: Colors.white, // AppBar title text color for light mode
    //     fontSize: 20,
    //     fontWeight: FontWeight.bold,
    //   ),
    //   iconTheme: IconThemeData(color: Colors.white), // Icon color
    // ),
    //colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
    //scaffoldBackgroundColor: Colors.white,
    );
