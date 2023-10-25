import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../constant.dart';

class SlideShow extends StatelessWidget {
  const SlideShow({
    super.key,
    required this.imagePath,
    required this.text,
    required this.route,
  });

  final String imagePath, text;
  final Widget route;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => route));
      },
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 26),
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: borderColor),
          borderRadius: BorderRadius.circular(4.77),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(4.44),
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
                width: 294.1,
                height: 92.62,
              ),
            ),
            Container(
              height: 50.61,
              padding:
                  const EdgeInsets.symmetric(horizontal: 23.9, vertical: 9.55),
              child: Text(
                text.toUpperCase(),
                style: GoogleFonts.manrope(
                    fontSize: 12.73,
                    fontWeight: FontWeight.w500,
                    color: textColor1),
                softWrap: true,
                textAlign: TextAlign.start,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
