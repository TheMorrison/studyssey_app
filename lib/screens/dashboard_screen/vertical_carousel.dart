import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constant.dart';

class VerticalCarousel extends StatelessWidget {
  const VerticalCarousel(
      {super.key,
      required this.imagePath,
      required this.text,
      required this.route});

  final String imagePath, text;
  final Widget route;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => route));
      },
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.44),
          side: const BorderSide(color: borderColor1),
        ),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Align(
            alignment: Alignment.centerLeft,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(4.44),
              child: Image.asset(
                imagePath,
                width: 59.46,
                height: 57.64,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.22),
            child: Text(
              text.toUpperCase(),
              softWrap: true,
              style: GoogleFonts.manrope(
                  fontWeight: FontWeight.w500,
                  fontSize: 13.33,
                  color: textColor1),
            ),
          ),
          const IconButton(
            onPressed: null,
            icon: Icon(Icons.more_vert),
          ),
        ]),
      ),
    );
  }
}
