import 'package:flutter/material.dart';

class CkTextfieldLogin extends StatelessWidget {
  const CkTextfieldLogin(
      {super.key, required this.controller, required this.validator});
  final TextEditingController controller;
  final String? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
    );
  }
}
