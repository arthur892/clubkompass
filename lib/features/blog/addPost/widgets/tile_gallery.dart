import 'package:flutter/material.dart';

class TileGallery extends StatelessWidget {
  const TileGallery({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 135,
      width: 135,
      child: Stack(
        children: [
          Positioned(
              child: Container(
                  height: 135,
                  width: 135,
                  color: Theme.of(context).colorScheme.onSecondary
                  //color :Theme.of(context).colorScheme.secondary
                  )),
          Positioned(
              child: Container(
            height: 10,
            width: 135,
            color: Theme.of(context).colorScheme.secondary,
          )),
          Positioned(
              top: 25,
              left: 2.5,
              child: Container(
                height: 40,
                width: 40,
                color: Theme.of(context).colorScheme.primary,
              )),
          Positioned(
              top: 25,
              right: 2.5,
              child: Container(
                height: 40,
                width: 40,
                color: Theme.of(context).colorScheme.primary,
              )),
          Positioned(
              top: 20,
              left: 42.5,
              child: Container(
                height: 50,
                width: 50,
                color: Theme.of(context).colorScheme.secondary,
              )),
          Positioned(
              top: 80,
              child: Container(
                height: 55,
                width: 135,
                color: Theme.of(context).colorScheme.secondary,
              ))
        ],
      ),
    );
  }
}
