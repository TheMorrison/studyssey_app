import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constant.dart';
import '../dashboard_screen/dashboard_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  static String routeName = 'ProfileScreen';

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 53.92,
        backgroundColor: color7,
        foregroundColor: textColor1,
        leading: Padding(
          padding: const EdgeInsets.only(left: 31.11),
          child: GestureDetector(
            onTap: () =>
                Navigator.pushReplacementNamed(context, DashBoard.routeName),
            child: SvgPicture.asset(
              kBackButtonIcon,
              width: 31.68,
              height: 31.7,
            ),
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 16),
          child: Text(
            'Profile',
            style: GoogleFonts.manrope(
                fontWeight: FontWeight.w500, fontSize: 13.33),
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Center(
              child: CircleAvatar(
                backgroundImage: AssetImage(kProfileImage),
                radius: 62,
              ),
            ),
          ),
          Text(
            'Bobby Brown',
            softWrap: true,
            style: GoogleFonts.manrope(
                fontWeight: FontWeight.w700, fontSize: 13.33),
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 25.11),
            child: Text(
              'Student',
              softWrap: true,
              style: GoogleFonts.manrope(
                  fontWeight: FontWeight.w500, fontSize: 11.11),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22.78),
            child: Container(
              width: 314.44,
              height: 220.22,
              decoration: const BoxDecoration(
                color: color3,
                borderRadius: BorderRadius.all(
                  Radius.circular(4.44),
                ),
              ),
              padding: const EdgeInsets.symmetric(
                  horizontal: 16.67, vertical: 11.11),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Info',
                      style: GoogleFonts.manrope(
                          fontSize: 13.33, fontWeight: FontWeight.w700),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Faculty:',
                          style: GoogleFonts.manrope(
                            fontWeight: FontWeight.w500,
                            fontSize: 11.11,
                            color: textColor3,
                          ),
                        ),
                        Text(
                          'faculty of computing and\ninformation systems'
                              .toUpperCase(),
                          style: GoogleFonts.manrope(
                            fontWeight: FontWeight.w500,
                            fontSize: 11.11,
                            color: textColor4,
                          ),
                          softWrap: true,
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Department:',
                        style: GoogleFonts.manrope(
                          fontWeight: FontWeight.w500,
                          fontSize: 11.11,
                          color: textColor3,
                        ),
                      ),
                      Text(
                        'information technology'.toUpperCase(),
                        style: GoogleFonts.manrope(
                          fontWeight: FontWeight.w500,
                          fontSize: 11.11,
                          color: textColor4,
                        ),
                        softWrap: true,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Text(
                      'Contact',
                      style: GoogleFonts.manrope(
                        fontWeight: FontWeight.w700,
                        fontSize: 13.33,
                        color: textColor1,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Email:',
                        style: GoogleFonts.manrope(
                            fontWeight: FontWeight.w500,
                            fontSize: 11.11,
                            color: textColor3),
                      ),
                      Text(
                        'bbrown@gmail.com',
                        style: GoogleFonts.manrope(
                            fontSize: 11.11,
                            fontWeight: FontWeight.w500,
                            color: textColor4),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'City/Town:',
                          style: GoogleFonts.manrope(
                              fontWeight: FontWeight.w500,
                              fontSize: 11.11,
                              color: textColor3),
                        ),
                        Text(
                          'Accra',
                          style: GoogleFonts.manrope(
                              fontSize: 11.11,
                              fontWeight: FontWeight.w500,
                              color: textColor4),
                        )
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Nationality:',
                        style: GoogleFonts.manrope(
                            fontWeight: FontWeight.w500,
                            fontSize: 11.11,
                            color: textColor3),
                      ),
                      Text(
                        'Ghanaian',
                        style: GoogleFonts.manrope(
                            fontSize: 11.11,
                            fontWeight: FontWeight.w500,
                            color: textColor4),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 11, horizontal: 25.5),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Interests',
                style: GoogleFonts.manrope(
                    fontWeight: FontWeight.w700,
                    fontSize: 13.33,
                    color: textColor1),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24, right: 20, bottom: 11.11),
            child: Wrap(
                runSpacing: 5,
                spacing: 7.78,
                direction: Axis.horizontal,
                children: [
                  Container(
                    width: 124.56,
                    height: 26.89,
                    decoration: BoxDecoration(
                      color: color6,
                      borderRadius: BorderRadius.circular(4.44),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 7.78, vertical: 4.44),
                    child: Text(
                      'Artificial Intelligence',
                      style: GoogleFonts.manrope(
                          fontSize: 11.11,
                          fontWeight: FontWeight.w500,
                          color: textColor4),
                    ),
                  ),
                  Container(
                    width: 178.56,
                    height: 26.89,
                    decoration: BoxDecoration(
                      color: color6,
                      borderRadius: BorderRadius.circular(4.44),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 7.78, vertical: 4.44),
                    child: Text(
                      'Database Management System',
                      style: GoogleFonts.manrope(
                          fontSize: 11.11,
                          fontWeight: FontWeight.w500,
                          color: textColor4),
                    ),
                  ),
                  Container(
                    width: 116.56,
                    height: 26.89,
                    decoration: BoxDecoration(
                      color: color6,
                      borderRadius: BorderRadius.circular(4.44),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 7.78, vertical: 4.44),
                    child: Text(
                      'Operating Systems',
                      style: GoogleFonts.manrope(
                          fontWeight: FontWeight.w500,
                          fontSize: 11.11,
                          color: textColor4),
                    ),
                  ),
                  Container(
                    width: 189.56,
                    height: 26.89,
                    decoration: BoxDecoration(
                      color: color6,
                      borderRadius: BorderRadius.circular(4.44),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 7.78, vertical: 4.44),
                    child: Text(
                      'Web development & Architecture',
                      style: GoogleFonts.manrope(
                          fontSize: 11.11,
                          fontWeight: FontWeight.w500,
                          color: textColor4),
                    ),
                  ),
                  Container(
                    width: 151.11,
                    height: 26.89,
                    decoration: BoxDecoration(
                      color: color6,
                      borderRadius: BorderRadius.circular(4.44),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 7.78, vertical: 4.44),
                    child: Text(
                      'Visual Basic development',
                      style: GoogleFonts.manrope(
                          fontWeight: FontWeight.w500,
                          fontSize: 11.11,
                          color: textColor4),
                    ),
                  ),
                  Container(
                    width: 151.11,
                    height: 26.89,
                    decoration: BoxDecoration(
                      color: color6,
                      borderRadius: BorderRadius.circular(4.44),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 7.78, vertical: 4.44),
                    child: Text(
                      'Visual C# Development',
                      style: GoogleFonts.manrope(
                          fontWeight: FontWeight.w500,
                          fontSize: 11.11,
                          color: textColor4),
                    ),
                  ),
                ]),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 22.78, vertical: 11.11),
            child: Container(
              width: 314.44,
              height: 97.78,
              decoration: BoxDecoration(
                color: color3,
                borderRadius: BorderRadius.circular(4.44),
              ),
              padding: const EdgeInsets.symmetric(
                  horizontal: 16.67, vertical: 11.11),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Description',
                      style: GoogleFonts.manrope(
                          fontSize: 13.33,
                          fontWeight: FontWeight.w700,
                          color: textColor1),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'A self-motivated, free-spirited goal achiever',
                        softWrap: true,
                        style: GoogleFonts.manrope(
                            fontSize: 11.11,
                            fontWeight: FontWeight.w500,
                            color: textColor3),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: GestureDetector(
                      onTap: () {},
                      child: SvgPicture.asset(
                        kEditIcon,
                        width: 18,
                        height: 18,
                        theme: const SvgTheme(currentColor: buttonColor),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
