import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ts_4_8_1_eigene_app_ui/features/blog/blog_screen.dart';
import 'package:ts_4_8_1_eigene_app_ui/features/blog/data/blog_data_mock.dart';
import 'package:ts_4_8_1_eigene_app_ui/features/calendar/calendar_screen.dart';
import 'package:ts_4_8_1_eigene_app_ui/features/calendar/data/calendar_data_mock.dart';
import 'package:ts_4_8_1_eigene_app_ui/features/login/logic/user_provider.dart';
import 'package:ts_4_8_1_eigene_app_ui/features/overview/overview_screen.dart';
import 'package:ts_4_8_1_eigene_app_ui/features/profile/profile_screen.dart';
import 'package:ts_4_8_1_eigene_app_ui/features/task/task_screen.dart';

class Navigation extends StatefulWidget {
  const Navigation({
    super.key,
  });

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  final BlogData blogData = BlogData();
  final CalendarData calendarData = CalendarData();
  late final List<Widget> _screens = [
    OverviewScreen(
      blogData: blogData,
      calendarData: calendarData,
    ),
    BlogScreen(
      blogData: blogData,
    ),
    const CalendarScreen(),
    const TaskScreen(),
    const ProfileScreen(),
  ];
  int _selectedIndex = 0;

  void _onDestinationSelected(int value) {
    setState(() {
      _selectedIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProvider>(context).user;

    return Scaffold(
      appBar: AppBar(
        title: Text("Willkommen ${user!.name}"),
      ),
      bottomNavigationBar: NavigationBar(
          selectedIndex: _selectedIndex,
          onDestinationSelected: (value) {
            _onDestinationSelected(value);
          },
          destinations: const [
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
