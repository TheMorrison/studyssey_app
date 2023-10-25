// ignore: file_names
import 'package:flutter/material.dart';


class LabelSection extends StatelessWidget {
  final String text;
  final TextStyle style;

  final String text1;
  final TextStyle style1;

  const LabelSection({
    required this.text,
    required this.style,
    required this.text1,
    required this.style1,
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text, style: style),
        Text(text1, style: style1),

      ],
    );
  }
}
