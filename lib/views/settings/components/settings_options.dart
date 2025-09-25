import 'package:flutter/material.dart';
import '../../../utils/theme_notifier.dart';

class SettingsOptions extends StatelessWidget {
  final dynamic colors;
  final ThemeNotifier themeNotifier;
  const SettingsOptions({
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
            leading: Icon(Icons.credit_card, size: 20, color: colors.icon),
            title: Text(
              'Payment Methods',
              style: TextStyle(fontSize: 15, color: colors.titleText),
            ),
            trailing: Icon(Icons.chevron_right, size: 20, color: colors.icon),
          ),
          Divider(height: 1, color: colors.icon.withOpacity(0.2)),
          ListTile(
            leading: Icon(
              Icons.notifications_none,
              size: 20,
              color: colors.icon,
            ),
            title: Text(
              'Notifications',
              style: TextStyle(fontSize: 15, color: colors.titleText),
            ),
            trailing: Icon(Icons.chevron_right, size: 20, color: colors.icon),
          ),
          Divider(height: 1, color: colors.icon.withOpacity(0.2)),
          ListTile(
            leading: Icon(Icons.lock_outline, size: 20, color: colors.icon),
            title: Text(
              'Privacy Policy',
              style: TextStyle(fontSize: 15, color: colors.titleText),
            ),
            trailing: Icon(Icons.chevron_right, size: 20, color: colors.icon),
          ),
          Divider(height: 1, color: colors.icon.withOpacity(0.2)),

          // Switch Temaa
          SwitchListTile(
            value: themeNotifier.isDark,
            onChanged: (_) => themeNotifier.toggleTheme(),
            secondary: Icon(
              Icons.dark_mode_outlined,
              size: 20,
              color: colors.icon,
            ),
            title: Text(
              'Dark Theme',
              style: TextStyle(fontSize: 15, color: colors.titleText),
            ),
          ),
        ],
      ),
    );
  }
}
