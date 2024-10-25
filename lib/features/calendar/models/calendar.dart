class CalendarEntry {
  final String id;
  final String title;
  final String description;
  final DateTime startDate;
  DateTime endDate;
  final String location;
  final bool isAllDay;
  final String organizer;
  late List<String> participants;
  bool isChecked;

  CalendarEntry(
      {required this.id,
      required this.title,
      this.description = "",
      required this.startDate,
      DateTime? endDate,
      this.location = "",
      this.isAllDay = false,
      required this.organizer,
      this.participants = const <String>[""],
      this.isChecked = false})
      : this.endDate = endDate ?? DateTime(1900);
}
