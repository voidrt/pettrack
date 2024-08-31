import 'package:flutter/material.dart';
import 'package:pet_track/interface/global/buttons/standard_button.dart';

class LoginToAccountScreen extends StatelessWidget {
  const LoginToAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: StandardButton(onTap: () {}, text: 'Login to Account'),
      ),
    );
  }
}
