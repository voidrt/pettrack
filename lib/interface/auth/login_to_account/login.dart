import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pet_track/core/services/authentication_util.dart';
import 'package:pet_track/interface/global/buttons/standard_button.dart';
import 'package:pet_track/interface/global/text/standard_text.dart';
import 'package:pet_track/interface/global/text_field.dart';

class LoginToAccountScreen extends StatelessWidget {
  const LoginToAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController userEmailController = TextEditingController();
    final TextEditingController userPasswordController =
        TextEditingController();

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
        title: const StandardBodyText('Fazer login'),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Theme.of(context).colorScheme.inverseSurface,
          ),
          onPressed: () {
            context.pop();
          },
        ),
      ),
      body: Column(
        children: [
          AppTextField(
            userEmailController,
            labelText: 'E-mail ou nome de usuario',
            obscureText: false,
          ),
          AppTextField(
            userPasswordController,
            labelText: 'Senha',
            obscureText: true,
          ),
          StandardButton(
            onTap: () {
              AuthHelper().signInWithEmail(
                email: userEmailController.text,
                password: userPasswordController.text,
              );
            },
            text: 'Login to Account',
            backgroundColor: Theme.of(context).colorScheme.primary,
          ),
        ],
      ),
    );
  }
}
