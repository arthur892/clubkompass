import 'package:flutter/material.dart';
import 'package:ts_4_8_1_eigene_app_ui/features/login/logic/user_service.dart';
import 'package:ts_4_8_1_eigene_app_ui/features/login/schema/server_user_response.dart';
import 'package:ts_4_8_1_eigene_app_ui/features/login/schema/user.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final UserService userService = UserService();
  String? successMessage;
  String? errorMessage;
  bool isLoading = false;

  void handleLogin(BuildContext context) async {
    setState(() {
      errorMessage = null;
      successMessage = null;
      isLoading = true;
    });

    ServerUserResponse response = await userService.login();
    if (response.success) {
      setState(() {
        successMessage = "Willkommen ${response.user}";
      });
      await Future.delayed(const Duration(seconds: 2));
      navigateToOverview(response.user!);
    }
  }

  void navigateToOverview(User user) {
    Navigator.pushReplacementNamed(context, '/navigation');
  }

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [],
    );
  }
}
