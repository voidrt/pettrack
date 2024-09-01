import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pet_track/interface/global/buttons/standard_button.dart';
import 'package:pet_track/interface/global/text/standard_text.dart';
import 'package:pet_track/interface/global/text_field.dart';
import 'package:pet_track/interface/initial/widgets/authentication_buttons.dart';
import 'package:pet_track/interface/initial/widgets/lost_pet_textform.dart';
import 'package:pet_track/interface/initial/widgets/page_header.dart';

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
            const HomePageHeader(),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: Paddings.defaultSize),
              child: Divider(),
            ),
            LostPetTextform(controller: petIdController),
            const StandardBodyText('ou'),
            const SizedBox(height: Paddings.big),
            const StandardBodyText(
              'Acesse seu perfil e veja os pets cadastrados',
            ),
            const AuthenticationButtonRow(),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
