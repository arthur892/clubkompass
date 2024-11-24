import 'package:ts_4_8_1_eigene_app_ui/features/blog/models/blogpost.dart';

abstract class BlogDataRepo {
  Future<Blogpost> getBlogpost(int index);
  Future<List<Blogpost>> getAllBlogposts();
  Future<Blogpost> getRandom();
}
