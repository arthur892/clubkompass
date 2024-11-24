//import 'package:calendar_view/calendar_view.dart';
import 'package:flutter/material.dart';
import 'package:ts_4_8_1_eigene_app_ui/features/calendar/data/calendar_data_mock.dart';
import 'package:ts_4_8_1_eigene_app_ui/features/calendar/models/calendar.dart';

//Widget Settings
const double containerHeight = 20;
const double containerPaddingLR = 8;
const double containerCorner = 16;

const bool showContainerColors = false;

class CalendarWidget extends StatefulWidget {
  CalendarWidget({super.key});

  final CalendarData calendarData = CalendarData();

  @override
  State<CalendarWidget> createState() => _CalendarWidgetState();
}

class _CalendarWidgetState extends State<CalendarWidget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FutureBuilder(
          future: widget.calendarData.getAllEntries(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            } else if (!snapshot.hasData) {
              return const Center(child: Text('Keine Kalenderdaten verfügbar'));
            }

            final calendarData = snapshot.data!;
            return ListView.separated(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: containerPaddingLR,
                        vertical: containerPaddingLR / 2),
                    child: CalendarEntryWidget(
                      entry: calendarData[index],
                    ),
                  );
                },
                separatorBuilder: (context, index) => const SizedBox(
                      height: 0,
                    ),
                itemCount: calendarData.length);
          }),
    );
  }
}

class CalendarEntryWidget extends StatelessWidget {
  final CalendarEntry entry;
  const CalendarEntryWidget({super.key, required this.entry});

  Widget buildSubtitle() {
    List<Widget> buildEntries = [];

    //Startzeit zusammensetzen
    if (!entry.isAllDay) {
      buildEntries.add(Container(
          padding: const EdgeInsets.only(left: containerPaddingLR),
          height: containerHeight,
          color: showContainerColors ? Colors.blue : Colors.transparent,
          child: Row(
            children: [
              Text(entry.startDate.hour.toString()),
              const Text("."),
              Text(entry.startDate.minute.toString()),
            ],
          )));
    }
    //Endzeit zusammensetzten
    if (!entry.isAllDay && entry.endDate.year != 1900) {
      buildEntries.add(Container(
          //padding: EdgeInsets.only(right: containerPaddingLR),
          height: containerHeight,
          color: showContainerColors ? Colors.deepPurple : Colors.transparent,
          child: Row(
            children: [
              const Text(" - "),
              Text(entry.endDate.hour.toString()),
              const Text("."),
              Text(entry.endDate.minute.toString()),
            ],
          )));
    }
    //Uhrzeit anhängen
    if (!entry.isAllDay) {
      buildEntries.add(Container(
          height: containerHeight,
          padding: const EdgeInsets.symmetric(horizontal: containerPaddingLR),
          child: const Text("Uhr")));
    }

    if (entry.location != "") {
      buildEntries.add(Flexible(
        child: Container(
            padding: const EdgeInsets.symmetric(horizontal: containerPaddingLR),
            height: containerHeight,
            color: showContainerColors ? Colors.amber : Colors.transparent,
            child: Text(
              "Ort: ${entry.location}",
              overflow: TextOverflow.ellipsis,
            )),
      ));
    }
    return Row(children: buildEntries);
  }

  @override
  Widget build(BuildContext context) {
    //List<Widget> removeEmpty = removeEmptyfields();
    return ClipRRect(
      borderRadius: BorderRadius.circular(containerCorner),
      child: Container(
        color: showContainerColors
            ? Colors.pink
            : const Color(0xFF2C3E50).withOpacity(0.6),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Titel anzeigen + Checkbox Anzeigen
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: containerPaddingLR),
              color: showContainerColors ? Colors.red : Colors.transparent,
              child: Row(
                children: [
                  Expanded(
                      child: Text(
                    entry.title,
                    style: Theme.of(context).textTheme.titleMedium,
                    overflow: TextOverflow.ellipsis,
                  )),
                  Checkbox(value: entry.isChecked, onChanged: null),
                ],
              ),
            ),

            //Weitere Details die in "CalendarEntry" enthalten sind anzeigen.
            buildSubtitle(),
            Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: containerPaddingLR, vertical: 4),
                height: containerHeight + 4,
                color: showContainerColors ? Colors.green : Colors.transparent,
                child: Text(
                  entry.organizer,
                  style: Theme.of(context).textTheme.bodySmall,
                )),
          ],
        ),
      ),
    );
  }
}

//TODO: Widget umbauen damit Termine die an einem Tag standfinden gruppiert werden
class CalendarDayWidget extends StatelessWidget {
  final List<CalendarEntry> entries;
  const CalendarDayWidget({super.key, required this.entries});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          color: Colors.pink,
          height: 50,
          width: 50,
          child: const Text(""),
        ),
      ],
    );
  }
}
