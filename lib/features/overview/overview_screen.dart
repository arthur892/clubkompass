import 'package:clubkompass/features/blog/data/blog_data_mock.dart';
import 'package:clubkompass/features/blog/widgets/blogpost_widget.dart';
import 'package:clubkompass/features/calendar/data/calendar_data_mock.dart';
import 'package:flutter/material.dart';

class OverviewScreen extends StatefulWidget {
  const OverviewScreen(
      {super.key, required this.blogData, required this.calendarData});
  final BlogData blogData;
  final CalendarData calendarData;

  @override
  State<OverviewScreen> createState() => _OverviewScreenState();
}

class _OverviewScreenState extends State<OverviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: const BoxDecoration(
      //     image: DecorationImage(
      //         image: AssetImage("assets/appimages/background.png"),
      //         fit: BoxFit.cover)),
      child: Column(
        children: [
          FutureBuilder(
              future: widget.blogData.getRandom(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  return Center(child: Text('Error: ${snapshot.error}'));
                } else if (!snapshot.hasData) {
                  return const Center(child: Text('Keine Blogposts verfügbar'));
                }

                final randomBlogpost = snapshot.data!;
                return BlogpostWidget(myBlogpost: randomBlogpost);
              })

          //BlogpostWidget(myBlogpost: widget.blogData.getRandom()),
          //CalendarWidget()
        ],
      ),
    );
  }
}
