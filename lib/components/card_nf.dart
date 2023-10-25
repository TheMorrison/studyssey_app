import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../utils/styles.dart';

class CardNewsflash extends StatelessWidget {
  final String image;
      final String title;
  final gctuNewsWidget;


   const CardNewsflash({
    required this.image,
    required this.title,
    required this.gctuNewsWidget,
    super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => gctuNewsWidget),
        );
      },

      child: Container(
          decoration: BoxDecoration(
            color: background,
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover),
          ),
          width: 249,
          height: 250,
          margin: EdgeInsets.only(right: small),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: const LinearGradient(colors: [
                  Color.fromRGBO(0, 0, 0, 0.75),
                  Colors.transparent,
                ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter)
            ),
            child: Padding(
              padding: EdgeInsets.only(left: small, bottom: medium),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                            padding: const EdgeInsets.all(13.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: background,
                                  borderRadius: BorderRadius.circular(5),
                                ), // BoxDecoration
                                width: 30,
                                height: 40,
                                child: Center(
                                    child: SvgPicture.asset('assets/svg/save.svg'
                                    ),
                                  ), // Center // Container
                          ), // Padding
                        ),
                      ]
                  ),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                              Text(title, style: heading450.copyWith(color: Colors.white,),
                              )],
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
