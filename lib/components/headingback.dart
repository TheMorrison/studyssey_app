import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:studyssey_app/utils/styles.dart';


class HeadingbackSection extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final String text;
  //PicturePath;

  const HeadingbackSection ({
    required this.text,
    // ignore: non_constant_identifier_names
    //required this.PicturePath,

    super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            SvgPicture.asset('assets/svg/back.svg',
              width: 31,
              height: 31,
            ),
          ],
        ),
        const SizedBox(width: 84),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(text, style: heading400reg),
          ],),

      ],
    );
  }
}