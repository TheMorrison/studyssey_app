import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:studyssey_app/utils/styles.dart';

import '../../components/Eventscalendar.dart';
import 'NewsGCTU.dart';


class EventsCallAll extends StatelessWidget {
  const EventsCallAll ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top:20, right: medium, left: medium),
            child: Column(
              children: <Widget>[
                  Row(
                  children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const NewsGCTU()),
                          );
                        },
                        child:
                        SvgPicture.asset('assets/svg/back.svg',
                          width: 15,
                          height: 10,
                            ),

                    ),

                      const SizedBox(width: 84),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Events Calendar', style: heading400reg),
                      ],),
                        ],
                    ),
                Expanded(

                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        SizedBox(height: medium),
                        const ECalist(),
                        const SizedBox( height: 15,),
                      ],
                    ),
                  ),
                ),

              ],
            ),
          )
      ),
    );
  }
}
