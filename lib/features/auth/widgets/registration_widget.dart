import 'package:clubkompass/features/auth/validator.dart';
import 'package:flutter/material.dart';

class RegistrationWidget extends StatefulWidget {
  const RegistrationWidget({super.key});

  @override
  State<RegistrationWidget> createState() => _RegistrationWidgetState();
}

const double paddingLR = 20;
const Widget heightBetween = SizedBox(
  height: 8,
);

class _RegistrationWidgetState extends State<RegistrationWidget> {
  final TextEditingController controllerMail = TextEditingController();
  final TextEditingController controllerPassword = TextEditingController();
  final TextEditingController controllerconfirmPassword =
      TextEditingController();

  final _formKey = GlobalKey<FormState>();
  bool obscurePassword = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Form(
          key: _formKey,
          child: Column(
            children: [
              //Username
              // TextFormField(
              //   controller: controllerUsername,
              //   validator: Validator.validUsername,
              //   decoration: const InputDecoration(
              //       label: Text("Benutzername"),
              //       //hintText: "Dein Benutzername",
              //       border: OutlineInputBorder()),
              // ),
              // heightBetween,

              //E-Mail

              TextFormField(
                controller: controllerMail,
                validator: Validator.validMail,
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(
                    label: Text("E-Mail Adresse"),
                    border: OutlineInputBorder()),
              ),
              heightBetween,
              //Passwort
              TextFormField(
                controller: controllerPassword,
                validator: Validator.validPassword,
                obscureText: obscurePassword,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                    label: const Text("Passwort"),
                    border: const OutlineInputBorder(),
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            obscurePassword = !obscurePassword;
                          });
                        },
                        icon: obscurePassword
                            ? const Icon(Icons.visibility)
                            : const Icon(Icons.visibility_off))),
              ),
              heightBetween,
              //Passwort bestätigen
              TextFormField(
                controller: controllerconfirmPassword,
                textInputAction: TextInputAction.done,
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Es muss etwas angegeben werden!";
                  }
                  if (value.isNotEmpty) {
                    if (controllerconfirmPassword.value !=
                        controllerPassword.value) {
                      return "Passwörter stimmen nicht überein!";
                    }
                  }

                  return null;
                },
                obscureText: obscurePassword,
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
