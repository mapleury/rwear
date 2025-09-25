import 'package:flutter/material.dart';
import 'package:my_app/data/products_data.dart';
import 'package:my_app/views/auth/login_screen.dart';
import 'package:my_app/views/auth/signup_screen.dart';
import 'package:my_app/views/cart/cart_screen.dart';
import 'package:my_app/views/detail/product_detail_screen.dart';
import 'package:my_app/views/home/home_screen.dart';
import 'package:my_app/views/onboarding/onboarding_screen.dart';
import 'package:my_app/views/settings/settings_screen.dart';
import 'package:my_app/views/splash/splash_screen.dart';
import 'package:provider/provider.dart';

import 'utils/theme_notifier.dart';
import 'models/products_model.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeNotifier(),
      child: const RwearApp(),
    ),
  );
}

class RwearApp extends StatelessWidget {
  const RwearApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeNotifier>(
      builder: (context, themeNotifier, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Rwear Settings',
          themeMode: themeNotifier.currentTheme,
          theme: ThemeData.light(useMaterial3: true),
          darkTheme: ThemeData.dark(useMaterial3: true),
          initialRoute: '/splash',

          routes: {
            '/splash': (context) => SplashScreen(),
            '/settings': (context) => SettingsScreen(),
            '/onboarding': (context) => OnboardingScreen(),
            '/signup': (context) => SignUpScreen(),
            '/login': (context) => LoginScreen(),
            '/home': (context) => HomeScreen(),
            '/cart': (context) => CartScreen(products: [products[0], products[1]]),
          },

          onGenerateRoute: (settings) {
            if (settings.name == '/detail') {
              final args = settings.arguments as Map<String, dynamic>;
              return MaterialPageRoute(
                builder: (context) => ProductDetailScreen(
                  product: args['product'] as ProductsModel,
                  colors: args['colors'],
                ),
              );
            }
            return null;
          },
        );
      },
    );
  }
}
