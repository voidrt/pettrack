import 'package:flutter/material.dart';
import 'package:pet_track/interface/home/feed/pet_feed.dart';
import 'package:pet_track/interface/home/navigation/navigation_bar.dart';
import 'package:pet_track/interface/home/profile/user_profile.dart';

class UserHomePage extends StatelessWidget {
  const UserHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        bottomNavigationBar: CustomNavigationBar(mediaQuerySize: screenSize),
        body: SafeArea(
          child: TabBarView(
            children: [
              const UserPetsFeed(),
              UserProfile(),
            ],
          ),
        ),
      ),
    );
  }
}
