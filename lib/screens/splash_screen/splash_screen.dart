import 'package:flutter/material.dart';

import '../../constant.dart';
import '../onboarding_screen/onboarding_screen.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = 'SplashScreen';

  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushNamedAndRemoveUntil(
          context, OnboardingScreen.routeName, (route) => false);
    });
    return Scaffold(
      backgroundColor: splashScreen,
      body: SafeArea(
        child: Center(
          child: Image.asset(
            kSplashScreenImage2,
            height: 51,
            width: 210,
          ),
        ),
      ),
    );
  }
}
