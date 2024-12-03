import 'package:flutter/material.dart';

class CkTextfield extends StatelessWidget {
  const CkTextfield(
      {super.key,
      required this.controller,
      required this.validator,
      this.label});
  final TextEditingController controller;
  final String? Function(String? value) validator;
  final Widget? label;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      decoration: InputDecoration(
          label: label,
          //hintText: "Dein Benutzername",
          border: const OutlineInputBorder()),
    );
  }
}
