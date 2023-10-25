import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../utils/styles.dart';
import 'package:url_launcher/url_launcher.dart';

class Download extends StatelessWidget {
  final String title;
  final String url; // New variable for the URL

  const Download({
    required this.title,
    required this.url, // Updated constructor to accept URL
    Key? key,
  }) : super(key: key);

  Future<void> _launchUrl(String url) async {
    if (!await launch(url)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 292,
          height: 41,
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
          decoration: BoxDecoration(color: background),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 222,
                height: 31,
                child: Text(
                  title,
                  style: heading300,
                ),
              ),
              const SizedBox(width: 40),
              SizedBox(
                width: 14,
                height: 19,
                child: GestureDetector(
                  onTap: () {
                    _launchUrl(url);
                  },
                  child: SvgPicture.asset('assets/svg/download.svg'),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
