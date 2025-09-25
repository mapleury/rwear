import 'package:flutter/material.dart';
import 'package:my_app/utils/const.dart';
import 'package:my_app/utils/size-config.dart';

class OnboardingContent extends StatelessWidget {
  const OnboardingContent({super.key, required this.text, required this.image});

  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/images/logos.png',
          fit: BoxFit.cover,
          height: getProporsionateScreenHeight(120),
        ),
        Spacer(),
        Image.asset(
          image,
          fit: BoxFit.cover,
          height: getProporsionateScreenWidth(240),
        ),
        SizedBox(height: 20),
        Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(color: textColor, fontSize: 16),
        ),
      ],
    );
  }
}
