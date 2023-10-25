import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:studyssey_app/screens/dashboard_screen/slide_show.dart';
import 'package:studyssey_app/screens/dashboard_screen/vertical_carousel.dart';
import '../../constant.dart';
import '../../course_page.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  static String routeName = 'DashBoard';

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  int _currentIndex = 0;

  final controller = PageController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          backgroundColor: scaffold,
          foregroundColor: textColor1,
          elevation: 0,
          leading: GestureDetector(
            onTap: null,
            child: Padding(
              padding: const EdgeInsets.only(left: 25.56),
              child: SvgPicture.asset(
                kDrawerIcon,
                height: 31.7,
                width: 31.65,
              ),
            ),
          ),
          title: Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 16),
            child: Text(
              'All Courses',
              style: GoogleFonts.manrope(
                  fontSize: 13.33,
                  fontWeight: FontWeight.w500,
                  color: textColor1),
            ),
          ),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 22, left: 25),
                    child: SizedBox(
                      width: 295,
                      height: 42,
                      child: TextField(
                        cursorHeight: 20,
                        cursorColor: const Color(0xff000000),
                        keyboardType: TextInputType.text,
                        style: GoogleFonts.manrope(
                            fontSize: 20, fontWeight: FontWeight.w500),
                        decoration: InputDecoration(
                          filled: true,
                          contentPadding: const EdgeInsets.only(
                              top: 12, bottom: 12, left: 46.6),
                          prefixIcon: const Padding(
                            padding: EdgeInsets.only(
                                left: 28, top: 15.2, bottom: 15.2),
                            child: Icon(
                              Icons.search,
                              size: 11.6,
                              color: textColor3,
                            ),
                          ),
                          fillColor: textColor5,
                          labelText: 'Search',
                          labelStyle: GoogleFonts.manrope(
                              fontSize: 13.33,
                              fontWeight: FontWeight.w500,
                              color: textColor3),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4.44),
                            borderSide: const BorderSide(
                                width: 0.87, color: Colors.transparent),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 28.24, top: 25, left: 11),
                    child: SizedBox(
                      height: 41.8,
                      width: 41.76,
                      child: OutlinedButton(
                        onPressed: () {},
                        style: const ButtonStyle(
                          shape: MaterialStatePropertyAll(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(4),
                              ),
                            ),
                          ),
                          padding: MaterialStatePropertyAll(
                            EdgeInsets.all(6.5),
                          ),
                          backgroundColor:
                              MaterialStatePropertyAll(buttonColor),
                        ),
                        child: SvgPicture.asset(
                          kFilterIcon,
                          height: 28.8,
                          width: 28.76,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 21, left: 26, bottom: 11),
                  child: Text(
                    'Recently accessed',
                    style: GoogleFonts.manrope(
                        fontWeight: FontWeight.w700,
                        fontSize: 13.33,
                        color: textColor1),
                  ),
                ),
              ),
              Container(
                height: 163,
                padding: const EdgeInsets.symmetric(horizontal: 26),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.transparent),
                ),
                child: PageView(
                  padEnds: false,
                  controller: controller,
                  children: const [
                    SlideShow(
                      imagePath: kCourseImage1,
                      text: 'cics 372 - human computer interaction',
                      route: CoursePage(),
                    ),
                    SlideShow(
                      imagePath: kCourseImage2,
                      text:
                          'ciet 362 - software reliability and quality assurance',
                      route: CoursePage(),
                    ),
                    SlideShow(
                      imagePath: kCourseImage3,
                      text: 'Advanced visual basic (dot) net programming',
                      route: CoursePage(),
                    ),
                    SlideShow(
                      imagePath: kCourseImage4,
                      text: 'open source operating systems',
                      route: CoursePage(),
                    ),
                    SlideShow(
                      imagePath: kCourseImage5,
                      text: 'tutorials for students',
                      route: CoursePage(),
                    ),
                    SlideShow(
                      imagePath: kCourseImage6,
                      text: 'advanced java technologies',
                      route: CoursePage(),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 17.67, bottom: 11.78),
                child: SmoothPageIndicator(
                  controller: controller,
                  count: 4,
                  effect: const ExpandingDotsEffect(
                    expansionFactor: 5,
                    dotColor: color3,
                    spacing: 5.56,
                    dotHeight: 5.76,
                    dotWidth: 5.76,
                    activeDotColor: smoothPageIndicator,
                    radius: 4.44,
                  ),
                  onDotClicked: (index) => controller.animateToPage(index,
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeIn),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 27, bottom: 22.22),
                    child: Text(
                      'All courses',
                      style: GoogleFonts.manrope(
                          fontWeight: FontWeight.w700,
                          fontSize: 13.33,
                          color: textColor1),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 25.56, bottom: 25.22),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'See more',
                        style: GoogleFonts.manrope(
                            fontSize: 11.11,
                            fontWeight: FontWeight.w500,
                            color: textColor3),
                      ),
                    ),
                  ),
                ],
              ),
              const Expanded(
                flex: 2,
                child: SingleChildScrollView(
                  padding:
                      EdgeInsets.only(left: 24.44, right: 25.44, bottom: 30),
                  child: Column(
                    children: [
                      VerticalCarousel(
                        imagePath: kCourseImage6,
                        text: 'advanced java technologies',
                        route: CoursePage(),
                      ),
                      VerticalCarousel(
                        imagePath: kCourseImage5,
                        text: 'tutorial for students',
                        route: CoursePage(),
                      ),
                      VerticalCarousel(
                        imagePath: kCourseImage4,
                        text: 'open source operating\nsystems',
                        route: CoursePage(),
                      ),
                      VerticalCarousel(
                        imagePath: kCourseImage3,
                        text: 'advanced visual basic\n.net programming',
                        route: CoursePage(),
                      ),
                      VerticalCarousel(
                        imagePath: kCourseImage2,
                        text: 'software reliability\nand quality assurance',
                        route: CoursePage(),
                      ),
                      VerticalCarousel(
                        imagePath: kCourseImage1,
                        text: 'human computer interaction',
                        route: CoursePage(),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            currentIndex: _currentIndex,
            type: BottomNavigationBarType.fixed,
            unselectedLabelStyle: GoogleFonts.manrope(
                fontWeight: FontWeight.w500, fontSize: 6.67),
            selectedLabelStyle: GoogleFonts.manrope(
                fontWeight: FontWeight.w500,
                fontSize: 6.67,
                color: buttonColor),
            selectedItemColor: buttonColor,
            iconSize: 31.89,
            elevation: 5,
            backgroundColor: textColor2,
            items: [
              BottomNavigationBarItem(
                icon: ColorFiltered(
                  colorFilter: ColorFilter.mode(
                      _currentIndex == 0 ? buttonColor : color5,
                      BlendMode.srcIn),
                  child: SvgPicture.asset(
                    kCourseIcon,
                    theme: SvgTheme(
                        currentColor:
                            _currentIndex == 0 ? buttonColor : color5),
                  ),
                ),
                label: 'Courses',
                activeIcon: SvgPicture.asset(kCourseAltIcon),
              ),
              BottomNavigationBarItem(
                icon: ColorFiltered(
                  colorFilter: ColorFilter.mode(
                      _currentIndex == 1 ? buttonColor : color5,
                      BlendMode.srcIn),
                  child: SvgPicture.asset(kSendIcon),
                ),
                label: 'Chat',
                activeIcon: SvgPicture.asset(kSendAltIcon),
              ),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(kHomeIcon), label: 'Home'),
              BottomNavigationBarItem(
                icon: ColorFiltered(
                  colorFilter: ColorFilter.mode(
                      _currentIndex == 3 ? buttonColor : color5,
                      BlendMode.srcIn),
                  child: SvgPicture.asset(kNotificationIcon),
                ),
                label: 'Notification',
                activeIcon: SvgPicture.asset(kNotificationAltIcon),
              ),
              BottomNavigationBarItem(
                icon: ColorFiltered(
                  colorFilter: ColorFilter.mode(
                      _currentIndex == 4 ? buttonColor : color5,
                      BlendMode.srcIn),
                  child: SvgPicture.asset(kProfileIcon),
                ),
                label: 'Profile',
                activeIcon: SvgPicture.asset(kProfileAltIcon),
              )
            ]),
      ),
    );
  }
}
