import 'package:clubkompass/shared/models/models/app_user.dart';
import 'package:flutter/material.dart';

class UserProvider with ChangeNotifier {
  AppUser? _user;
  AppUser? get user => _user;
  void setUser(AppUser user) {
    _user = user;
    notifyListeners();
  }
}
