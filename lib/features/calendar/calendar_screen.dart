import 'package:flutter/material.dart';
import 'package:calendar_view/calendar_view.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({super.key});

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //CalendarControllerProvider.of(context).controller.add(CalendarEventData(event: "event1", date: DateTime(2024,10,25), title: 'Essen')),
          //CalendarControllerProvider.of(context).controller.add(),
          Text("Calendar"),
          // Container(
          //     width: MediaQuery.sizeOf(context).width,
          //     height: 600,
          //     child: MonthView()),
          const Placeholder(),
        ],
      ),
    );
  }
}
