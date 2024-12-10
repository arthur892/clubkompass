import 'package:clubkompass/features/blog/models/blogpost.dart';

abstract class BlogDataRepo {
  Future<Blogpost> getBlogpost(int index);
  Future<List<Blogpost>> getAllBlogposts();
  Future<Blogpost> getRandom();
}
