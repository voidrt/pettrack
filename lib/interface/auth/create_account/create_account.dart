import 'package:flutter/material.dart';
import 'package:pet_track/interface/global/buttons/standard_button.dart';

class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: StandardButton(onTap: () {}, text: 'Create account'),
      ),
    );
  }
}
