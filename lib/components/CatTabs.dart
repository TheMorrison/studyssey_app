import 'package:flutter/material.dart';
import 'package:studyssey_app/utils/styles.dart';

void main() => runApp(const MaterialApp(home: CatTabs()));


class CatTabs extends StatelessWidget {
  const CatTabs ({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      key: widget(
        child: DefaultTabController(
          length: 4,
          child: Column(
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
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    // Scrollable cards and lists for Tab 1
                    ListView(
                      children: const [
                        Card(
                          child: ListTile(
                            title: Text('Card 1'),
                          ),
                        ),
                        Card(
                          child: ListTile(
                            title: Text('Card 2'),
                          ),
                        ),
                        // Add more cards and lists as needed
                      ],
                    ),
                    // Scrollable cards and lists for Tab 2
                    ListView(
                      children: const [
                        Card(
                          child: ListTile(
                            title: Text('Card 3'),
                          ),
                        ),
                        Card(
                          child: ListTile(
                            title: Text('Card 4'),
                          ),
                        ),
                        // Add more cards and lists as needed
                      ],
                    ),
                    // Scrollable cards and lists for Tab 3
                    ListView(
                      children: const [
                        Card(
                          child: ListTile(
                            title: Text('Card 5'),
                          ),
                        ),
                        Card(
                          child: ListTile(
                            title: Text('Card 6'),
                          ),
                        ),
                        // Add more cards and lists as needed
                      ],
                    ),
                    // Scrollable cards and lists for Tab 4
                    ListView(
                      children: const [
                        Card(
                          child: ListTile(
                            title: Text('Card 7'),
                          ),
                        ),
                        Card(
                          child: ListTile(
                            title: Text('Card 8'),
                          ),
                        ),
                        // Add more cards and lists as needed
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  widget({required DefaultTabController child}) {}
}
