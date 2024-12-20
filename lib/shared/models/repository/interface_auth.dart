import 'package:clubkompass/shared/models/repository/models/app_user.dart';

abstract class InterfaceAuth {
  Future<AppUser> loginAndGetUser();
  Future<void> logoutUser();
  Future<void> signInMail();
  Future<void> sighInGoogle();
}
