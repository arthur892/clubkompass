import 'package:flutter/material.dart';
import 'package:ts_4_8_1_eigene_app_ui/features/authentication/check_input.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

const double paddingLR = 20;
const heightBetween = SizedBox(
  height: 8,
);

class _RegistrationScreenState extends State<RegistrationScreen> {
  final TextEditingController usernameController =
      TextEditingController(text: "");

  final TextEditingController mailController = TextEditingController(text: "");

  final TextEditingController passwordController =
      TextEditingController(text: "");
  final TextEditingController confirmPasswordController =
      TextEditingController(text: "");

  final _formKey = GlobalKey<FormState>();
  bool hidePassword = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Form(
          key: _formKey,
          child: Column(
            children: [
              //Username
              TextFormField(
                controller: usernameController,
                validator: validUsername,
                decoration: const InputDecoration(
                    label: Text("Benutzername"),
                    //hintText: "Dein Benutzername",
                    border: OutlineInputBorder()),
              ),
              heightBetween,

              //E-Mail
              TextFormField(
                controller: mailController,
                validator: validMail,
                decoration: const InputDecoration(
                    label: Text("E-Mail Adresse"),
                    border: OutlineInputBorder()),
              ),
              heightBetween,
              //Passwort
              TextFormField(
                controller: passwordController,
                validator: validPassword,
                decoration: const InputDecoration(
                    label: Text("Passwort"), border: OutlineInputBorder()),
              ),
              heightBetween,
              //Passwort bestätigen
              TextFormField(
                controller: confirmPasswordController,
                validator: (String? value) {
                  if (value != null && value.isNotEmpty) {
                    if (confirmPasswordController.value !=
                        passwordController.value) {
                      return "Passwörter stimmen nicht überein!";
                    }
                  }
                  return null;
                },
                decoration: const InputDecoration(
                    label: Text("Passwort wiederholen"),
                    border: OutlineInputBorder()),
              ),
              heightBetween,
              ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text("Alles Richtig")));
                    }
                  },
                  child: const Text("Account erstellen"))
            ],
          )),
    );
  }
}
