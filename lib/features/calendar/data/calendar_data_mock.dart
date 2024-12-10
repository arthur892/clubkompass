import 'package:clubkompass/features/calendar/data/calendar_repo.dart';
import 'package:clubkompass/features/calendar/models/calendar.dart';

class CalendarData implements CalendarDataRepo {
  final List<CalendarEntry> _entries = [
    CalendarEntry(
      id: "1",
      title: "Mockup Screens erstellen",
      description: "Dringende Fertigstellung erwartet.",
      location: "Berlin, Brückenstraße 56, Deutschland",
      startDate: DateTime(2024, 10, 25, 17, 30),
      endDate: DateTime(2024, 10, 25, 18, 30),
      organizer: "Manfred Müller",
    ),
    CalendarEntry(
      id: "2",
      title: "Vereinsbesprechung",
      description: "Wichtige Tagesordnungspunkte werden diskutiert.",
      location: "Vereinsheim Leipzig",
      startDate: DateTime(2024, 10, 26, 16, 5),
      endDate: DateTime(2024, 10, 26, 17, 00),
      isChecked: true,
      organizer: "Sabine Schneider",
    ),
    CalendarEntry(
      id: "3",
      title: "Kuchenverkauf am Stadtfest",
      description: "Organisation und Standaufbau für den Kuchenverkauf.",
      location: "Stadtplatz, München",
      isAllDay: true,
      startDate: DateTime(2024, 10, 27, 14, 00),
      organizer: "Lukas Weber",
    ),
    CalendarEntry(
      id: "4",
      title: "Jahreshauptversammlung",
      description: "Vorstandsbericht und Neuwahlen.",
      location: "Gemeindehalle, Stuttgart",
      startDate: DateTime(2024, 10, 28, 18, 00),
      endDate: DateTime(2024, 10, 28, 20, 00),
      organizer: "Anna Bauer",
    ),
    CalendarEntry(
      id: "5",
      title: "Wanderausflug",
      description: "Gemeinsame Wanderung durch den Wald.",
      location: "Treffpunkt Vereinsheim",
      startDate: DateTime(2024, 10, 29, 09, 00),
      endDate: DateTime(2024, 10, 29, 12, 00),
      organizer: "Manfred Müller",
    ),
    CalendarEntry(
      id: "6",
      title: "Weihnachtsfeier",
      description: "Gemütliches Beisammensein mit Weihnachtsprogramm.",
      location: "Vereinsheim Hamburg",
      startDate: DateTime(2024, 12, 15, 19, 00),
      organizer: "Sabine Schneider",
    ),
    CalendarEntry(
      id: "7",
      title: "Sommerfest Planung",
      description: "Organisation des Sommerfestes.",
      startDate: DateTime(2024, 06, 20, 18, 00),
      organizer: "Lukas Weber",
    ),
    CalendarEntry(
      id: "8",
      title: "Vereinsausflug zum See",
      description: "Entspannte Fahrt zum nahegelegenen See.",
      startDate: DateTime(2024, 07, 15, 09, 00),
      endDate: DateTime(2024, 07, 15, 17, 00),
      organizer: "Anna Bauer",
    ),
    CalendarEntry(
      id: "9",
      title: "Tanzkurs für Mitglieder",
      description: "Einführung in Gesellschaftstänze.",
      location: "Tanzschule Müller",
      startDate: DateTime(2024, 10, 25, 19, 00),
      organizer: "Sabine Schneider",
    ),
    CalendarEntry(
      id: "10",
      title: "Vorbereitung Flohmarkt",
      description: "Planung des Flohmarktes im Vereinsheim.",
      location: "Vereinsheim München",
      startDate: DateTime(2024, 11, 10, 15, 15),
      organizer: "Lukas Weber",
    ),
    CalendarEntry(
      id: "11",
      title: "Grillabend",
      description: "Gemeinsames Grillen im Vereinsgarten.",
      location: "Vereinsheim Garten",
      startDate: DateTime(2024, 08, 05, 18, 00),
      endDate: DateTime(2024, 08, 05, 21, 00),
      organizer: "Anna Bauer",
    ),
    CalendarEntry(
      id: "12",
      title: "Karnevalsfeier",
      description: "Karneval mit Kostümen und Tanz.",
      startDate: DateTime(2024, 02, 23, 20, 00),
      organizer: "Manfred Müller",
    ),
    CalendarEntry(
      id: "13",
      title: "Schreibwettbewerb",
      description: "Kreativer Schreibwettbewerb für Mitglieder.",
      location: "Vereinsheim, Köln",
      startDate: DateTime(2024, 03, 12, 17, 30),
      endDate: DateTime(2024, 03, 12, 19, 00),
      organizer: "Sabine Schneider",
    ),
    CalendarEntry(
      id: "14",
      title: "Frühjahrsputz im Vereinsheim",
      description: "Gemeinsames Aufräumen des Vereinsheims.",
      startDate: DateTime(2024, 04, 05, 10, 00),
      organizer: "Lukas Weber",
    ),
    CalendarEntry(
      id: "15",
      title: "Tag der offenen Tür",
      description: "Vorstellung des Vereins für Interessierte.",
      location: "Vereinsheim, Berlin",
      startDate: DateTime(2024, 05, 02, 14, 00),
      organizer: "Anna Bauer",
    ),
    CalendarEntry(
      id: "16",
      title: "Neumitglieder Treffen",
      description: "Neue Mitglieder lernen den Verein kennen.",
      startDate: DateTime(2024, 01, 15, 17, 00),
      organizer: "Manfred Müller",
    ),
    CalendarEntry(
      id: "17",
      title: "Sommersportfest",
      description: "Verschiedene Wettbewerbe und Siegerehrungen.",
      location: "Sportplatz, München",
      startDate: DateTime(2024, 06, 25, 11, 00),
      endDate: DateTime(2024, 06, 25, 16, 00),
      organizer: "Sabine Schneider",
    ),
    CalendarEntry(
      id: "18",
      title: "Vereinsmeisterschaft",
      description: "Jährliche Vereinsmeisterschaft im Schach.",
      startDate: DateTime(2024, 09, 20, 16, 00),
      organizer: "Lukas Weber",
    ),
    CalendarEntry(
      id: "19",
      title: "Frühlingsmarkt",
      description: "Der Verein stellt auf dem Frühlingsmarkt aus.",
      location: "Marktplatz, Frankfurt",
      startDate: DateTime(2024, 04, 20, 14, 00),
      organizer: "Anna Bauer",
    ),
    CalendarEntry(
      id: "20",
      title: "Fahrradtour",
      description: "Gemeinsame Fahrradtour durch die Umgebung.",
      startDate: DateTime(2024, 07, 10, 09, 30),
      organizer: "Manfred Müller",
    ),
  ];

  @override
  Future<CalendarEntry> getEntry(int index) => Future.delayed(
      const Duration(milliseconds: 1000),
      () => index < _entries.length ? _entries[index] : _entries[0]);

  @override
  Future<List<CalendarEntry>> getAllEntries() =>
      Future.delayed(const Duration(milliseconds: 1000), () => _entries);

//TODO: Widget umbauen damit Termine die an einem Tag standfinden gruppiert werden
  //List<CalendarEntry> getGroupedEntries() {}
}
