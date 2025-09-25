import 'package:flutter/material.dart';

class SettingsLogout extends StatelessWidget {
  final dynamic colors;
  const SettingsLogout({super.key, required this.colors});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        children: [
          Icon(Icons.logout, color: colors.icon, size: 20),
           SizedBox(width: 8),
          Text(
            'Log Out',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: colors.titleText,
            ),
          ),
        ],
      ),
    );
  }
}
