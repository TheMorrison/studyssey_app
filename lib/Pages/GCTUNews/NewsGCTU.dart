import 'package:flutter/material.dart';
import 'package:studyssey_app/Pages/GCTUNews/EventsCalendarall.dart';
import 'package:studyssey_app/components/Announcements.dart';
import 'package:studyssey_app/components/Eventscalendar.dart';
import 'package:studyssey_app/components/LabelSectionEventsCal.dart';
import 'package:studyssey_app/components/Newsflash.dart';
import 'package:studyssey_app/components/RecentEvents.dart';
import 'package:studyssey_app/components/download.dart';
import 'package:studyssey_app/components/headingall.dart';

import 'package:studyssey_app/utils/styles.dart';



class NewsGCTU extends StatefulWidget {
  const NewsGCTU ({super.key});

  @override
  State<NewsGCTU> createState() => _NewsGCTUState();
}

class _NewsGCTUState extends State<NewsGCTU> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {

    TabController _tabController =
    TabController(length: 4, vsync: this);


    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top:20, right: medium, left: medium),
            child: Column(
              children: <Widget>[
                const HeadingallSection(text: 'GCTUNews', PicturePath: 'assets/svg/save.svg'),

                    SizedBox(height: small),
                    Expanded(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          children: [
                            const RecEvents(),

                            SizedBox(height: small),

                            Align(
                              alignment: Alignment.centerLeft,
                              child: TabBar(

                                  onTap: (selectedTabIndex) {},
                                  isScrollable: true,
                                  labelPadding: const EdgeInsets.only(left: 20, right: 10
                                  ),
                                  labelStyle: heading400,
                                  labelColor: button,
                                  unselectedLabelColor: iconinact,
                                  unselectedLabelStyle: heading300,
                                  dividerColor: Colors.transparent,



                                  controller: _tabController,

                                  tabs: const [
                                    Tab(text: ("Newsflash")),
                                    Tab(text: ("Announcements")),
                                    Tab(text: ("Downloads")),
                                    Tab(text: ("GCTUActs")),

                                  ]
                              ),
                            ),
                            SizedBox(
                              width: double.maxFinite,
                              height: 250,
                              child: TabBarView(
                                  controller: _tabController,
                                  children: [
                                    const Newsflash(),
                                    const Announcements(),
                                    const Downlist(),
                                    Text('N/A', style: heading300),

                                  ]),
                            ),

                            SizedBox(height: medium),
                            const LabelSectionECal(gctuLabPage: EventsCallAll(), title: 'Events Calendar',),

                            SizedBox(height: medium),
                            const ECalist(),
                            const SizedBox( height: 15,),
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
            ),
          ),
      );
  }
}