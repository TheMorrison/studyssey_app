import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:studyssey_app/utils/styles.dart';


class WelcomeSection extends StatelessWidget {
  const WelcomeSection ({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(

      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text ('Welcome', style: heading400reg),
            Text('Emmanuel', style: heading500),
          ],
        ),
         const SizedBox(width: 120),

        Padding(
          padding: const EdgeInsets.only(top:20, left:0, bottom: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,

            children: [

              Stack(

                children: [


                  Container(
                  width: 60,
                  height: 60,
                   decoration: BoxDecoration(
                       color: accentalt,
                       borderRadius: BorderRadius.circular(100),
                       image: const DecorationImage(
                           image: AssetImage('assets/images/kb 1.jpg')
                       )
                   ),
                ),

                  Positioned(
                    top: -15,
                    right: -7,

                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white,
                          width: 2,
                        ),
                        color: Colors.white,
                      ),
                        child: SvgPicture.asset('assets/svg/Bell_pin_light.svg',
                          width: 30, height: 30,
                    )

                    ),
                  ),
              ]),
            ],


          ),
        )]);
  }
}