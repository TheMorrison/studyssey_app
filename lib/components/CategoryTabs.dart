import 'package:flutter/material.dart';
import 'package:studyssey_app/utils/styles.dart';

class CategoryTabs extends StatelessWidget {
  const CategoryTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: ListView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          children: [
            TabBar(
              onTap: (selectedTabIndex) {},
              isScrollable: true,
                labelStyle: heading400,
                labelColor: button,
                unselectedLabelColor: iconinact,
                unselectedLabelStyle: heading300,

                tabs: const [
                Tab(child: Text("Newsflash")),
                Tab(child: Text("Announcements")),
                Tab(child: Text("Downloads")),
                Tab(child: Text("GCTUActs")),

                Expanded(
                  child: TabBarView(
                    children: [
                      Column(
                        children: [
                           Text('Content for Tab 1'),
                    ],
                  ),
                      Column(
                        children: [
                           Text('Content for Tab 2'),
                      ],
                      ),
                      Column(
                        children: [
                          Text('Content for Tab 2'),
                        ],
                      ),
                      Column(
                        children: [
                           Text('Content for Tab 3'),
                        ],
                    ),
                  ],
               ),
                ),
            ]),
          ],
        ),

    );
  }
}
