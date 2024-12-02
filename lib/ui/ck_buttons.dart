import 'package:flutter/material.dart';

class CkIconButton extends StatelessWidget {
  CkIconButton(
      {super.key,
      this.icon,
      required this.text,
      this.width = 250,
      this.onTap,
      this.fontWeight});
  IconData? icon;
  FontWeight? fontWeight;
  String text;
  double width;
  GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 4, 0, 4),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Theme.of(context).colorScheme.primary,
          ),
          width: width,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                SizedBox(
                  width: 75,
                  child: Icon(
                    icon,
                    color: Theme.of(context).colorScheme.onPrimary,
                    size: 32,
                  ),
                ),
                Expanded(
                  child: Text(text,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Theme.of(context).colorScheme.onPrimary,
                          fontWeight: fontWeight)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
