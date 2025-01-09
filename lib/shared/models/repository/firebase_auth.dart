import 'dart:developer';

import 'package:clubkompass/shared/models/repository/interface_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRepository extends InterfaceAuth {
  final FirebaseAuth firebaseAuth;
  AuthRepository({required this.firebaseAuth});

  UserModel? _userFromFirebase(User? user) {
    if (user == null) {
      return null;
    }
    return UserModel(uid: user.uid, email: user.email!);
  }

  @override
  Future<UserModel?> loginUserWithEmailAndPassword(
      String email, String password) async {
    try {
      final UserCredential credentials = await firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password);
      return _userFromFirebase(credentials.user);
    } catch (e) {
      log("Error loginUserWithEmailAndPassword");
    }
    return null;
  }

  @override
  Future<void> signOut() {
    // TODO: implement logoutUser
    throw UnimplementedError();
  }

  @override
  Future<void> sighUpGoogle() {
    // TODO: implement sighInGoogle
    throw UnimplementedError();
  }

  @override
  Future<UserModel?> createUserWithEmailAndPassword(
      String email, String password) async {
    try {
      final cred = await firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
      return _userFromFirebase(cred.user);
    } catch (e) {
      log("Error createUserWithEmailAndPassword");
    }
    return null;
  }

  @override
  Stream<UserModel?> get onAuthStateChanged {
    return firebaseAuth.authStateChanges().map(_userFromFirebase);
  }

  @override
  Future<UserModel?> currentUser() async {
    final user = firebaseAuth.currentUser;
    return _userFromFirebase(user);
  }
}
