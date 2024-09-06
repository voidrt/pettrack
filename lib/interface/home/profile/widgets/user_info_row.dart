import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pet_track/core/services/authentication_util.dart';
import 'package:pet_track/interface/global/text/standard_text.dart';
import 'package:pet_track/theme/paddings.dart';

class UserPictureAndName extends ConsumerWidget {
  const UserPictureAndName({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final User? user = ref.watch(authHelperProvider).currentUser;

    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Image.network(
            user!.photoURL ??
                'https://icon-library.com/images/no-user-image-icon/no-user-image-icon-0.jpg',
            fit: BoxFit.fitHeight,
            height: 60,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: Paddings.defaultSize,
          ),
          child: StandardBodyText(
            user.email.toString(),
          ),
        ),
      ],
    );
  }
}
