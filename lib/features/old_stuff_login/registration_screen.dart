import 'package:clubkompass/features/old_stuff_login/widgets/login_widget.dart';
import 'package:clubkompass/features/old_stuff_login/widgets/registration_widget.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  bool registrationSelected = false;
  final double buttonRadius = 25.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Anmeldung / Registrierung'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                  flex: 3,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        registrationSelected = false;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: registrationSelected
                            ? Theme.of(context)
                                .colorScheme
                                .onSurface
                                .withOpacity(0.12)
                            : Theme.of(context).colorScheme.primary,
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(buttonRadius),
                                bottomLeft: Radius.circular(buttonRadius)))),
                    child: Text(
                      "Anmelden",
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                  )),
              const SizedBox(
                width: 1,
              ),
              Expanded(
                  flex: 2,
                  child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          registrationSelected = true;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: !registrationSelected
                              ? Theme.of(context)
                                  .colorScheme
                                  .onSurface
                                  .withOpacity(0.12)
                              : Theme.of(context).colorScheme.primary,
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(buttonRadius),
                                  bottomRight: Radius.circular(buttonRadius)))),
                      child: Text(
                        "Registrierung",
                        style: Theme.of(context).textTheme.labelLarge,
                      )))
            ],
          ),
          registrationSelected
              ? const RegistrationWidget()
              : const LoginWidget()
        ],
      ),
    );
  }
}
