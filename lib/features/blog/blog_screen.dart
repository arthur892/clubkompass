import 'package:flutter/material.dart';
import 'package:ts_4_8_1_eigene_app_ui/config/sizes.dart';
import 'package:ts_4_8_1_eigene_app_ui/features/blog/data/blog_data.dart';
import 'package:ts_4_8_1_eigene_app_ui/features/blog/widgets/blogpost_widget.dart';

class BlogScreen extends StatefulWidget {
  const BlogScreen({super.key});

  @override
  State<BlogScreen> createState() => _BlogScreenState();
}

class _BlogScreenState extends State<BlogScreen> {
  late BlogData blogRepo = BlogData();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(sizePaddingWidgets),
        child: Column(
          children: [
            Text("Blog"),
            BlogpostWidget(myBlogpost: blogRepo.getBlogpost(0)),
            SizedBox(
              height: 8,
            ),
            BlogpostWidget(myBlogpost: blogRepo.getBlogpost(8))
          ],
        ),
      ),
    );
  }
}
