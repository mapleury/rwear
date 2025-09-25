import 'package:flutter/material.dart';
import 'package:my_app/views/home/components/bottom_navbar.dart';
import 'package:my_app/views/home/components/footer_banner.dart';
import 'package:my_app/views/home/components/header.dart';
import 'package:my_app/views/home/components/products_display.dart';
import 'package:my_app/data/products_data.dart';
import 'package:provider/provider.dart';
import '../../utils/theme_notifier.dart';
import '../../utils/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeNotifier = context.watch<ThemeNotifier>();
    final colors = context.colors;

    return Scaffold(
      backgroundColor: colors.containerBg,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 24.0),
          children: [
            Header(),

            SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Product Overview",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: colors.titleText,
                  ),
                ),
                Text(
                  "See all",
                  style: TextStyle(fontSize: 14, color: colors.icon),
                ),
              ],
            ),

            ProductsDisplay(colors: colors, products: products),

            FooterBanner(),
            SizedBox(height: 20),

            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/settings');
              },
              child: Text("Settings"),
            ),
            SizedBox(height: 80),
            BottomAppBar(),
          ],
        ),
      ),
    );
  }
}
