import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:line_icons/line_icons.dart';
import 'package:pet_track/core/models/user_model.dart';
import 'package:pet_track/core/services/authentication_util.dart';
import 'package:pet_track/interface/global/text/standard_text.dart';
import 'package:pet_track/interface/home/profile/widgets/user_info_row.dart';
import 'package:pet_track/theme/paddings.dart';

class UserProfile extends ConsumerStatefulWidget {
  UserProfile({super.key});

  late User? firebaseUserInstance;
  late PetTrackUserModel petTrackerUserInstance;

  @override
  ConsumerState<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends ConsumerState<UserProfile> {
  @override
  void initState() {
    widget.firebaseUserInstance = ref.watch(authHelperProvider).currentUser;
    widget.petTrackerUserInstance = PetTrackUserModel.fromLogin(
      widget.firebaseUserInstance!.email!,
      widget.firebaseUserInstance!.displayName ?? '',
      [],
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: Paddings.defaultSize),
      child: Column(
        children: [
          const StandardHeadlineText(
            'Meu Perfil',
            weight: FontWeight.w400,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: Paddings.veryBig,
              vertical: Paddings.defaultSize,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const UserPictureAndName(),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(LineIcons.pen),
                ),
              ],
            ),
          ),
          const Divider(),
        ],
      ),
    );
  }
}
