import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:passwordfield/passwordfield.dart';
import '../../constant.dart';
import '../login_screen/login_screen.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  static String routeName = 'ResetPasswordScreen';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 53.92,
          backgroundColor: scaffold,
          foregroundColor: textColor1,
          elevation: 0,
          leading: Padding(
            padding:
                const EdgeInsets.only( bottom: 2.11, left: 25.56),
            child: GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginScreen(),
                ),
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
              'Request Password Change',
              style: GoogleFonts.manrope(
                fontWeight: FontWeight.w500,
                fontSize: 13.33,
              ),
            ),
          ),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 51.83, right: 34, left: 34),
                child: SizedBox(
                  width: 350,
                  height: 50.89,
                  child: PasswordField(
                    color: color1,
                    hasFloatingPlaceholder: true,
                    floatingText: 'New Password',
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
                padding: const EdgeInsets.only(top: 30.79, right: 34, left: 34),
                child: SizedBox(
                  width: 350,
                  height: 50.89,
                  child: PasswordField(
                    color: color1,
                    hasFloatingPlaceholder: true,
                    floatingText: 'Repeat New Password',
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
                child: ElevatedButton(
                  onPressed: () => Navigator.pushNamedAndRemoveUntil(
                      context, LoginScreen.routeName, (route) => false),
                  style: const ButtonStyle(
                    padding: MaterialStatePropertyAll(
                      EdgeInsets.symmetric(horizontal: 91, vertical: 12),
                    ),
                    shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  child: Text(
                    'Reset Password',
                    style: GoogleFonts.manrope(
                        fontWeight: FontWeight.w600,
                        fontSize: 14.81,
                        color: textColor2),
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
