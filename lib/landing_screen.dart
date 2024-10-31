import 'package:flutter/material.dart';
import 'package:ts_4_8_1_eigene_app_ui/config/sizes.dart';
import 'package:ts_4_8_1_eigene_app_ui/features/authentication/registration_screen_old.dart';
import 'package:ts_4_8_1_eigene_app_ui/features/authentication/registration_widget.dart';
import 'package:ts_4_8_1_eigene_app_ui/navigation.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        width: MediaQuery.sizeOf(context).width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              height: 320,
              child: Image.asset(
                "assets/icon/just_icon.png",
                fit: BoxFit.cover,
              ),
            ),
            Text("Clubkompass",
                style: Theme.of(context).textTheme.headlineLarge),
            const SizedBox(
              height: 20,
            ),
            buttonsChoose()
            //buildChoose()
          ],
        ),
      ),
    );
  }

//Anmelden per Google, Apple oder E-Mail
  Widget buttonsChoose() {
    return SizedBox(
      width: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ElevatedButton.icon(
            //style: ElevatedButton.styleFrom(padding: EdgeInsets.fromLTRB(25, 0, 25, 0)),
            onPressed: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => const Navigation()));
            },
            label: Text("Login mit Google",
                style: Theme.of(context).textTheme.labelLarge),
            icon: const Icon(
              Icons.g_mobiledata_rounded,
              //color: Theme.of(context).primaryColor,
            ),
          ),
          ElevatedButton.icon(
            onPressed: () {
              setState(() {});
            },
            label: Text("Login mit Apple",
                style: Theme.of(context).textTheme.labelLarge),
            icon: const Icon(Icons.apple_rounded),
          ),
          ElevatedButton.icon(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const RegistrationScreen_old()));
            },
            label: Text("Weiter mit E-Mail",
                style: Theme.of(context).textTheme.labelLarge),
            icon: const Icon(Icons.email_rounded),
          ),
          ElevatedButton.icon(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Scaffold(
                        appBar: AppBar(
                          title: const Text("Registrieren"),
                        ),
                        body: const RegistrationWidget(),
                      )));
            },
            label: Text("Neues Konto erstellen",
                style: Theme.of(context).textTheme.labelLarge),
            icon: const Icon(Icons.app_registration_rounded),
          )
        ],
      ),
    );
  }

  Widget buildEmail() {
    Widget buildLoginOrRegister = buildLoginDetails();
    return Column(
      children: [
        Row(
          children: [
            Expanded(
                flex: 3,
                child: ElevatedButton(
                  onPressed: null,
                  style: ElevatedButton.styleFrom(
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
                        //registerSelected = true;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(buttonRadius),
                                bottomRight: Radius.circular(buttonRadius)))),
                    child: Text(
                      "Registrierung",
                      style: Theme.of(context).textTheme.labelLarge,
                    )))
          ],
        ),
        const SizedBox(
          height: sizeBetweenElements,
        ),
        buildLoginOrRegister
      ],
    );
  }

  Widget buildLoginDetails() {
    return AutofillGroup(
        child: Column(
      children: [
        TextFormField(
          decoration: const InputDecoration(
              border: OutlineInputBorder(), labelText: "E-Mail"),
        ),
        const SizedBox(
          height: sizeBetweenElements,
        ),
        TextFormField(
          decoration: const InputDecoration(
              border: OutlineInputBorder(), labelText: "Passwort"),
        ),
        const SizedBox(
          height: sizeBetweenElements,
        ),
        ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const Navigation()));
            },
            child: const Text("Anmelden")),
        ElevatedButton(
            onPressed: () {
              setState(() {});
            },
            child: const Text("Zurück"))
      ],
    ));
  }
}
