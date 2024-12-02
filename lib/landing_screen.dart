import 'package:flutter/material.dart';
import 'package:ts_4_8_1_eigene_app_ui/ui/ck_buttons.dart';

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
                fit: BoxFit.cover)),
        width: MediaQuery.sizeOf(context).width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          //mainAxisAlignment: MainAxisAlignment.center,
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
            Text(
              "Clubkompass",
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge
                  ?.copyWith(color: Colors.white),
            ),
            const SizedBox(
              height: 20,
            ),
            const CkIconButton(
              icon: Icons.g_mobiledata_rounded,
              text: "Login with Google",
              fontWeight: FontWeight.bold,
            ),
            const CkIconButton(
              icon: Icons.apple_rounded,
              text: "Login with Apple",
              fontWeight: FontWeight.bold,
            ),
            CkIconButton(
              icon: Icons.email,
              text: "Weiter mit E-Mail",
              fontWeight: FontWeight.bold,
              onTap: () {
                Navigator.pushNamed(context, '/register');
              },
            ),
            const Divider(
              thickness: 2,
              //height: 20,
              color: Colors.white,
            ),
            const CkIconButton(
              text: "Weiter als Gast",
              icon: Icons.person,
              fontWeight: FontWeight.bold,
            )
          ],
        ),
      ),
    );
  }
}
