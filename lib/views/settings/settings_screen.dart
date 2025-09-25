import 'package:flutter/material.dart';
import 'package:my_app/views/settings/components/settings_header.dart';
import 'package:my_app/views/settings/components/settings_logout.dart';
import 'package:my_app/views/settings/components/settings_options.dart';
import 'package:my_app/views/settings/components/settings_profile.dart';
import 'package:provider/provider.dart';
import '../../utils/theme_notifier.dart';
import '../../utils/app_colors.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeNotifier = context.watch<ThemeNotifier>();
    final colors = context.colors;

    return Scaffold(
      backgroundColor: colors.containerBg,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SettingsHeader(colors: colors),
              SizedBox(height: 24),
              SettingsProfile(colors: colors, themeNotifier: themeNotifier,),
              SizedBox(height: 24),
              SettingsOptions(colors: colors, themeNotifier: themeNotifier),
              SizedBox(height: 32),
              SettingsLogout(colors: colors),
            ],
          ),
        ),
      ),
    );
  }
}
