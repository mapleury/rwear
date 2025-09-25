import 'package:flutter/material.dart';
import 'theme_notifier.dart';
import 'package:provider/provider.dart';

class AppColors {
  // Light mode
  static const Color lightContainerBg = Color(0xFFF0F0EF);
  static const Color lightButton = Color(0xFF1E1E1E);
  static const Color lightTitleText = Color(0xFF000000);
  static const Color lightSecondaryGrey = Color(0xFF4B4B4A);
  static const Color lightIcon = Color(0xFFA5A5A4);
  static const Color lightButtonBg = Color(0xFFE7E7E5);
  static const Color lightDetailBg = Color(0xFFF7F7F7);
  static const Color authBg = Color(0xFFF4F4F4);

  // Dark mode
  static const Color darkContainerBg = Color(0xFF1E1E1E);
  static const Color darkButton = Color(0xFFF0F0EF);
  static const Color darkTitleText = Color(0xFFFFFFFF);
  static const Color darkSecondaryGrey = Color(0xFFB0B0AF);
  static const Color darkIcon = Color(0xFFCACACA);
  static const Color darkButtonBg = Color(0xFF2A2A29);
  static const Color darkDetailBg = Color(0xFF2E2E2E);
}

/// Kita pakai logic ternary biar bisa dark mode & light mode
class ColorPallete {
  final bool isDark;

  const ColorPallete(this.isDark);

  Color get containerBg =>
      isDark ? AppColors.darkContainerBg : AppColors.lightContainerBg;
  Color get cardBg => isDark ? AppColors.darkDetailBg : AppColors.lightDetailBg;
  Color get titleText =>
      isDark ? AppColors.darkTitleText : AppColors.lightTitleText;
  Color get secondaryText =>
      isDark ? AppColors.darkSecondaryGrey : AppColors.lightSecondaryGrey;
  Color get icon => isDark ? AppColors.darkIcon : AppColors.lightIcon;
}

extension AppColorsX on BuildContext {
  ColorPallete get colors {
    final isDark = watch<ThemeNotifier>().isDark;
    return ColorPallete(isDark);
  }
}
