import 'package:clubkompass/config/sizes.dart';
import 'package:clubkompass/features/blog/models/blogpost.dart';
import 'package:flutter/material.dart';

class BlogpostWidget extends StatefulWidget {
  final Blogpost myBlogpost;
  const BlogpostWidget({super.key, required this.myBlogpost});

  @override
  State<BlogpostWidget> createState() => _BlogpostWidgetState();
}

class _BlogpostWidgetState extends State<BlogpostWidget> {
  late double widthDescription;

  Widget pictureData() {
    //Bild anzeigen
    if (widget.myBlogpost.picturesPath != "") {
      widthDescription = 220;
      return SizedBox(
        height: 120,
        width: 120,
        child: Image.asset(
          widget.myBlogpost.picturesPath,
          fit: BoxFit.cover,
        ),
      );
    }
    //Kein Bild anzeigen
    widthDescription = 340;
    return Container(
      height: 50,
      //width: 5,
      color: Colors.blue,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 220,
      //width: 300,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.15),
        //borderRadius: BorderRadius.circular(20)
      ),

      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                //Profilbild
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: SizedBox(
                    height: 52,
                    width: 52,
                    child: Opacity(
                        opacity: 1.0,
                        child: Image.asset(
                          widget.myBlogpost.authorPicturePath,
                          fit: BoxFit.fill,
                        )),
                  ),
                ),
                //Autorname
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.fromLTRB(
                      sizeHorizontalGap, 0, sizeHorizontalGap, 0),
                  child: Text(widget.myBlogpost.author),
                )),
                //Post ungelesen = Roter Punkt
                Container(
                  width: 20,
                  height: 20,
                  //color: Colors.red[600],
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.red[600]),
                )
              ],
            ),
            const SizedBox(
              height: sizeBetweenElements,
            ),
            Row(
              children: [
                //Grafik anzeigen
                pictureData(),
                const SizedBox(
                  width: sizeBetweenElements,
                ),
                //Titel + Beschreibung
                Expanded(
                  //height: 120,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.myBlogpost.title,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Text(widget.myBlogpost.description)
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: sizeBetweenElements,
            ),
            //Emotes anzeigen
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
