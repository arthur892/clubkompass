import 'package:flutter/material.dart';
import 'package:ts_4_8_1_eigene_app_ui/config/sizes.dart';
import 'package:ts_4_8_1_eigene_app_ui/features/blog/data/blog_data.dart';
import 'package:ts_4_8_1_eigene_app_ui/features/blog/widgets/blogpost_widget.dart';

class BlogScreen extends StatefulWidget {
  const BlogScreen({super.key, required this.blogData});
  final BlogData blogData;

  @override
  State<BlogScreen> createState() => _BlogScreenState();
}

class _BlogScreenState extends State<BlogScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.add_rounded),
      ),
      body: ListView.separated(
          shrinkWrap: true,
          separatorBuilder: (BuildContext context, int index) => SizedBox(
                height: sizeBetweenElements,
              ),
          itemCount: widget.blogData.getAllBlogposts().length,
          itemBuilder: (BuildContext context, int index) {
            return BlogpostWidget(
                myBlogpost: widget.blogData.getBlogpost(index));
          }),
    );
  }
}
