import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class HeadingSection extends StatelessWidget {
  const HeadingSection ({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            SvgPicture.asset('assets/svg/menu.svg',
              width: 31,
              height: 31,
            ),
          ],
        ),
        const SizedBox(width: 65.5),
        Column(
          children: [
              SvgPicture.asset('assets/svg/logo.svg',
                width: 113,
                height: 31,
              )],)
          ],
        );
  }
}