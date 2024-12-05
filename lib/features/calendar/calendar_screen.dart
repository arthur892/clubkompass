import 'package:flutter/material.dart';
import 'package:ts_4_8_1_eigene_app_ui/features/calendar/widgets/calendar_widget.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({super.key});

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // decoration: BoxDecoration(
        //     gradient: LinearGradient(
        //         stops: const [0.1, 0.5, 0.9],
        //         begin: Alignment.topRight,
        //         end: Alignment.bottomLeft,
        //         colors: [ckBackgroundColor, Colors.cyan, ckBackgroundColor])),
        child: Column(
          children: [
            //CalendarControllerProvider.of(context).controller.add(CalendarEventData(event: "event1", date: DateTime(2024,10,25), title: 'Essen')),
            //CalendarControllerProvider.of(context).controller.add(),
            // Container(
            //     width: MediaQuery.sizeOf(context).width,
            //     height: 600,
            //     child: MonthView()),
            CalendarWidget(),
          ],
        ),
      ),
    );
  }
}
