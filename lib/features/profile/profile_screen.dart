import 'package:calendar_view/calendar_view.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Spielwiese"),
        Container(
            width: MediaQuery.sizeOf(context).width,
            height: 600,
            child: MonthView()),
      ],
    );
  }
}
