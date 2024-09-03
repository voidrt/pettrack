import 'package:flutter/material.dart';
import 'package:pet_track/core/services/authentication_util.dart';
import 'package:pet_track/interface/global/buttons/standard_button.dart';

class UserPetsFeed extends StatelessWidget {
  const UserPetsFeed({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('helo'),
        StandardButton(
            onTap: () {
              AuthHelper().signOut();
            },
            text: 'saia')
      ],
    );
  }
}
