import 'package:flutter/material.dart';
import 'package:ts_4_8_1_eigene_app_ui/config/sizes.dart';
import 'package:ts_4_8_1_eigene_app_ui/features/blog/data/blog_data_mock.dart';
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
      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.add_rounded),
      ),
      body: FutureBuilder(
        future: widget.blogData.getAllBlogposts(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('Keine Blogposts verfügbar'));
          }

          final blogposts = snapshot.data!;
          return ListView.separated(
            shrinkWrap: true,
            separatorBuilder: (BuildContext context, int index) =>
                const SizedBox(height: sizeBetweenElements),
            itemCount: blogposts.length,
            itemBuilder: (BuildContext context, int index) {
              return BlogpostWidget(myBlogpost: blogposts[index]);
            },
          );
        },
      ),
    );
  }
}
