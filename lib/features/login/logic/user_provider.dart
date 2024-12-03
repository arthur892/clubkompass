import 'package:flutter/material.dart';
import 'package:ts_4_8_1_eigene_app_ui/features/login/schema/user.dart';

class UserProvider with ChangeNotifier {
  User? _user;
  User? get user => _user;
  void setUser(User user) {
    _user = user;
    notifyListeners();
  }
}
