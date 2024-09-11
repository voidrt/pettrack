import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';
import 'package:pet_track/interface/global/buttons/icon_button.dart';
import 'package:pet_track/interface/global/buttons/standard_button.dart';
import 'package:pet_track/interface/global/text/standard_text.dart';
import 'package:pet_track/interface/global/text_field.dart';
import 'package:pet_track/theme/paddings.dart';

class PetCollarCodeInput extends StatelessWidget {
  const PetCollarCodeInput({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final TextEditingController petIdController = TextEditingController();

    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Flexible(
          fit: FlexFit.tight,
          flex: 3,
          child: AppTextField(
            labelText: '  Insira o codigo da coleira',
            petIdController,
            obscureText: false,
            padding: const EdgeInsets.only(
              top: Paddings.small,
              left: Paddings.veryBig,
            ),
          ),
        ),
        Flexible(
          flex: 2,
          fit: FlexFit.loose,
          child: LineIconButton(
            onTap: () {},
            icon: LineIcons.search,
            backgroundColor: Theme.of(context).colorScheme.secondary,
            foregroundColor: Theme.of(context).colorScheme.surface,
          ),
        ),
      ],
    );
  }
}
