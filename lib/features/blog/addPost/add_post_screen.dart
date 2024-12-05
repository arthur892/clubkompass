import 'package:flutter/material.dart';
import 'package:ts_4_8_1_eigene_app_ui/features/blog/addPost/widgets/tile_post.dart';

class AddPostScreen extends StatefulWidget {
  const AddPostScreen({super.key});

  @override
  State<AddPostScreen> createState() => _AddPostScreenState();
}

class _AddPostScreenState extends State<AddPostScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Neuer Post"),
      ),
      body: const TilePost(),
    );
  }
}
