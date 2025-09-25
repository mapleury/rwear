import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'SF UI Display',
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.lightContainerBg,
    cardColor: AppColors.lightDetailBg,
    dividerColor: AppColors.lightIcon.withOpacity(0.2),
    iconTheme: const IconThemeData(color: AppColors.lightIcon),
    textTheme: const TextTheme(
      bodyMedium: TextStyle(fontSize: 15, color: AppColors.lightTitleText),
      bodySmall: TextStyle(fontSize: 13, color: AppColors.lightSecondaryGrey),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'SF Pro Display',
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.darkContainerBg,
    cardColor: AppColors.darkDetailBg,
    dividerColor: AppColors.darkIcon.withOpacity(0.2),
    iconTheme: const IconThemeData(color: AppColors.darkIcon),
    textTheme: const TextTheme(
      bodyMedium: TextStyle(fontSize: 15, color: AppColors.darkTitleText),
      bodySmall: TextStyle(fontSize: 13, color: AppColors.darkSecondaryGrey),
    ),
  );
}
