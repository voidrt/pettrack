import 'package:flutter/material.dart';
import 'package:pet_track/interface/initial/widgets/lost_pet_textform.dart';
import 'package:pet_track/interface/initial/widgets/page_header.dart';
import 'package:pet_track/theme/paddings.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            HomePageHeader(),
            Padding(
              padding: EdgeInsets.symmetric(vertical: Paddings.defaultSize),
              child: Divider(),
            ),
            PetCollarCodeInput(),
            SizedBox(height: Paddings.defaultSize),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
