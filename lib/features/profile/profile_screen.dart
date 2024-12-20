import 'package:clubkompass/features/old_stuff_login/logic/user_provider.dart';
import 'package:clubkompass/features/profile/widgets/profile_pic_widget.dart';
import 'package:clubkompass/shared/models/repository/models/app_user.dart';
import 'package:clubkompass/shared/models/repository/models/controller_from_user.dart';
import 'package:clubkompass/ui/ck_buttons.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  //final TextEditingController controllerUser = TextEditingController();
  late AppUser user;
  late ControllerFromUser controller;
  final double widthOffset = 20;

  @override
  void initState() {
    super.initState();
    final userProvider = Provider.of<UserProvider>(context, listen: false);
    user = userProvider.user!;

    controller = ControllerFromUser(user);
  }

  @override
  Widget build(BuildContext context) {
    final double widthMax = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: SizedBox(
        width: widthMax,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Profil"),
            const ProfilePictureWidget(),
            const SizedBox(
              height: 20,
            ),
            CkIconButton(
              text: "Benachrichtigungen",
              icon: Icons.notifications,
              width: widthMax - widthOffset,
            ),
            CkIconButton(
              text: "Aussehen",
              icon: Icons.color_lens,
              width: widthMax - widthOffset,
            ),
            CkIconButton(
              text: "Passwort / Username ändern",
              icon: Icons.password,
              width: widthMax - widthOffset,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/');
                },
                child: const Text("Ausloggen"))
          ],
        ),
      ),
    );
  }
}
