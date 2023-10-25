import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:studyssey_app/Pages/sip_screen/text_field.dart';

import '../../utils/styles.dart';


class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xffffffff),
        leading: BackButton(
          onPressed: () {},
          color: const Color(0xff000000),
        ),
        title: const Text('Profile'),
        titleTextStyle: GoogleFonts.manrope(
            fontSize: 13.33,
            color: const Color(0xff000000),
            fontWeight: FontWeight.w500),
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView(children: [
          Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 23.78),
                  child: Container(
                    alignment: Alignment.center,
                    child: const CircleAvatar(
                      backgroundImage: AssetImage('images/userImage.png'),
                      radius: 40,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.22, left: 37),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Account Details',
                      style: heading400),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 10, left: 20.6, right: 20.6),
                  child: Container(
                    width: 318.8,
                    height: 1094.86,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color(0xfff2f3f5),
                    ),
                    padding:
                        const EdgeInsets.only(left: 20, right: 20,bottom: 13),
                    child: const SingleChildScrollView(
                      child: Column(children: [
                        InputField(
                          label: 'First Name',
                          text: 'Emmanuel Baffoe',
                        ),
                        InputField(
                          label: 'Last Name',
                          text: 'Appiah-Ofori',
                        ),
                        InputField(
                          label: 'Nationality',
                          text: 'Ghanaian',
                        ),
                        InputField(
                          label: 'Student Email',
                          text: '040919887@live.gtuc.edu.gh',
                        ),
                        InputField(
                          label: 'Personal Email',
                          text: 'test@example.com',
                        ),
                        InputField(
                          label: 'SSNIT Number',
                          text: '',
                        ),
                        InputField(
                          label: 'Date of Birth',
                          text: '1999-01-01',
                        ),
                        InputField(
                          label: 'Phone Number',
                          text: '0240000000',
                        ),
                        InputField(
                          label: 'Gender',
                          text: 'Male',
                        ),
                        InputField(
                          label: 'Entry Level',
                          text: '100',
                        ),
                        InputField(
                          label: 'Hall',
                          text: '',
                        ),
                        InputField(
                          label: 'Session',
                          text: 'Morning',
                        ),
                        InputField(
                          label: 'Programme',
                          text: 'BSc. Information Technology',
                        ),
                        InputField(
                          label: 'Current Level',
                          text: '400',
                        ),
                        InputField(
                          label: 'Major',
                          text: '',
                        ),
                        InputField(
                          label: 'Date of Admission',
                          text: '2019-09',
                        ),
                        InputField(
                          label: 'Date of Completion',
                          text: '2023-07',
                        )
                      ]),
                    ),
                  ),
                ),
                Container(
                  width: 360,
                  height: 38,
                  padding: const EdgeInsets.only(top: 10.22, left: 37),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Emergence Contact',
                      style: heading400),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.5,right: 20.5,bottom: 20.5),
                  child: Container(
                    width: 318.8,
                    height: 274.85,
                    padding:
                        const EdgeInsets.only(left: 20, right: 20,bottom: 13),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color(0xfff2f3f5),
                    ),
                    child: const SingleChildScrollView(
                      child: Column(
                        children: [
                          InputField(
                            label: 'Name',
                            text: 'Esther Adofo',
                          ),
                          InputField(
                            label: 'Contact',
                            text: '0200000000',
                          ),
                          InputField(
                            label: 'Contact email',
                            text: '',
                          ),
                          InputField(
                            label: 'Personal email',
                            text: 'test2@example.com',
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ]),
        ]),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xff6610f2),
        items: [
          BottomNavigationBarItem(
            icon: ColorFiltered(
              colorFilter: ColorFilter.mode(
                _currentIndex == 0
                    ? const Color(0xff6610f2)
                    : const Color(0xff9f9f9f),
                // Change colors based on the current index
                BlendMode.srcIn,
              ),
              child: SvgPicture.asset(
                'icons/Dashboard.svg',
                height: 24,
                width: 24,
              ),
            ),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: ColorFiltered(
              colorFilter: ColorFilter.mode(
                _currentIndex == 1
                    ? const Color(0xff6610f2)
                    : const Color(0xff9f9f9f),
                // Change colors based on the current index
                BlendMode.srcIn,
              ),
              child: SvgPicture.asset(
                'icons/Registration.svg',
                height: 26.67,
                width: 26.67,
              ),
            ),
            label: 'Registration',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'icons/Home.svg',
              height: 23.05,
              width: 23.05,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ColorFiltered(
              colorFilter: ColorFilter.mode(
                _currentIndex == 3
                    ? const Color(0xff6610f2)
                    : const Color(0xff9f9f9f),
                // Change colors based on the current index
                BlendMode.srcIn,
              ),
              child: SvgPicture.asset(
                'icons/Results.svg',
                height: 26.67,
                width: 26.67,
              ),
            ),
            label: 'Results',
          ),
          BottomNavigationBarItem(
            icon: ColorFiltered(
              colorFilter: ColorFilter.mode(
                _currentIndex == 4
                    ? const Color(0xff6610f2)
                    : const Color(0xff9f9f9f),
                // Change colors based on the current index
                BlendMode.srcIn,
              ),
              child: SvgPicture.asset(
                'icons/Profile.svg',
                height: 23.05,
                width: 23.05,
              ),
            ),
            label: 'Profile',
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
