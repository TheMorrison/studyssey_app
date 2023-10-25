import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:studyssey_app/utils/styles.dart';


class lecturercomp extends StatelessWidget {
  final String name, position, image;

  const lecturercomp ({
    required this.name,
    required this.position,
    required this.image,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      //height: 270.92,
      padding: const EdgeInsets.only(
        top: 17.78,
        left: 45,
        right: 45,
        bottom: 33.33,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(100),
                image: DecorationImage(
                    image: AssetImage(image),
                )
            ),
          ),
          const SizedBox(height: 13.33),
          Text(
            name,
            textAlign: TextAlign.center,
            style: heading500
          ),
          const SizedBox(height: 13.33),
          Text(
            position,
            textAlign: TextAlign.center,
            style: heading300
          ),
          const SizedBox(height: 13.33),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/svg/chat.svg',
                    width: 25,

                  ),
                  const SizedBox(width: 7),
                  Text(
                    'Message',
                    style: heading400
                  ),
                ],
              ),
              const SizedBox(width: 23),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 25,
                    child: Stack(children: [
                      SvgPicture.asset(
                        'assets/svg/call.svg',
                        width: 25,
                      ),
                        ]),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    'Contact',
                    style: heading400
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}