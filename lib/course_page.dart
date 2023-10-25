import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constant.dart';

class CoursePage extends StatefulWidget {
  const CoursePage({super.key});

  @override
  State<CoursePage> createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 202.22,
              backgroundColor: scaffold,
              floating: true,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  kCourseImage6,
                  height: 162.26,
                  width: 360,
                  fit: BoxFit.cover,
                ),
                titlePadding: const EdgeInsets.symmetric(
                    horizontal: 25.56, vertical: 12.7),
                title: Text(
                  'software reliability and quality assurance'.toUpperCase(),
                  softWrap: true,
                  style: GoogleFonts.manrope(),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(4.44),
                        topRight: Radius.circular(4.44),
                      ),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Row(
                              children: [
                                const CircleAvatar(
                                  backgroundImage: AssetImage(kProfileImage1),
                                  radius: 37.46,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 12.7),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Samuel Banning Osei',
                                        style: GoogleFonts.manrope(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 13.33,
                                            color: textColor1),
                                      ),
                                      Text(
                                        'Lecture'.toUpperCase(),
                                        style: GoogleFonts.manrope(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 13.33,
                                            color: textColor1),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 53.29),
                              child: Positioned(
                                top: -0.32,
                                left: -4.48,
                                child: CircleAvatar(
                                  backgroundImage: AssetImage(kProfileImage),
                                  radius: 15,
                                ),
                              ),
                            ),
                            const Positioned(
                              top: -1.14,
                              left: -1.0,
                              child: CircleAvatar(
                                backgroundImage: AssetImage(kProfileImage2),
                                radius: 15,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              )

            )
          ],
        ),
      ),
    );
  }
}
