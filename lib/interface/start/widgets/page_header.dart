import 'package:flutter/material.dart';
import 'package:pet_track/interface/global/text/standard_text.dart';
import 'package:pet_track/theme/paddings.dart';

class HomePageHeader extends StatelessWidget {
  const HomePageHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: Paddings.big,
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              'assets/images/minhas vestimentas.jpg',
              height: 200,
              width: 200,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(
            height: Paddings.small,
          ),
          const StandardHeadlineText('Pet Trackr'),
          const StandardSubtitleText(
            'Encontrador de Pets do Joao :D',
          ),
        ],
      ),
    );
  }
}
