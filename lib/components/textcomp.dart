import 'package:flutter/material.dart';
import 'package:studyssey_app/utils/styles.dart';


class textcomp extends StatelessWidget {
  final String heading, text;

  const textcomp ({
    required this.text,
    required this.heading,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 360,
          //height: 104,
          //padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                heading,
                style: heading400
              ),
              const SizedBox(height: 5),
              SizedBox(
                width: 300,
                child: Text(
                  text,
                  textAlign: TextAlign.justify,
                  style: body
                ),
              ),
              const SizedBox(height: 15),

            ],
          ),
        )
      ],
    );
  }
}