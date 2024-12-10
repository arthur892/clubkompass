import 'package:clubkompass/features/login/repositories/mock_user_repository.dart';
import 'package:clubkompass/features/login/schema/server_user_response.dart';
import 'package:flutter/material.dart';

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
