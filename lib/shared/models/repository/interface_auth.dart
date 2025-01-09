class UserModel {
  final String uid;
  final String email;
  UserModel({required this.uid, required this.email});
}

abstract class InterfaceAuth {
  Stream<UserModel?> get onAuthStateChanged;
  Future<UserModel?> currentUser();

  Future<UserModel?> loginUserWithEmailAndPassword(
      String email, String password);

  Future<UserModel?> createUserWithEmailAndPassword(
      String email, String password);
  Future<void> sighUpGoogle();
  Future<void> signOut();
}
