class Blogpost {
  final String blogpostId;
  final String title;
  final String author;
  final String authorPicturePath;
  final String description;
  final String picturesPath;

  final bool readed = false;

  Blogpost(
      {required this.blogpostId,
      required this.title,
      required this.author,
      this.description = "",
      this.picturesPath = "",
      this.authorPicturePath = ""});
}
