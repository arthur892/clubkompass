import 'package:clubkompass/shared/models/repository/interface_auth.dart';
import 'package:clubkompass/shared/models/repository/models/app_user.dart';

class MockAuth extends InterfaceAuth {
  @override
  Future<AppUser> loginAndGetUser() {
    // TODO: implement loginAndGetUser
    throw UnimplementedError();
  }

  @override
  Future<void> logoutUser() {
    // TODO: implement logoutUser
    throw UnimplementedError();
  }

  @override
  Future<void> sighInGoogle() {
    // TODO: implement sighInGoogle
    throw UnimplementedError();
  }

  @override
  Future<void> signInMail() {
    // TODO: implement signInMail
    throw UnimplementedError();
  }
}
