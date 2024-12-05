import 'package:flutter/material.dart';

class TilePost extends StatelessWidget {
  const TilePost({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
            child: Container(
          height: 135,
          width: 135,
          color: Theme.of(context).colorScheme.onSecondary,
        )),
        Positioned(
            child: Container(
          height: 10,
          width: 135,
          color: Theme.of(context).colorScheme.secondary,
        )),
        Positioned(
            top: 20,
            child: Container(
              height: 115,
              width: 135,
              color: Theme.of(context).colorScheme.secondary,
            ))
      ],
    );
  }
}
