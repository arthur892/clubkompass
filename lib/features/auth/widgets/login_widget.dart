import 'package:clubkompass/features/auth/validator.dart';
import 'package:clubkompass/shared/models/repository/interface_auth.dart';
import 'package:clubkompass/ui/ck_buttons.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({super.key});

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

const Widget heightBetween = SizedBox(
  height: 8,
);

class _LoginWidgetState extends State<LoginWidget> {
// final AuthRepository auth = Provider.of<UserProvider>

  // final UserService userService = UserService();
  String? successMessage;
  String? errorMessage;
  bool isLoading = false;
  final _formKey = GlobalKey<FormState>();
  bool obscureTextPassword = true;

  final TextEditingController controllerMail = TextEditingController();
  final TextEditingController controllerPassword = TextEditingController();

  void handleLogin(BuildContext context) async {
    setState(() {
      errorMessage = null;
      successMessage = null;
      isLoading = true;
    });

    final InterfaceAuth auth =
        Provider.of<InterfaceAuth>(context, listen: false);

    try {
      await auth.loginUserWithEmailAndPassword(
          controllerMail.text, controllerPassword.text);
    } catch (e) {}
  }

  // void navigateToOverview(User user) {
  //   Navigator.pop(context);
  //   Provider.of<UserProvider>(context, listen: false).setUser(user);
  //   Navigator.pushReplacementNamed(context, '/navigation');
  // }

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
                //validator: Validator.validPassword,
                textInputAction: TextInputAction.done,

                obscureText: obscureTextPassword,
                decoration: InputDecoration(
                    label: const Text("Passwort"),
                    border: const OutlineInputBorder(),
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            obscureTextPassword = !obscureTextPassword;
                          });
                        },
                        icon: obscureTextPassword
                            ? const Icon(Icons.visibility)
                            : const Icon(Icons.visibility_off))),
              ),
              CkIconButton(
                text: "Einloggen",
                textAlign: TextAlign.center,
                width: 150,
                onTap: () {
                  if (_formKey.currentState!.validate()) {
                    handleLogin(context);
                  }
                },
              ),
              if (successMessage != null)
                Text(
                  successMessage!,
                  style: const TextStyle(color: Colors.green),
                ),
              if (isLoading) const CircularProgressIndicator(),
              if (errorMessage != null)
                Text(
                  errorMessage!,
                  style: const TextStyle(color: Colors.red),
                ),
            ],
          )),
    );
  }
}
