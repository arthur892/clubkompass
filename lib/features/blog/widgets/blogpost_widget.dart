import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ts_4_8_1_eigene_app_ui/config/sizes.dart';
import 'package:ts_4_8_1_eigene_app_ui/features/blog/models/blogpost.dart';

class BlogpostWidget extends StatefulWidget {
  final Blogpost myBlogpost;
  BlogpostWidget({super.key, required this.myBlogpost});

  @override
  State<BlogpostWidget> createState() => _BlogpostWidgetState();
}

class _BlogpostWidgetState extends State<BlogpostWidget> {
  late double widthDescription;
  pictureData() {
    if (widget.myBlogpost.picturesPath != "") {
      widthDescription = 220;
      return Container(
        height: 120,
        width: 120,
        child: Image.asset(
          widget.myBlogpost.picturesPath,
          fit: BoxFit.cover,
        ),
      );
    }
    widthDescription = 340;
    return Container(
      height: 120,
      width: 5,
      color: Colors.blue,
      //fallbackWidth: 50,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                    height: 52,
                    width: 52,
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                      child: Opacity(
                          opacity: 0.5,
                          child: Image.asset(
                            widget.myBlogpost.authorPicturePath,
                            fit: BoxFit.fill,
                          )),
                    ),
                  ),
                ),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.fromLTRB(
                      sizeHorizontalGap, 0, sizeHorizontalGap, 0),
                  child: Text(widget.myBlogpost.author),
                )),
                const Icon(Icons.dangerous_rounded)
              ],
            ),
            SizedBox(
              height: sizeBetweenElements,
            ),
            Row(
              children: [
                pictureData(),
                SizedBox(
                  width: sizeBetweenElements,
                ),
                SizedBox(
                  height: 120,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.myBlogpost.title),
                      Container(
                          width: widthDescription,
                          child: Text(widget.myBlogpost.description))
                    ],
                  ),
                )
              ],
            ),
            const Row(
              children: [
                Text("5"),
                SizedBox(width: sizeBetweenElements),
                Icon(Icons.favorite),
                SizedBox(width: sizeHorizontalGap),
                Text("12"),
                SizedBox(width: sizeBetweenElements),
                Icon(Icons.thumb_up),
              ],
            )
          ],
        ),
      ),
    );
  }
}
