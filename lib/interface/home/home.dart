import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pet_track/interface/global/buttons/standard_button.dart';
import 'package:pet_track/interface/global/text/standard_text.dart';
import 'package:pet_track/interface/global/text_field.dart';

import 'package:pet_track/theme/paddings.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController petIdController = TextEditingController();

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: Paddings.big,
              ),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      'assets/images/Atividade Wedley.JPG',
                      height: 200,
                      width: 200,
                      fit: BoxFit.fill,
                    ),
                  ),
                  const SizedBox(
                    height: Paddings.defaultSize,
                  ),
                  const StandardHeadlineText('Pet Trackr'),
                  const StandardSubtitleText(
                    'Encontrador de Pets do Joao :D',
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: Paddings.defaultSize),
              child: Divider(
                indent: Paddings.veryBig,
                endIndent: Paddings.veryBig,
                thickness: 0.5,
              ),
            ),
            const StandardBodyText(
              'Encontrou um animal perdido?\nDigite abaixo as informacoes',
            ),
            AppTextField(
              labelText: '  Numero ou nome do animal',
              petIdController,
              obscureText: false,
              padding: const EdgeInsets.symmetric(
                vertical: Paddings.defaultSize,
                horizontal: Paddings.extraBig,
              ),
            ),
            const StandardBodyText('ou'),
            const SizedBox(
              height: Paddings.big,
            ),
            const StandardBodyText(
              'Acesse seu perfil e veja os pets cadastrados',
            ),
            Padding(
              padding: const EdgeInsets.only(top: Paddings.defaultSize),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  StandardButton(
                    onTap: () {
                      context.pushNamed('create-account');
                    },
                    text: 'Criar conta',
                    foregroundColor: Colors.white,
                    backgroundColor: Theme.of(context).colorScheme.secondary,
                    roundness: 15,
                    padding: const EdgeInsets.symmetric(
                      horizontal: Paddings.defaultSize,
                      vertical: Paddings.small,
                    ),
                  ),
                  StandardButton(
                    onTap: () {
                      context.pushNamed('login');
                    },
                    text: 'Entrar',
                    roundness: 15,
                    foregroundColor: Colors.white,
                    backgroundColor: Theme.of(context).colorScheme.secondary,
                    padding: const EdgeInsets.symmetric(
                      horizontal: Paddings.defaultSize,
                      vertical: Paddings.small,
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
