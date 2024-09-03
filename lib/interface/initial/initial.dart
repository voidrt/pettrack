import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pet_track/core/services/authentication_util.dart';
import 'package:pet_track/interface/home/anon_home.dart';
import 'package:pet_track/interface/home/user_home.dart';

class AuthenticationCheck extends StatefulWidget {
  const AuthenticationCheck({super.key});

  @override
  State<AuthenticationCheck> createState() => _AutenticationCheckState();
}

class _AutenticationCheckState extends State<AuthenticationCheck> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        return snapshot.hasData
            ? const UserHomePage()
            : const AnonymousHomePage();
      },
    );
  }
}
