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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const StandardBodyText(
          'Encontrou um animal perdido?',
          padding: EdgeInsets.symmetric(
            horizontal: Paddings.veryBig,
          ),
        ),
        AppTextField(
          labelText: '  Insira o codigo da coleira',
          controller,
          obscureText: false,
          padding: const EdgeInsets.symmetric(
            vertical: Paddings.small,
            horizontal: Paddings.veryBig,
          ),
        ),
      ],
    );
  }
}
