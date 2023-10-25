import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'chats.dart';
import 'filter_buttons.dart';


class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 11.11, bottom: 11.11, right: 31.11, left: 31.11),
              child: Row(
                children: [
                  // Menu Button
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.sort),
                  ),
                  const SizedBox(width: 104),

                  //Title
                  Padding(
                    padding: const EdgeInsets.only(top: 11.61),
                    child: Text(
                      'Chat',
                      style: GoogleFonts.manrope(
                          fontWeight: FontWeight.w500, fontSize: 13.33),
                    ),
                  )
                ],
              ),
            ),

            //Search
            Padding(
              padding:
                  const EdgeInsets.only(top: 11.1, right: 31.11, left: 31.11),
              child: SearchBar(
                leading: const Icon(
                  Icons.search,
                  size: 11.6,
                  color: Color(0xff9f9f9f),
                ),
                hintText: 'Search',
                hintStyle: MaterialStateProperty.all(
                  GoogleFonts.manrope(
                    fontSize: 13.33,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xff9f9f9f),
                  ),
                ),
                elevation: MaterialStateProperty.all(0),
                shape: MaterialStatePropertyAll(
                  BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                padding: const MaterialStatePropertyAll(
                  EdgeInsets.only(left: 28),
                ),
                backgroundColor: const MaterialStatePropertyAll(
                  Color(0x0f9f9f9f),
                ),
              ),
            ),

            //Filter Buttons
            const Padding(
              padding: EdgeInsets.only(top: 11.1, right: 31.11, left: 31.11),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Filter(
                      text: 'All', bottom: 2.22, top: -6, left: 28, right: 28),
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Filter(
                        text: 'Personal',
                        bottom: 2.22,
                        top: -6,
                        left: 14,
                        right: 14),
                  ),
                  Filter(
                      text: 'Group', bottom: 2.22, top: -6, left: 22, right: 22)
                ],
              ),
            ),

            //Chats
            Expanded(
              flex: 1,
              child: Container(
                height: 610,
                width: 360,
                padding: const EdgeInsets.only(top: 22.22, right: 1, left: 1),
                child: ListView.builder(
                    itemCount: 7,
                    itemBuilder: (context, index) {
                      return const Chats(
                          imagePath: 'images/avatar.png',
                          name: 'Morrison Boakye Boamah',
                          message: 'Have you finished the Chat page?',
                          totalMessages: '3');
                    }),
              ),
            ),
            Container(
              height: 65.45,
              width: 65.45,
              padding: const EdgeInsets.only(left: 300,bottom: 26.29),
              child: FloatingActionButton(
                onPressed: () {},
                backgroundColor: const Color(0xff6610f2),
                tooltip: 'Add New Chat',
                child: const Icon(Icons.add),
              ),
            ),
          ],
        ),

        // Bottom Navigation Bar
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          selectedItemColor: const Color(0xff6610f2),
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'icons/courses.svg',
                  height: 20.05,
                  width: 20.05,
                ),
                label: 'Courses'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'icons/chat.svg',
                  height: 20.05,
                  width: 20.05,
                ),
                label: 'Chat'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'icons/home.svg',
                  height: 20.05,
                  width: 20.05,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'icons/notification.svg',
                  height: 20.05,
                  width: 20.05,
                ),
                label: 'Notification'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'icons/profile.svg',
                  height: 20.05,
                  width: 20.05,
                ),
                label: 'Profile'),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
