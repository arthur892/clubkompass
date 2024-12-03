import 'package:flutter/material.dart';

class CkIconButton extends StatelessWidget {
  const CkIconButton(
      {super.key,
      this.icon,
      required this.text,
      this.width = 250,
      this.onTap,
      this.fontWeight,
      this.textAlign});
  final IconData? icon;
  final FontWeight? fontWeight;
  final String text;
  final double width;
  final GestureTapCallback? onTap;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 4, 0, 4),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Theme.of(context).colorScheme.primary),
            color: Theme.of(context).colorScheme.primary,
          ),
          width: width,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                SizedBox(
                  width: icon != null ? 50 : 0,
                  child: Icon(
                    icon,
                    color: Theme.of(context).colorScheme.onPrimary,
                    size: 32,
                  ),
                ),
                Expanded(
                  child: Text(text,
                      textAlign: TextAlign.center,
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
