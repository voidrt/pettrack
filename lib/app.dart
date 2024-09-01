import 'package:flutter/material.dart';
import 'package:pet_track/core/routes.dart';
import 'package:pet_track/theme/app_theme.dart';

class PetTrack extends StatelessWidget {
  const PetTrack({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: PetTrackTheme.themeData,
      debugShowCheckedModeBanner: false,
      routerConfig: MasterNavigator.appRouter,
      title: 'Pet Track',
    );
  }
}
