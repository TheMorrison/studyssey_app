import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:studyssey_app/Pages/PayFees/Payfeesdashb.dart';
import 'package:studyssey_app/components/button.dart';
import 'package:studyssey_app/components/lecturercomp.dart';
import 'package:studyssey_app/utils/styles.dart';


void main() {
  runApp(const lectStudyssey());
}

class lectStudyssey extends StatelessWidget {
  const lectStudyssey ({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr, // Set text directionality here
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top: 20, right: medium, left: medium),
            child: Column(
              children: <Widget>[
                Row(
                  children: [
                    SizedBox(
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const PayFees()),
                              );
                            },
                            child: SvgPicture.asset(
                              'assets/svg/back.svg',
                              width: 15,
                              height: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 70),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Samuel Osei Banning', style: heading400reg),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: small),
                const Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(

                      children: [
                        lecturercomp(name: 'Samuel Osei Banning', position: 'LECTURER', image: 'assets/images/obanning.png'),
                        buttoncomp(label: 'View Profile'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
