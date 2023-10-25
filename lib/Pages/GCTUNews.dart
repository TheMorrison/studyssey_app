import 'package:flutter/material.dart';
import 'package:studyssey_app/components/Newsflash.dart';
import 'package:studyssey_app/components/RecentEvents.dart';
import 'package:studyssey_app/components/headingall.dart';

import 'package:studyssey_app/utils/styles.dart';

import '../components/labelSection.dart';


class GCTUNews extends StatelessWidget {
  const GCTUNews ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top:20, right: medium, left: medium),
            child: Column(
              children: [
                const HeadingallSection(text: 'GCTUNews', PicturePath: 'assets/svg/save.svg'),

                SizedBox(height: small),
                const RecEvents(),

                SizedBox(height: medium),
                LabelSection(text: 'Events Calendar', style: heading400, text1: 'See all', style1: heading400reg),

                SizedBox(height: medium),
                const Newsflash(),

                SizedBox(height: small),

              ],
            ),
          )
      ),
    );
  }
}
