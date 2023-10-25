import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:studyssey_app/Pages/sip_screen/sip_screen.dart';
import 'package:studyssey_app/utils/styles.dart';

class HomeCardsII extends StatelessWidget {
  const HomeCardsII({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const SipScreen(),
        ),
        child: Row(children: [
          Container(
            width: 300,
            height: 124.44,
            padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 12),
            decoration: ShapeDecoration(
              color: accentalt,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'SIP',
                  style: heading400reg,
                ),
                const SizedBox(width: 5),
                SizedBox(
                  width: 221,
                  height: 100,
                  child: SvgPicture.asset(
                      'assets/svg/undraw_personal_info_re_ur1n 1.svg'),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
