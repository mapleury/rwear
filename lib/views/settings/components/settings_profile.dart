import 'package:flutter/material.dart';
import 'package:my_app/utils/app_colors.dart';
import '../../../utils/theme_notifier.dart';

class SettingsProfile extends StatelessWidget {
   final dynamic colors;

  final ThemeNotifier themeNotifier;
  const SettingsProfile({
    super.key,
    required this.colors,
    required this.themeNotifier,
  });

  @override
  Widget build(BuildContext context) {
    
    return Container(
      decoration: BoxDecoration(
        color: colors.cardBg,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          ListTile(
            contentPadding:  EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 15,
            ),
            leading: Image.asset(
              "assets/images/dummy_profile.png",
              width: 70,
              height: 70,
            ),
            title: Text(
              'Kunikapi',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 21,
                color: colors.titleText,
              ),
            ),
            subtitle: Text(
              'Rwear Account Info',
              style: TextStyle(fontSize: 13, color: colors.titleText.withOpacity(0.6)),
            ),
            trailing: Icon(Icons.chevron_right, size: 20, color: AppColors.lightSecondaryGrey),
          ),
          Divider(height: 1, color: colors.icon.withOpacity(0.2)),
          ListTile(
            leading: Icon(Icons.list_alt, size: 20, color: colors.icon),
            title: Text(
              'My Orders',
              style: TextStyle(fontSize: 15, color: colors.titleText),
            ),
            trailing: Icon(Icons.chevron_right, size: 20, color: colors.icon),
          ),
        ],
      ),
    );
  }
}
