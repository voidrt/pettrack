// ignore_for_file: curly_braces_in_flow_control_structures

import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final Provider<AuthHelper> authHelperProvider = Provider((ref) => AuthHelper());

class AuthHelper {
  final FirebaseAuth _firebaseInstance = FirebaseAuth.instance;

  User? get currentUser => _firebaseInstance.currentUser;

  Stream<User?> get authStateChanges => _firebaseInstance.authStateChanges();

  void emailSignIn({email, password}) async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  Future<int> createUserWithEmail({
    required String email,
    required String password,
  }) async {
    try {
      await _firebaseInstance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return 0;
    } on FirebaseAuthException catch (error) {
      int response = 3;
      if (error.message == 'weak-password') response = 1;
      if (error.message == 'email-already-in-use') response = 2;
      return response;
    } catch (e) {
      log(e.toString());
    }

    return 0;
  }

  Future<void> signOut() async {
    await _firebaseInstance.signOut();
  }
}
