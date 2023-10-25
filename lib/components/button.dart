import 'package:flutter/material.dart';
import 'package:studyssey_app/utils/styles.dart';


class buttoncomp extends StatelessWidget {
  final label;

  const buttoncomp ({
    required this.label,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 332,
      //height: 44.44,
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 11),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 0.80),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
              label,
              style: btn
          ),
        ],
      ),
    )
      ;
  }
}