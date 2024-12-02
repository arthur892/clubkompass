import 'package:flutter/material.dart';
import 'package:ts_4_8_1_eigene_app_ui/features/login/widgets/login.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Anmeldung / Registrierung'),
      ),
      body: const Login(),
    );
  }
}
