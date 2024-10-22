import 'package:flutter/material.dart';
import 'package:ts_4_8_1_eigene_app_ui/features/blog/blog_screen.dart';
import 'package:ts_4_8_1_eigene_app_ui/features/calendar/calendar_screen.dart';
import 'package:ts_4_8_1_eigene_app_ui/features/overview/overview_screen.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  final List<Widget> _screens = [
    OverviewScreen(),
    BlogScreen(),
    CalendarScreen()
  ];
  int _selectedIndex = 0;

  void _onDestinationSelected(int value) {
    setState(() {
      _selectedIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search, Gridview"),
      ),
      bottomNavigationBar: NavigationBar(
          selectedIndex: _selectedIndex,
          onDestinationSelected: (value) {
            _onDestinationSelected(value);
          },
          destinations: [
            NavigationDestination(
                icon: Icon(Icons.home_rounded), label: "Home"),
            NavigationDestination(
                icon: Icon(Icons.newspaper_rounded), label: "Blog"),
            NavigationDestination(
                icon: Icon(Icons.calendar_month_rounded), label: "Kalender"),
            NavigationDestination(
                icon: Icon(Icons.add_task), label: "Aufgaben"),
            NavigationDestination(
                icon: Icon(Icons.account_circle), label: "Profil"),
          ]),
      body: _screens[_selectedIndex],
    );
  }
}
