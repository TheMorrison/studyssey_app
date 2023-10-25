// ignore: file_names
import 'package:flutter/material.dart';
import 'package:studyssey_app/utils/styles.dart';


class LabelSectionECal extends StatelessWidget {
  final String title;
      final gctuLabPage;

  const LabelSectionECal({
    required this.gctuLabPage,
    required this.title,

    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: heading400),
        GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  gctuLabPage),
              );
            },
            child: Text('See all', style: heading400reg)),

      ],
    );
  }
}
