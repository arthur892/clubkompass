import 'package:flutter/material.dart';
import 'package:ts_4_8_1_eigene_app_ui/features/login/repositories/mock_user_repository.dart';
import 'package:ts_4_8_1_eigene_app_ui/features/login/schema/server_user_response.dart';

class UserService {
  final controllerEmail = TextEditingController();
  final controllerPassword = TextEditingController();
  final _mockUserRepository = MockUserRepository();

  Future<ServerUserResponse> login() {
    final String email = controllerEmail.text;
    final String password = controllerPassword.text;

    return _mockUserRepository.loginAndGetUser(email, password);
  }

  Future<ServerUserResponse> loginGuest() {
    const String email = "guest@guest.de";
    const String password = "guest";
    //log(_mockUserRepository.loginAndGetUser(email, password));

    return _mockUserRepository.loginAndGetUser(email, password);
  }
}
