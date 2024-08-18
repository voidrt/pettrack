import 'package:flutter/material.dart';

import 'colors.dart';
import 'text_theme.dart';

class PetTrackTheme {
  static final themeData = ThemeData.light().copyWith(
    textTheme: TextTheme(
      labelMedium: PetTrackTextStyle.subtitleText,
      bodyMedium: PetTrackTextStyle.bodyText,
      headlineMedium: PetTrackTextStyle.headlineText,
    ),
    colorScheme: const ColorScheme.light().copyWith(
      primary: AppColors.primary,
      secondary: AppColors.secondary,
      surface: AppColors.background,
      onSurface: AppColors.white,
      inverseSurface: AppColors.black,
      shadow: AppColors.darkGrey,
    ),
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    buttonTheme: const ButtonThemeData(
      splashColor: Colors.transparent,
    ),
  );
}
