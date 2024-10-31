import 'package:flutter/material.dart';
import 'package:ts_4_8_1_eigene_app_ui/config/sizes.dart';
import 'package:ts_4_8_1_eigene_app_ui/features/authentication/registration_widget.dart';
// import 'package:ts_4_8_1_eigene_app_ui/config/sizes.dart';
// import 'package:ts_4_8_1_eigene_app_ui/navigation.dart';

class RegistrationScreen_old extends StatefulWidget {
  const RegistrationScreen_old({super.key});

  @override
  State<RegistrationScreen_old> createState() => _RegistrationScreen_oldState();
}

class _RegistrationScreen_oldState extends State<RegistrationScreen_old> {
  bool registrationSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Anmeldung / Registrierung"),
      ),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/appimages/background.png"),
                fit: BoxFit.cover)
            // gradient: LinearGradient(
            //     stops: [0.1, 0.5, 0.9],
            //     begin: Alignment.topRight,
            //     end: Alignment.bottomLeft,
            //     colors: [
            //       Color(0xFF1ABC9C),
            //       Colors.transparent,
            //       Color(0xFF1ABC9C)
            //     ])
            ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              : Theme.of(context).colorScheme.onPrimary,
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          shape: const RoundedRectangleBorder(
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
                                : Theme.of(context).colorScheme.onPrimary,
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(buttonRadius),
                                    bottomRight:
                                        Radius.circular(buttonRadius)))),
                        child: Text(
                          "Registrierung",
                          style: Theme.of(context).textTheme.labelLarge,
                        )))
              ],
            ),
            const SizedBox(
              height: sizeBetweenElements,
            ),
            registrationSelected ? const RegistrationWidget() : login()
          ],
        ),
      ),
    );
  }

  Widget login() {
    return const Column(
      children: [Text("Login")],
    );
  }
}
