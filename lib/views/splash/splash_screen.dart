import 'dart:async';
import 'package:flutter/material.dart';
import 'package:my_app/views/auth/login_screen.dart';
import 'package:my_app/views/auth/signup_screen.dart';
import 'package:my_app/views/home/home_screen.dart';
import 'package:my_app/views/onboarding/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        PageRouteBuilder(
          transitionDuration: Duration(milliseconds: 800),
          pageBuilder: (context, animation, secondaryAnimation) {
            return OnboardingScreen();
          },
          settings: RouteSettings(name: '/signup'),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(opacity: animation, child: child);
          },
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F6F6),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage("assets/images/logos.png"),
              width: 220,
              height: 220,
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
