import 'package:flutter/material.dart';
import 'package:my_app/utils/app_colors.dart';
import 'package:my_app/utils/theme_notifier.dart';
import 'package:provider/provider.dart';

class FooterBanner extends StatelessWidget {
  const FooterBanner({super.key});

  @override
  Widget build(BuildContext context) {
    final themeNotifier = context.watch<ThemeNotifier>();
    final colors = context.colors;

    return Column(
      children: [
        Image.asset(
          themeNotifier.isDark
              ? 'assets/images/promotion_banner2.png'
              : 'assets/images/promotion_banner1.png',
        ),
        SizedBox(height: 36),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Sort by Brand",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: colors.titleText,
              ),
            ),
            Text("See all", style: TextStyle(fontSize: 14, color: colors.icon)),
          ],
        ),
        SizedBox(height: 15),
        Image.asset('assets/images/branded_banner.png'),
      ],
    );
  }
}
