import 'package:flutter/material.dart';
import 'package:studyssey_app/Pages/GCTUNews/Events/eventsitem2.dart';
import 'package:studyssey_app/Pages/GCTUNews/Events/eventsitem3.dart';
import 'package:studyssey_app/Pages/GCTUNews/Events/eventsitem4.dart';
import 'package:studyssey_app/Pages/GCTUNews/Events/eventsitem5.dart';
import 'package:studyssey_app/components/card_re.dart';

import '../Pages/GCTUNews/Events/eventsitem1.dart';

class RecEvents extends StatelessWidget {

  const RecEvents ({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: ListView(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        children: const [
          CardRecEvents(image: 'assets/images/Dip.W.A.jpg', gctuEventsWidget: EItem1(),),
          CardRecEvents(image: 'assets/images/Cybersecurity-768x384.jpg', gctuEventsWidget: EItem2(),),
          CardRecEvents(image: 'assets/images/Seminar.jpg', gctuEventsWidget: EItem3(),),
          CardRecEvents(image: 'assets/images/Dip.computer-science.jpg', gctuEventsWidget: EItem4(),),
          CardRecEvents(image: 'assets/images/Data-analytics.jpg', gctuEventsWidget: EItem5(),),
        ],
      ),
    );
  }
}
