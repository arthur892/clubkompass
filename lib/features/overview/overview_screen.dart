import 'package:flutter/material.dart';
import 'package:ts_4_8_1_eigene_app_ui/features/blog/data/blog_data.dart';
import 'package:ts_4_8_1_eigene_app_ui/features/blog/widgets/blogpost_widget.dart';

class OverviewScreen extends StatefulWidget {
  const OverviewScreen({
    super.key,
    required this.blogData,
  });
  final BlogData blogData;
  //final CalendarData calendarData;

  @override
  State<OverviewScreen> createState() => _OverviewScreenState();
}

class _OverviewScreenState extends State<OverviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/appimages/background.png"),
              fit: BoxFit.cover)),
      child: Column(
        children: [
          BlogpostWidget(myBlogpost: widget.blogData.getRandom()),
          //CalendarWidget()
        ],
      ),
    );
  }
}
