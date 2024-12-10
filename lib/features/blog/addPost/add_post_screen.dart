import 'package:clubkompass/features/blog/addPost/widgets/tile_gallery.dart';
import 'package:clubkompass/features/blog/addPost/widgets/tile_picture.dart';
import 'package:clubkompass/features/blog/addPost/widgets/tile_post.dart';
import 'package:flutter/material.dart';

class AddPostScreen extends StatefulWidget {
  const AddPostScreen({super.key});

  @override
  State<AddPostScreen> createState() => _AddPostScreenState();
}

class _AddPostScreenState extends State<AddPostScreen> {
  List<Widget> tiles = [
    const TilePost(),
    const TilePicture(),
    const TileGallery()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Neuer Post"),
      ),
      body: Column(
        children: [
          Text(
            "Wähle dein Design",
            style: Theme.of(context).textTheme.displayLarge,
          ),
          GridView.builder(
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // number of items in each row
              mainAxisSpacing: 0.0, // spacing between rows
              crossAxisSpacing: 0.0, // spacing between columns
            ),
            itemCount: tiles.length,
            itemBuilder: (BuildContext context, int index) {
              return tiles[index];
            },
          )
          // SizedBox(
          //   width: MediaQuery.sizeOf(context).width,
          //   height: 400,
          //   child: ListView.separated(
          //     itemCount: tiles.length,
          //     itemBuilder: (BuildContext context, int index) {
          //       return tiles[index];
          //     },
          //     separatorBuilder: (context, index) => const SizedBox(
          //       height: 8,
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}
