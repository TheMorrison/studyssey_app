import 'package:flutter/material.dart';
import 'package:studyssey_app/Pages/GCTUNews/Newsflash/newsflashitem1.dart';
import 'package:studyssey_app/Pages/GCTUNews/Newsflash/newsflashitem3.dart';
import 'package:studyssey_app/components/card_nf.dart';

import '../Pages/GCTUNews/Newsflash/newsflashitem2.dart';
import '../Pages/GCTUNews/Newsflash/newsflashitem4.dart';

class Newsflash extends StatelessWidget {

  const Newsflash ({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        children: const [

          CardNewsflash(image: 'assets/images/Rectangle 40.jpg', title: 'Interim Handing Over Of Cladded Administration Block', gctuNewsWidget: NFItem1()),
          CardNewsflash(image: 'assets/images/Rectangle 41.jpg', title: 'President Akufo-Addo pledges support to make GCTU Ghana’s...', gctuNewsWidget: NFItem2()),
          CardNewsflash(image: 'assets/images/Business-school-retirement1.jpg', title: 'GCTU Business School Empowers Students and Participants with...', gctuNewsWidget: NFItem3()),
          CardNewsflash(image: 'assets/images/Business-school1-768x387.jpg', title: 'Faculty And Students Of Business School Trained In Modern Accounting Software', gctuNewsWidget: NFItem4()),
        ],
      ),
    );
  }
}
