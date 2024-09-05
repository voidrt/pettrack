import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pet_track/core/services/authentication_util.dart';
import 'package:pet_track/interface/global/buttons/standard_button.dart';
import 'package:pet_track/interface/global/text/standard_text.dart';
import 'package:pet_track/theme/paddings.dart';

class UserProfile extends ConsumerWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final User? user = ref.watch(authHelperProvider).currentUser;

    return Padding(
      padding: const EdgeInsets.only(top: Paddings.defaultSize),
      child: Column(
        children: [
          const StandardHeadlineText(
            'Meu Perfil',
            weight: FontWeight.w400,
          ),
          Text(user!.email.toString()),
          StandardButton(
            onTap: () {
              AuthHelper().signOut();
            },
            text: 'saia',
          ),
        ],
      ),
    );
  }
}
