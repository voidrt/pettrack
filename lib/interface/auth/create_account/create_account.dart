import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pet_track/core/models/user_model.dart';
import 'package:pet_track/core/routes.dart';
import 'package:pet_track/interface/global/buttons/standard_button.dart';
import 'package:pet_track/interface/global/text_field.dart';
import 'package:pet_track/interface/initial/widgets/page_header.dart';
import 'package:pet_track/theme/paddings.dart';

class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController userEmailController = TextEditingController();
    final TextEditingController userNameController = TextEditingController();
    final TextEditingController userPasswordController =
        TextEditingController();

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            const HomePageHeader(
              visibleLogo: false,
            ),
            const SizedBox(
              height: Paddings.big,
            ),
            AppTextField(
              userNameController,
              labelText: 'Insira seu nome',
              obscureText: false,
            ),
            AppTextField(
              userEmailController,
              labelText: 'Insira seu e-mail',
              obscureText: false,
            ),
            AppTextField(
              userPasswordController,
              labelText: 'Insira uma senha',
              obscureText: true,
            ),
            StandardButton(
                onTap: () {
                  User.fromLogin(
                    userEmailController.text,
                    userNameController.text,
                    [],
                  );

                  context.goNamed('home');
                },
                text: 'Criar conta'),
          ],
        ),
      ),
    );
  }
}
