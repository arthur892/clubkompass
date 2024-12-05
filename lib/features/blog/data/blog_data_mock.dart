import 'dart:math';

import 'package:ts_4_8_1_eigene_app_ui/features/blog/data/blog_data_repo.dart';
import 'package:ts_4_8_1_eigene_app_ui/features/blog/models/blogpost.dart';

class BlogData implements BlogDataRepo {
  final List<Blogpost> _blogposts = [
    Blogpost(
        blogpostId: "1",
        title: "Sommerfest Planung",
        author: "Manfred Müller",
        description:
            "Die Organisation des Sommerfestes wird besprochen. Wir planen den Ablauf, die Essensstände, die Spiele für Kinder und die Unterhaltung für alle Mitglieder und deren Familien.",
        picturesPath: "assets/blogpost/unsplash_BWPoWYXl9X0.png",
        authorPicturePath: "assets/profile/unsplash_h3IGtGls9OU.png"),
    Blogpost(
        blogpostId: "2",
        title: "Vereinsabend",
        author: "Sabine Schneider",
        description:
            "Ein geselliger Abend für alle Mitglieder im Vereinsheim. Bei Snacks und Getränken können wir uns austauschen, neue Kontakte knüpfen und gemeinsame Erinnerungen schaffen.",
        picturesPath: "assets/blogpost/unsplash_EF6z_6R94zQ.png",
        authorPicturePath: "assets/profile/unsplash_HD8KlyWRYYM.png"),
    Blogpost(
        blogpostId: "3",
        title: "Besprechung der Vereinsordnung",
        author: "Lukas Weber",
        description:
            "Die neue Vereinsordnung wird diskutiert und über wichtige Punkte abgestimmt. Es gibt Raum für Verbesserungsvorschläge und Anregungen von den Vereinsmitgliedern.",
        picturesPath: "assets/blogpost/unsplash_FQxmxIVR-YI.png",
        authorPicturePath: "assets/profile/unsplash_L62U8oeBVgE.png"),
    Blogpost(
        blogpostId: "4",
        title: "Wanderausflug",
        author: "Anna Bauer",
        description:
            "Planung für den jährlichen Wanderausflug der Vereinsmitglieder. Die Strecke wird festgelegt, und alle Details zur Verpflegung und Übernachtung werden besprochen.",
        picturesPath: "assets/blogpost/unsplash_hfEZsF0F4n0.png",
        authorPicturePath: "assets/profile/unsplash_XHVpWcr5grQ.png"),
    Blogpost(
        blogpostId: "5",
        title: "Jahreshauptversammlung",
        author: "Manfred Müller",
        description:
            "Bericht des Vorstands und Neuwahlen im Verein. Außerdem wird der Kassenbericht präsentiert und wichtige Entscheidungen über die Zukunft des Vereins getroffen.",
        picturesPath: "assets/blogpost/unsplash_knbGSacQYDk.png",
        authorPicturePath: "assets/profile/unsplash_h3IGtGls9OU.png"),
    Blogpost(
        blogpostId: "6",
        title: "Vereinsmeisterschaft",
        author: "Sabine Schneider",
        description:
            "Die jährliche Vereinsmeisterschaft im Schach wird ausgetragen. Spannende Partien und Taktiken erwarten die Teilnehmer und Zuschauer gleichermaßen.",
        picturesPath: "assets/blogpost/unsplash_qCilde9fmTk.png",
        authorPicturePath: "assets/profile/unsplash_HD8KlyWRYYM.png"),
    Blogpost(
        blogpostId: "7",
        title: "Kuchenverkauf am Stadtfest",
        author: "Lukas Weber",
        description:
            "Vereinsmitglieder verkaufen Kuchen auf dem Stadtfest. Der Erlös wird für kommende Vereinsaktivitäten genutzt. Freiwillige Helfer sind herzlich willkommen.",
        picturesPath: "assets/blogpost/unsplash_xHcNz_9WkEE.png",
        authorPicturePath: "assets/profile/unsplash_L62U8oeBVgE.png"),
    Blogpost(
        blogpostId: "8",
        title: "Neumitglieder Treffen",
        author: "Anna Bauer",
        description:
            "Ein Treffen für neue Mitglieder, um den Verein und seine Angebote kennenzulernen. Wir freuen uns darauf, neue Gesichter in unserer Gemeinschaft zu begrüßen.",
        picturesPath: "assets/blogpost/unsplash_YJmF4zvHEp8.png",
        authorPicturePath: "assets/profile/unsplash_XHVpWcr5grQ.png"),
    Blogpost(
        blogpostId: "9",
        title: "Sommersportfest",
        author: "Manfred Müller",
        description:
            "Das große Sportfest mit verschiedenen Wettbewerben und Siegerehrungen. Die Mitglieder haben die Möglichkeit, in Teams gegeneinander anzutreten und Preise zu gewinnen.",
        picturesPath: "",
        authorPicturePath: "assets/profile/unsplash_h3IGtGls9OU.png"),
    Blogpost(
        blogpostId: "10",
        title: "Weihnachtsfeier",
        author: "Sabine Schneider",
        description:
            "Die Weihnachtsfeier mit allen Mitgliedern und deren Familien. Es wird Glühwein, Plätzchen und ein festliches Programm geben, um das Jahr gemeinsam ausklingen zu lassen.",
        picturesPath: "",
        authorPicturePath: "assets/profile/unsplash_HD8KlyWRYYM.png"),
    Blogpost(
        blogpostId: "11",
        title: "Fahrradtour",
        author: "Lukas Weber",
        description:
            "Eine gemeinsame Fahrradtour durch die Umgebung. Wir werden mehrere Stopps einlegen, um die Landschaft zu genießen und zusammen Zeit zu verbringen.",
        picturesPath: "assets/blogpost/unsplash_BWPoWYXl9X0.png",
        authorPicturePath: "assets/profile/unsplash_L62U8oeBVgE.png"),
    Blogpost(
        blogpostId: "12",
        title: "Frühlingsmarkt",
        author: "Anna Bauer",
        description:
            "Der Verein stellt auf dem Frühlingsmarkt seine Aktivitäten vor. Es wird auch Infostände geben, bei denen sich Besucher über kommende Veranstaltungen informieren können.",
        picturesPath: "assets/blogpost/unsplash_EF6z_6R94zQ.png",
        authorPicturePath: "assets/profile/unsplash_XHVpWcr5grQ.png"),
    Blogpost(
        blogpostId: "13",
        title: "Vereinsausflug zum See",
        author: "Manfred Müller",
        description:
            "Ein gemeinsamer Ausflug zum nahegelegenen See. Dort werden wir den Tag bei Picknick und Wassersportaktivitäten gemeinsam verbringen.",
        picturesPath: "assets/blogpost/unsplash_FQxmxIVR-YI.png",
        authorPicturePath: "assets/profile/unsplash_h3IGtGls9OU.png"),
    Blogpost(
        blogpostId: "14",
        title: "Tanzkurs für Mitglieder",
        author: "Sabine Schneider",
        description:
            "Ein Tanzkurs wird für Vereinsmitglieder angeboten. Anfänger und Fortgeschrittene sind gleichermaßen willkommen. Es wird auch eine kleine Tanzvorführung geben.",
        picturesPath: "assets/blogpost/unsplash_hfEZsF0F4n0.png",
        authorPicturePath: "assets/profile/unsplash_HD8KlyWRYYM.png"),
    Blogpost(
        blogpostId: "15",
        title: "Vorbereitung des Flohmarkts",
        author: "Lukas Weber",
        description:
            "Der Verein organisiert einen Flohmarkt im Vereinsheim. Alle Mitglieder sind eingeladen, gebrauchte Gegenstände zu verkaufen und für einen guten Zweck zu spenden.",
        picturesPath: "assets/blogpost/unsplash_knbGSacQYDk.png",
        authorPicturePath: "assets/profile/unsplash_L62U8oeBVgE.png"),
    Blogpost(
        blogpostId: "16",
        title: "Grillabend",
        author: "Anna Bauer",
        description:
            "Ein gemeinsamer Grillabend im Vereinsgarten. Mit Musik, Grillwürstchen und guten Gesprächen genießen wir einen entspannten Sommerabend zusammen.",
        picturesPath: "",
        authorPicturePath: "assets/profile/unsplash_XHVpWcr5grQ.png"),
    Blogpost(
        blogpostId: "17",
        title: "Karnevalsfeier",
        author: "Manfred Müller",
        description:
            "Die große Karnevalsfeier mit Kostümen, Tanz und Musik. Mitglieder sind eingeladen, sich kreativ zu verkleiden und an den Wettbewerben teilzunehmen.",
        picturesPath: "",
        authorPicturePath: "assets/profile/unsplash_h3IGtGls9OU.png"),
    Blogpost(
        blogpostId: "18",
        title: "Schreibwettbewerb",
        author: "Sabine Schneider",
        description:
            "Ein Wettbewerb für kreative Texte der Vereinsmitglieder. Jeder Teilnehmer kann seine Werke einreichen, und am Ende gibt es eine Lesung der besten Texte.",
        picturesPath: "",
        authorPicturePath: "assets/profile/unsplash_HD8KlyWRYYM.png"),
    Blogpost(
        blogpostId: "19",
        title: "Frühjahrsputz im Vereinsheim",
        author: "Lukas Weber",
        description:
            "Gemeinsame Aufräumaktion im Vereinsheim und Garten. Wir bringen das Vereinsgelände auf Vordermann und freuen uns über jede helfende Hand.",
        picturesPath: "assets/blogpost/unsplash_qCilde9fmTk.png",
        authorPicturePath: "assets/profile/unsplash_L62U8oeBVgE.png"),
    Blogpost(
        blogpostId: "20",
        title: "Erste-Hilfe-Kurs",
        author: "Anna Bauer",
        description:
            "Ein Erste-Hilfe-Kurs für Mitglieder, um in Notfällen richtig zu reagieren. Ein professioneller Ausbilder führt durch die wichtigsten Maßnahmen.",
        picturesPath: "",
        authorPicturePath: "assets/profile/unsplash_XHVpWcr5grQ.png"),
  ];

  @override
  Future<Blogpost> getBlogpost(int index) {
    return Future.delayed(const Duration(milliseconds: 1000),
        () => index < _blogposts.length ? _blogposts[index] : _blogposts[0]);
  }

  @override
  Future<List<Blogpost>> getAllBlogposts() {
    return Future.delayed(const Duration(milliseconds: 1000), () => _blogposts);
  }

  @override
  Future<Blogpost> getRandom() {
    Random randomInt = Random();
    int index = randomInt.nextInt(_blogposts.length);
    return Future.delayed(
        const Duration(milliseconds: 1000), () => _blogposts[index]);
  }
}
