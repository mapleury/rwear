import 'package:flutter/material.dart';

class SettingsHeader extends StatelessWidget {
  final dynamic colors;
  const SettingsHeader({super.key, required this.colors});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: Icon(Icons.arrow_back_ios_new, size: 18, color: colors.icon),
          onPressed: () {
            Navigator.pushNamed(context, '/home');
          },
        ),
         SizedBox(width: 5),
        Text(
          'Settings',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: colors.titleText,
          ),
        ),
      ],
    );
  }
}
