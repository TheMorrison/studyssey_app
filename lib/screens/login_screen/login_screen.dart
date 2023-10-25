import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:passwordfield/passwordfield.dart';
import '../../constant.dart';
import '../dashboard_screen/dashboard_screen.dart';
import '../onboarding_screen/onboarding_screen.dart';
import '../resetpassword_screen/resetpassword_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  static String routeName = 'LoginScreen';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 53.92,
          backgroundColor: scaffold,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 25.56, bottom: 2.11),
            child: GestureDetector(
              onTap: () => Navigator.pushReplacementNamed(
                context,
                OnboardingScreen.routeName,
              ),
              child: SvgPicture.asset(
                kBackButtonIcon,
                width: 31.68,
                height: 31.7,
              ),
            ),
          ),
          title: Padding(
            padding: const EdgeInsets.only(bottom: 2.11),
            child: Text(
              'Back',
              style: GoogleFonts.manrope(
                  fontWeight: FontWeight.w500,
                  fontSize: 13.33,
                  color: textColor1),
            ),
          ),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 19.89, left: 25.56),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Login',
                    style: GoogleFonts.manrope(
                        fontSize: 24.44, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25.56, top: 1.11),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Enter your credentials to access studyssey',
                    style: GoogleFonts.manrope(
                        fontWeight: FontWeight.w500,
                        fontSize: 11.11,
                        color: textColor1),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 43.33, right: 10),
                child: SizedBox(
                  width: 350,
                  height: 50.89,
                  child: TextField(
                    cursorHeight: 20,
                    cursorColor: const Color(0xff000000),
                    keyboardType: TextInputType.number,
                    style: GoogleFonts.manrope(
                        fontSize: 20, fontWeight: FontWeight.w500),
                    decoration: InputDecoration(
                      labelText: 'Index Number',
                      labelStyle: GoogleFonts.manrope(
                          fontSize: 11.11,
                          fontWeight: FontWeight.w500,
                          color: textColor3),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4.44),
                        borderSide:
                            const BorderSide(width: 0.87, color: borderColor),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4.44),
                        borderSide:
                            const BorderSide(width: 0.87, color: borderColor),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4.44),
                        borderSide: const BorderSide(
                          width: 0.87,
                          color: kErrorBorderColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 31.11, right: 10),
                child: SizedBox(
                  width: 350,
                  height: 50.89,
                  child: PasswordField(
                    color: color1,
                    hasFloatingPlaceholder: true,
                    floatingText: 'Password',
                    hintText: 'must include special characters',
                    border: PasswordBorder(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4.44),
                        borderSide:
                            const BorderSide(width: 0.87, color: borderColor),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4.44),
                        borderSide:
                            const BorderSide(width: 0.87, color: borderColor),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4.44),
                        borderSide: const BorderSide(
                            width: 0.87, color: kErrorBorderColor),
                      ),
                    ),
                    passwordDecoration: PasswordDecoration(
                      suffixIcon: const Icon(Icons.visibility_off),
                      hintStyle: GoogleFonts.manrope(
                          fontSize: 11.11,
                          fontWeight: FontWeight.w500,
                          color: textColor3),
                      inputStyle: GoogleFonts.manrope(
                          fontSize: 13.33, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 35.56, left: 26.11, right: 26.11),
                child: SizedBox(
                  width: 307.78,
                  height: 44.44,
                  child: ElevatedButton(
                    onPressed: () => Navigator.pushNamedAndRemoveUntil(
                        context, DashBoard.routeName, (route) => false),
                    style: const ButtonStyle(
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    child: Text(
                      'Log In',
                      style: GoogleFonts.manrope(
                          fontWeight: FontWeight.w600,
                          fontSize: 14.81,
                          color: textColor2),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 22.22, left: 94.44, right: 94.44),
                child: TextButton(
                  onPressed: () => Navigator.pushNamedAndRemoveUntil(
                      context, ResetPasswordScreen.routeName, (route) => false),
                  child: Text.rich(
                    textAlign: TextAlign.center,
                    TextSpan(
                      text: 'Forgot your password?\nClick ',
                      style: GoogleFonts.manrope(
                          fontWeight: FontWeight.w500,
                          fontSize: 11.11,
                          color: textColor1),
                      children: [
                        TextSpan(
                          text: 'here',
                          style: GoogleFonts.manrope(
                              fontWeight: FontWeight.w500,
                              fontSize: 11.11,
                              color: iconColor2),
                        ),
                        TextSpan(
                          text: ' reset your password.',
                          style: GoogleFonts.manrope(
                              fontWeight: FontWeight.w500,
                              fontSize: 11.11,
                              color: textColor1),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
