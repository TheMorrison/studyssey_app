import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:studyssey_app/utils/styles.dart';


class eventsitemcomp extends StatelessWidget {
  final String image, issue, time, venue, date, eventdate, paragraph;
  final String title;

  const eventsitemcomp({
    required this.image,
    required this.issue,
    required this.date,
    required this.venue,
    required this.eventdate,
    required this.time,
    required this.paragraph,
    required this.title,

    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 285.56,
                child: Text(title, style: heading450,
                ),
              ),
            ],
          ),
          SizedBox (height: medium,),

          Container(
            width: 324.44,
            height: 182.22,
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4.44),
              ),
            ),
          ),

          Container(
            width: 360,
            //height: 46.22,
            padding: const EdgeInsets.only(
              top: 11.11,
              left: 0,
              right: 58.89,
              bottom: 11.11,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(issue, style: body),
                Text(date, style: body),
              ],
            ),
          ),

          //details

          SizedBox(
            width: 324.44,
            //height: 59.41,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 7.78, vertical: 4.44),
                      decoration: ShapeDecoration(
                        color: const Color(0xFFF2F3F5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4.44),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset('assets/svg/Date.svg',),
                          const SizedBox(width: 8.89),
                          SizedBox(
                            //width: 142.22,
                            height: 17.78,
                            child: Text(eventdate,
                              style: heading300
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 8),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 7.78, vertical: 4.44),
                      decoration: ShapeDecoration(
                        color: const Color(0xFFF2F3F5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4.44),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset('assets/svg/clock.svg',),

                          const SizedBox(width: 8.89),
                          SizedBox(
                            //width: 40,
                            height: 17.78,
                            child: Text(time,
                              style: heading300
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 7.78, vertical: 4.44),
                      decoration: ShapeDecoration(
                        color: const Color(0xFFF2F3F5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4.44),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset('assets/svg/venue.svg',),

                            const SizedBox(width: 8.89),
                          SizedBox(
                            //width: 135.56,
                            height: 17.78,
                            child: Text(venue,
                              style: heading300
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 8),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 7.78, vertical: 4.44),
                      decoration: ShapeDecoration(
                        color: const Color(0xFFF2F3F5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4.44),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Transform(
                            transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(0.79),
                            child: SizedBox(
                              //width: 13.33,
                              height: 13.33,
                              child: Stack(children: [
                                SvgPicture.asset('assets/svg/Ticket_light.svg',),

                              ]),
                            ),
                          ),
                          const SizedBox(width: 8),
                          SizedBox(
                            //width: 24.44,
                            height: 17.78,
                            child: Text(
                              'Free',
                              style: heading300
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),



          //end details
          const SizedBox(height: 20,),

          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 324.44,
                child: Text(paragraph, textAlign: TextAlign.justify,
                    style: body),
              ),
            ],
          ),
          const SizedBox(height: 40,),
        ]
    );
  }
}
