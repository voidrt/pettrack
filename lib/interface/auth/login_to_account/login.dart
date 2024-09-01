import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pet_track/core/routes.dart';
import 'package:pet_track/interface/global/buttons/standard_button.dart';

class LoginToAccountScreen extends StatelessWidget {
  const LoginToAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.surface,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Theme.of(context).colorScheme.inverseSurface,
            ),
            onPressed: () {
              context.pop();
            },
          )),
      body: Center(
        child: StandardButton(onTap: () {}, text: 'Login to Account'),
      ),
    );
  }
}
