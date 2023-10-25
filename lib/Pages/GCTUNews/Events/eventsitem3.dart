import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:studyssey_app/components/eventsitem.dart';

import 'package:studyssey_app/utils/styles.dart';

import '../NewsGCTU.dart';

class EItem3 extends StatelessWidget {
  const EItem3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: SizedBox(
        width: 500,
        height: 61,
        child: OutlinedButton(
          style: ButtonStyle(
              elevation: const MaterialStatePropertyAll(0),
              backgroundColor: MaterialStatePropertyAll(button),
              foregroundColor: MaterialStatePropertyAll(background),
              shape: const MaterialStatePropertyAll(
                BeveledRectangleBorder(),
              )),
          onPressed: () {},
          child: const Text('I will be attending!'),
        ),
      ),

      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top: 20, right: medium, left: medium),
            child: Column(
              children: <Widget>[
                Row(
                  children: [
                    SizedBox(
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const NewsGCTU()),
                              );
                            },
                            child: SvgPicture.asset(
                              'assets/svg/back.svg',
                              width: 15,
                              height: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 115,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Event', style: heading400reg),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: small),
                Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        SizedBox(height: small),
                        Row(
                          children: [
                            Column(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Events', style: heading400reg),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(width: 220),
                            Column(
                              children: [
                                SvgPicture.asset(
                                  'assets/svg/save.svg',
                                  width: 15.44,
                                  height: 16.75,
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const eventsitemcomp(image: 'assets/images/Seminar.jpg',
                            issue: 'University Relations Directorate',
                            date: 'Thursday, 20th April 2023',
                            paragraph: '''We are pleased to inform the University Community that, under the auspices of the GCTU Business School’s Procurement, Logistics and Supply Chain Management Department, the inaugural Academia and Industry Knowledge Seminar Series will be launched.

                                  This exciting new initiative has been developed to achieve a number of objectives including:
                                  To encourage and stimulate faculty interest in research
                                  To provide a platform for academia and industry to cross fertilize ideas and share industry knowledge
                                  To provide a platform for academia to share research knowledge to industry
                                  To provide Peer-Reviewed feedback for ongoing research work
                                  To engender the interest of students towards research and to stimulate debate on research topics relating to students’ areas of interest
                                  As part of the launch event, a student debate will be held on the following topic:
                                  “Ghana Public Procurement(Amendment) Act, 2016 (ACT 914): A Blessing or a Curse”
                                  All are encouraged to attend and be a part of what promises to be an engaging and educative experience!
                                  Thank you.''',
                            title: 'Launch of Academia and Industry Knowledge Seminar Series',
                          venue: 'Florence Onny Auditorium',
                          time: '2-4 pm',
                          eventdate: 'Thursday, 20th April 2023',),
                        const SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
