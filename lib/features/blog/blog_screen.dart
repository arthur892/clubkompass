import 'package:clubkompass/config/sizes.dart';
import 'package:clubkompass/features/blog/data/blog_data_mock.dart';
import 'package:clubkompass/features/blog/widgets/blogpost_widget.dart';
import 'package:clubkompass/features/old_stuff_login/logic/user_provider.dart';
import 'package:clubkompass/shared/models/repository/models/app_user.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BlogScreen extends StatefulWidget {
  const BlogScreen({super.key, required this.blogData});
  final BlogData blogData;

  @override
  State<BlogScreen> createState() => _BlogScreenState();
}

class _BlogScreenState extends State<BlogScreen> {
  late AppUser user;

  @override
  void initState() {
    super.initState();
    final userProvider = Provider.of<UserProvider>(context, listen: false);
    user = userProvider.user!;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (user.isGuest) {
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                      title: const Text("Als Gast nicht möglich"),
                      actions: [
                        TextButton(
                          child: const Text('Abbrechen'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ]);
                });
          } else {
            Navigator.pushNamed(context, '/add_post');
          }
        },
        child: const Icon(Icons.add_rounded),
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
