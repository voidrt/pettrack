import 'package:flutter/material.dart';
import 'package:pet_track/interface/global/text/standard_text.dart';
import 'package:pet_track/interface/global/text_field.dart';
import 'package:pet_track/theme/paddings.dart';

class LostPetTextform extends StatelessWidget {
  const LostPetTextform({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const StandardBodyText(
          'Encontrou um animal perdido?\nDigite abaixo as informacoes',
        ),
        AppTextField(
          labelText: '  Numero ou nome do animal',
          controller,
          obscureText: false,
          padding: const EdgeInsets.symmetric(
            vertical: Paddings.defaultSize,
            horizontal: Paddings.extraBig,
          ),
        ),
      ],
    );
  }
}
