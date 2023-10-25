import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:studyssey_app/course_page.dart';
import 'package:studyssey_app/utils/styles.dart';

import '../Pages/GCTUNews/NewsGCTU.dart';



class HomeCards extends StatelessWidget {
  const HomeCards ({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
                onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CoursePage()),
              );
            },

           child: Container(
            width: 131.11,
            height: 153.33,
            decoration: ShapeDecoration(
              color: accentlight,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Courses',
                  style: heading400reg.copyWith(color: Colors.white),
                ),
                 const SizedBox(height: 9),
                SizedBox(
                  width: 131,
                  height: 95,
                  child: SvgPicture.asset('assets/svg/undraw_education_f8ru 1.svg',
                  ),
                ),
              ],
            ),
          ),
        ),
          SizedBox(width: small),

        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const NewsGCTU()),
            );
          },
          child: Container(
              width: 152.11,
              height: 153.33,
                padding: const EdgeInsets.symmetric(horizontal: 24),
                decoration: ShapeDecoration(
                color: accentalt,
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                        Text('GCTU News', style: heading400reg,),
                              const SizedBox(height: 8),
                    SizedBox(
                      width: 121,
                      height: 104,


                          child: SvgPicture.asset('assets/svg/undraw_mailbox_re_dvds 1.svg'
                              ),


                    ),
                    ],
                    ),
    ),
        ),
    ]

    );
  }
}