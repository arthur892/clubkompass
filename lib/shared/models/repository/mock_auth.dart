import 'package:clubkompass/shared/models/repository/interface_auth.dart';

class MockAuth extends InterfaceAuth {
  @override
  Future<UserModel?> createUserWithEmailAndPassword(
      String email, String password) {
    // TODO: implement createUserWithEmailAndPassword
    throw UnimplementedError();
  }

  @override
  Future<UserModel?> loginUserWithEmailAndPassword(
      String email, String password) {
    // TODO: implement loginUserWithEmailAndPassword
    throw UnimplementedError();
  }

  @override
  Future<void> signOut() {
    // TODO: implement logoutUser
    throw UnimplementedError();
  }

  @override
  // TODO: implement onAuthStateChanged
  Stream<UserModel?> get onAuthStateChanged => throw UnimplementedError();

  @override
  Future<void> sighUpGoogle() {
    // TODO: implement sighUpGoogle
    throw UnimplementedError();
  }

  @override
  Future<UserModel?> currentUser() {
    // TODO: implement currentUser
    throw UnimplementedError();
  }
}
