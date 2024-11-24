import 'package:ts_4_8_1_eigene_app_ui/features/calendar/models/calendar.dart';

abstract class CalendarDataRepo {
  Future<CalendarEntry> getEntry(int index);
  Future<List<CalendarEntry>> getAllEntries();

//TODO: Widget umbauen damit Termine die an einem Tag standfinden gruppiert werden
  //List<CalendarEntry> getGroupedEntries() {}
}
