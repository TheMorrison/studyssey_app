import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/styles.dart';


class SipScreen extends StatefulWidget {
  const SipScreen({super.key});

  @override
  State<SipScreen> createState() => _SipScreenState();
}

class _SipScreenState extends State<SipScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 16.1),
                    child: BackButton(
                      onPressed: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 106, top: 20),
                    child: Text(
                      'SIP',
                      style: GoogleFonts.manrope(
                          fontWeight: FontWeight.w500, fontSize: 13.33),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 23, left: 31.1),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text.rich(
                    TextSpan(
                        text: 'Hello\n',
                        style: heading300,
                        children: [
                          TextSpan(
                            text: 'Emmanuel Baffoe\nAppiah-Ofori',
                            style: heading500,
                          )
                        ]),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 13.57, left: 90.33, right: 100.5),
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('images/userImage.png'),
                ),
              ),
              const SizedBox(
                height: 11.1,
              ),
              Container(
                color: const Color(0xfff2f3f5),
                height: 322.77,
                width: 314.44,
                padding:
                    const EdgeInsets.only(bottom: 11.11, left: 22.2, right: 22.2),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 11.1),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Faculty:',
                            style: GoogleFonts.manrope(
                                color: const Color(0xff9f9f9f),
                                fontSize: 11.11,
                                fontWeight: FontWeight.w500),
                            textAlign: TextAlign.start,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              'Faculty of Computing and\n Information System'
                                  .toUpperCase(),
                              style: GoogleFonts.manrope(
                                  fontSize: 11.11, fontWeight: FontWeight.w500),
                              textAlign: TextAlign.end,
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Department:',
                            style: GoogleFonts.manrope(
                                color: const Color(0xff9f9f9f),
                                fontSize: 11.11,
                                fontWeight: FontWeight.w500),
                            textAlign: TextAlign.start,
                          ),
                          Text(
                            'Information Technology'.toUpperCase(),
                            style: GoogleFonts.manrope(
                                fontWeight: FontWeight.w500, fontSize: 11.11),
                            textAlign: TextAlign.end,
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Programme:',
                            style: GoogleFonts.manrope(
                                color: const Color(0xff9f9f9f),
                                fontSize: 11.11,
                                fontWeight: FontWeight.w500),
                            textAlign: TextAlign.start,
                          ),
                          Text(
                            'Bsc. Information Technology'.toUpperCase(),
                            style: GoogleFonts.manrope(
                                fontWeight: FontWeight.w500, fontSize: 11.11),
                            textAlign: TextAlign.end,
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Level:',
                            style: GoogleFonts.manrope(
                                color: const Color(0xff9f9f9f),
                                fontSize: 11.11,
                                fontWeight: FontWeight.w500),
                            textAlign: TextAlign.start,
                          ),
                          Text(
                            '400',
                            style: GoogleFonts.manrope(
                                fontWeight: FontWeight.w500, fontSize: 11.11),
                            textAlign: TextAlign.end,
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Session:',
                            style: GoogleFonts.manrope(
                                color: const Color(0xff9f9f9f),
                                fontSize: 11.11,
                                fontWeight: FontWeight.w500),
                            textAlign: TextAlign.start,
                          ),
                          Text(
                            'Morning'.toUpperCase(),
                            style: GoogleFonts.manrope(
                                fontWeight: FontWeight.w500, fontSize: 11.11),
                            textAlign: TextAlign.end,
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Index Number:',
                            style: GoogleFonts.manrope(
                                color: const Color(0xff9f9f9f),
                                fontSize: 11.11,
                                fontWeight: FontWeight.w500),
                            textAlign: TextAlign.start,
                          ),
                          Text(
                            '040919887',
                            style: GoogleFonts.manrope(
                                fontWeight: FontWeight.w500, fontSize: 11.11),
                            textAlign: TextAlign.end,
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Campus:',
                            style: GoogleFonts.manrope(
                                color: const Color(0xff9f9f9f),
                                fontSize: 11.11,
                                fontWeight: FontWeight.w500),
                            textAlign: TextAlign.start,
                          ),
                          Text(
                            'Tesano'.toUpperCase(),
                            style: GoogleFonts.manrope(
                                fontWeight: FontWeight.w500, fontSize: 11.11),
                            textAlign: TextAlign.end,
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Mobile Number:',
                            style: GoogleFonts.manrope(
                                color: const Color(0xff9f9f9f),
                                fontSize: 11.11,
                                fontWeight: FontWeight.w500),
                            textAlign: TextAlign.start,
                          ),
                          Text(
                            '0240318640',
                            style: GoogleFonts.manrope(
                                fontWeight: FontWeight.w500, fontSize: 11.11),
                            textAlign: TextAlign.end,
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Cohort:',
                            style: GoogleFonts.manrope(
                                color: const Color(0xff9f9f9f),
                                fontSize: 11.11,
                                fontWeight: FontWeight.w500),
                            textAlign: TextAlign.start,
                          ),
                          Text(
                            '',
                            style: GoogleFonts.manrope(
                                fontWeight: FontWeight.w500, fontSize: 11.11),
                            textAlign: TextAlign.end,
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Credit Required:',
                            style: GoogleFonts.manrope(
                                color: const Color(0xff9f9f9f),
                                fontSize: 11.11,
                                fontWeight: FontWeight.w500),
                            textAlign: TextAlign.start,
                          ),
                          Text(
                            '139',
                            style: GoogleFonts.manrope(
                                fontWeight: FontWeight.w500, fontSize: 11.11),
                            textAlign: TextAlign.end,
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Credit Taken:',
                            style: GoogleFonts.manrope(
                                color: const Color(0xff9f9f9f),
                                fontSize: 11.11,
                                fontWeight: FontWeight.w500),
                            textAlign: TextAlign.start,
                          ),
                          Text(
                            '125',
                            style: GoogleFonts.manrope(
                                fontWeight: FontWeight.w500, fontSize: 11.11),
                            textAlign: TextAlign.end,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedLabelStyle: unsnavtext,
        selectedLabelStyle: navtext,
        currentIndex: _currentIndex,
        unselectedItemColor: const Color(0xff9f9f9f),
        selectedItemColor: const Color(0xff6610f2),
        type: BottomNavigationBarType.fixed,
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
