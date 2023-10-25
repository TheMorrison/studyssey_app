import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../constant.dart';

import '../login_screen/login_screen.dart';
import 'build_page.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});
  static String routeName = 'OnboardingScreen';

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final controller = PageController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffold,
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: PageView(
              controller: controller,
              children: const [
                BuildPage(
                    title: 'Student-life at\nGCTU has never been\nso convenient',
                    imagePath: kOnboardingImage1),
                BuildPage(
                    title: 'Access your\nstudy materials and SIP\nin one place',
                    imagePath: kOnboardingImage2),
                BuildPage(
                    title: 'Pay fees and other\nbills with simple few\nclicks!',
                    imagePath: kOnboardingImage3),
                BuildPage(
                    title: 'Keep up with the times\nand receiver rapid\nassistance',
                    imagePath: kOnboardingImage4)
              ],
            ),
          ),
        ],
      ),
      bottomSheet: SizedBox(
        height: 316.25 / 1.5,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: SmoothPageIndicator(
                controller: controller,
                count: 4,
                effect: const ExpandingDotsEffect(
                  expansionFactor: 5,
                  dotColor: color3,
                  activeDotColor: smoothPageIndicator,
                  spacing: 5,
                  dotHeight: 5.56,
                  dotWidth: 5.56,
                  radius: 4.44
                ),
                onDotClicked: (index) => controller.animateToPage(index,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeIn),
              ),
            ),
            const SizedBox(
              height: 62.4,
            ),
            SizedBox(
              height: 41.6,
              width: 250,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, LoginScreen.routeName, (route) => false);
                },
                child: Text(
                  'Log In',
                  style: GoogleFonts.questrial(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      color: textColor2),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
