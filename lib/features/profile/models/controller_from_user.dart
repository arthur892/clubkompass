import 'package:clubkompass/shared/models/user.dart';
import 'package:flutter/material.dart';

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
