import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../utils/styles.dart';

class EventsCal extends StatelessWidget {
  final String title, time, month, venue;
  final String day;

  const EventsCal({
    required this.title,
    required this.time,
    required this.venue,
    required this.month,
    required this.day,

    super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width:300,
          height: 58,
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 0.50),
              borderRadius: BorderRadius.circular(4),
            ),
          ),
          child: Row(
            //mainAxisSize: MainAxisSize.min,
            //mainAxisAlignment: MainAxisAlignment.start,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 58,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: ShapeDecoration(
                  color: const Color(0xFFFACF1E),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(day, style: heading500),
                    Text(month, style: heading400reg),
                  ],
                ),
              ),
                SizedBox(width: small),

              SizedBox(
                width: 198,

                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      //width: 190,


                      child: Row(
                        children: [
                          Text(title, style: heading300),
                        ],
                      ),
                    ),

                    const SizedBox(height: 4),

                    Row(
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 11,
                              height: 9,

                              child:
                              SvgPicture.asset('assets/svg/clock.svg'),
                            ),
                            const SizedBox(width: 4),
                            Text(time, style: heading300),
                          ],
                        ),
                        const SizedBox(width: 5),
                        Row (
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                      width: 11,
                                      height: 9,

                                  child:
                                  SvgPicture.asset('assets/svg/venue.svg'),),
                                const SizedBox(width: 5),
                                SizedBox(
                                  child: Text(venue, style: heading300),
                                ),],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox (height: 15),
      ],

    );

  }
}





