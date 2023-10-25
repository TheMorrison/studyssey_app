import 'package:flutter/material.dart';
import '../utils/styles.dart';

class CardRecEvents extends StatelessWidget {
  final String image;
  final gctuEventsWidget;


  const CardRecEvents({
    required this.image,
    required this.gctuEventsWidget,

    super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => gctuEventsWidget),
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
          width: 260,
          height: 140,
          margin: EdgeInsets.only(right: small),),
    );

  }
}
