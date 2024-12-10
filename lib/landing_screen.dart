import 'package:clubkompass/features/login/logic/user_provider.dart';
import 'package:clubkompass/features/login/logic/user_service.dart';
import 'package:clubkompass/features/login/schema/server_user_response.dart';
import 'package:clubkompass/shared/models/user.dart';
import 'package:clubkompass/ui/ck_buttons.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  final UserService userService = UserService();
  bool isLoading = false;

  void handleLogin(BuildContext context) async {
    setState(() {
      isLoading = true;
    });

    ServerUserResponse response = await userService.loginGuest();
    if (response.success) {
      //await Future.delayed(const Duration(seconds: 2));
      navigateToOverview(response.user!);
    }
    setState(() {
      isLoading = false;
    });
  }

  void navigateToOverview(User user) {
    Provider.of<UserProvider>(context, listen: false).setUser(user);
    Navigator.pushReplacementNamed(context, '/navigation');
  }

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
              icon: Icons.email_rounded,
              text: "Weiter mit E-Mail",
              fontWeight: FontWeight.bold,
              onTap: () {
                Navigator.pushNamed(context, '/register');
              },
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(40, 4, 40, 4),
              child: Divider(
                thickness: 2,
                //height: 20,
                color: Colors.white,
              ),
            ),
            CkIconButton(
              text: "Weiter als Gast",
              icon: Icons.person,
              fontWeight: FontWeight.bold,
              onTap: () {
                handleLogin(context);
                //Navigator.pushReplacementNamed(context, '/overview');
              },
            )
          ],
        ),
      ),
    );
  }
}
