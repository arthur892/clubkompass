import 'package:flutter/material.dart';
import 'package:ts_4_8_1_eigene_app_ui/shared/models/user.dart';

class ControllerFromUser {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController name = TextEditingController();

  ControllerFromUser(User user) {
    email.text = user.email;
    password.text = user.password;
    name.text = user.name;
  }
}
