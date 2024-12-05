import 'package:flutter/material.dart';

class ProfilePictureWidget extends StatelessWidget {
  const ProfilePictureWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.bottomRight, children: [
      CircleAvatar(
        radius: 100,
        child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: const Placeholder()),
      ),
      ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: Container(
          color: Theme.of(context).colorScheme.secondary,
          child: const Padding(
            padding: EdgeInsets.all(4.0),
            child: Icon(
              Icons.photo,
              size: 40,
            ),
          ),
        ),
      )
    ]);
  }
}
