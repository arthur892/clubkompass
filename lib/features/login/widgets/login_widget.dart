import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ts_4_8_1_eigene_app_ui/features/login/logic/user_provider.dart';
import 'package:ts_4_8_1_eigene_app_ui/features/login/logic/user_service.dart';
import 'package:ts_4_8_1_eigene_app_ui/features/login/models/validator.dart';
import 'package:ts_4_8_1_eigene_app_ui/features/login/schema/server_user_response.dart';
import 'package:ts_4_8_1_eigene_app_ui/shared/models/user.dart';
import 'package:ts_4_8_1_eigene_app_ui/ui/ck_buttons.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({super.key});

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

const Widget heightBetween = SizedBox(
  height: 8,
);

class _LoginWidgetState extends State<LoginWidget> {
  final UserService userService = UserService();
  String? successMessage;
  String? errorMessage;
  bool isLoading = false;
  final _formKey = GlobalKey<FormState>();
  bool obscurePassword = true;

  void handleLogin(BuildContext context) async {
    setState(() {
      errorMessage = null;
      successMessage = null;
      isLoading = true;
    });

    ServerUserResponse response = await userService.login();
    if (response.success) {
      setState(() {
        successMessage = "Willkommen ${response.user!.name}";
      });
      await Future.delayed(const Duration(seconds: 2));
      navigateToOverview(response.user!);
    } else {
      setState(() {
        errorMessage = response.errorMessage;
      });
    }
    setState(() {
      isLoading = false;
    });
  }

  void navigateToOverview(User user) {
    Navigator.pop(context);
    Provider.of<UserProvider>(context, listen: false).setUser(user);
    Navigator.pushReplacementNamed(context, '/navigation');
  }

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
                controller: userService.controllerEmail,
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
                controller: userService.controllerPassword,
                //validator: Validator.validPassword,
                textInputAction: TextInputAction.done,

                obscureText: obscurePassword,
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
