import 'package:flutter/material.dart';
import 'package:ts_4_8_1_eigene_app_ui/features/login/repositories/mock_user_repository.dart';
import 'package:ts_4_8_1_eigene_app_ui/features/login/schema/server_user_response.dart';

class UserService {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final _mockUserRepository = MockUserRepository();

  Future<ServerUserResponse> login() {
    final String email = emailController.text;
    final String password = passwordController.text;

    return _mockUserRepository.loginAndGetUser(email, password);
  }
}
