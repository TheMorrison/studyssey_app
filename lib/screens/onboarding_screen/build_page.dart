import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constant.dart';

class BuildPage extends StatelessWidget {
  const BuildPage({
    super.key,
    required this.title,
    required this.imagePath,
  });

  final String title, imagePath;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25.39, top: 76.17),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Welcome to Studyssey',
                style: GoogleFonts.manrope(
                    fontSize: 13.33,
                    fontWeight: FontWeight.w500,
                    color: textColor1),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.56, top: 12.22),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                title,
                style: GoogleFonts.manrope(
                    fontSize: 24.44,
                    fontWeight: FontWeight.w700,
                    color: textColor1),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 44.45, bottom: 44.45),
            child: SvgPicture.asset(
              imagePath,
              width: 360,
              height: 394.44,
            ),
          ),
        ],
      ),
    );
  }
}
