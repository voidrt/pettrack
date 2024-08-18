import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

class PetTrackTextStyle {
  static final subtitleText = GoogleFonts.getFont(
    'Exo',
    fontSize: TextSizes.subtitle,
    fontWeight: FontWeight.w300,
  );

  static final bodyText = GoogleFonts.getFont(
    'Exo',
    fontSize: TextSizes.bodyTextSize,
    fontWeight: FontWeight.w400,
  );

  static final headlineText = GoogleFonts.getFont(
    'Exo',
    fontSize: TextSizes.headlineTextSize,
    fontWeight: FontWeight.w600,
  );
}

class TextSizes {
  static const double subtitle = 14;
  static const double bodyTextSize = 16;
  static const double headlineTextSize = 24;
}
