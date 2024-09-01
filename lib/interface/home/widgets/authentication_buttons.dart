import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pet_track/interface/global/buttons/standard_button.dart';
import 'package:pet_track/theme/paddings.dart';

class AuthenticationButtonRow extends StatelessWidget {
  const AuthenticationButtonRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
