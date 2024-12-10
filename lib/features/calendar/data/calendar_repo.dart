import 'package:clubkompass/features/calendar/models/calendar.dart';

abstract class CalendarDataRepo {
  Future<CalendarEntry> getEntry(int index);
  Future<List<CalendarEntry>> getAllEntries();

//TODO: Widget umbauen damit Termine die an einem Tag standfinden gruppiert werden
  //List<CalendarEntry> getGroupedEntries() {}
}
