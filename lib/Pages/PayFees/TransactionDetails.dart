import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/styles.dart';
import 'Payfeesdashb.dart';

void main() {
  runApp(const TransactDetails());
}

class TransactDetails extends StatelessWidget {
  const TransactDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        // Set this to false to remove the debug banner
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
        ),
        home: const Scaffold(
          body: SafeArea(
                  child: StudysseyGctuPayTransactDetails(),
              ),
        ));
  }
}

class StudysseyGctuPayTransactDetails extends StatelessWidget {
  const StudysseyGctuPayTransactDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 360,
          height: 664,
          decoration: const BoxDecoration(color: Color(0xFFF2F3F5)),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 360,
                height: 54,
                padding: EdgeInsets.only(top: 20, right: medium, left: medium),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const PayFees()),
                        );
                      },
                      child: SvgPicture.asset(
                        'assets/svg/back.svg',
                        width: 15,
                        height: 10,
                      ),
                    ),
                    const SizedBox(width: 70),
                    SizedBox(
                      //width: 83.33,
                      child: Text('Transaction Details', style: heading400reg),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
                Container(
                  width: 360,
                  height: 665,
                  padding: const EdgeInsets.only(
                      top: 33.33, left: 14.44, right: 14.44),
                  decoration: const ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16.67),
                        topRight: Radius.circular(16.67),
                      ),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 360,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 50, vertical: 16.67),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 72.28,
                              height: 72.28,
                              decoration:  const BoxDecoration(
                                image:  DecorationImage(
                                  image: AssetImage('assets/images/GCTUlogo.png'),
                                  fit: BoxFit.cover
                                ),
                              ),
                                ),
                                const SizedBox(width: 18.89),
                                  SizedBox(
                                    width: 172.50,
                                    child: Text(
                                        '''GHANA COMMUNICATION TECHNOLOGY UNIVERSITY (ACCRA)
                                        \nDigital Adress: GA-167-2979
                                      \nPMB 100, Tesano, Accra - Ghana
                                          \nOff J.A Kuffour Avenue, Adjacent the Police Training School,
                                        Tesano, Accra''',
                                        style: body),
                                  ),
                          ]
                        ),
                      ),
                      const SizedBox(height: 12.0),
                      Container(
                        height: 102.22,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16.67, vertical: 11.11),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Name',
                                  style: heading300.copyWith(color: iconinact,),
                                ),
                                const SizedBox(width: 72.22),
                                SizedBox(
                                  height: 15,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment:
                                    MainAxisAlignment.end,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                          'Emmanuel Baffoe Appiah-Ofori',
                                          style: heading300
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 6.67),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Student ID',
                                  style: heading300.copyWith(color: iconinact,),
                                ),
                                const SizedBox(width: 172.22),
                                SizedBox(
                                  height: 15,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment:
                                    MainAxisAlignment.end,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                          '040919857',
                                          style: heading300
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 6.67),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Level / Semester',
                                  style: heading300.copyWith(color: iconinact,),
                                ),
                                const SizedBox(width: 165.56),
                                SizedBox(
                                  height: 15,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment:
                                    MainAxisAlignment.end,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                          '400 /2nd',
                                          style: heading300
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 6.67),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Campus',
                                  style: heading300.copyWith(color: iconinact,),
                                ),
                                const SizedBox(width: 197.78),
                                SizedBox(
                                  height: 15,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment:
                                    MainAxisAlignment.end,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                          'Tesano, Accra',
                                          style: heading300
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 12),
                      Container(
                        height: 81,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 84, vertical: 7),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment:
                              CrossAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment:
                                  MainAxisAlignment.center,
                                  crossAxisAlignment:
                                  CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Amount Paid',
                                      style: heading300.copyWith(color: iconinact,),
                                    ),
                                  ],
                                ),
                                const SizedBox(width: 5.56),
                                Container(
                                  width: 1.11,
                                  height: 12.22,
                                  decoration: const BoxDecoration(
                                      color: Color(0xFF9F9F9F)),
                                ),
                                const SizedBox(width: 5.56),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment:
                                  MainAxisAlignment.center,
                                  crossAxisAlignment:
                                  CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      ' | Tuition fees',
                                      style: heading300.copyWith(color: iconinact,),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 5.56),
                            SizedBox(
                              width: 204,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                children: [
                                  Text(
                                      'GH¢',
                                      style: heading400
                                  ),
                                  Text(
                                      ' 2805.00',
                                      style: AMOUNT
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 12),
                      Container(
                        width: 360,
                        height: 3.33,
                        decoration: const BoxDecoration(color: Color(0xFFF2F3F5)),
                      ),
                      const SizedBox(height: 12),
                      Container(
                        width: 360,
                        padding: const EdgeInsets.only(
                          top: 11.11,
                          left: 23.33,
                          right: 11.11,
                          bottom: 11.11,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Payment methods', style: heading400),
                          ],
                        ),
                      ),
                      const SizedBox(height: 12),
                      Container(
                        height: 123,
                        padding: const EdgeInsets.only(
                            left: 20, right: 20, bottom: 22),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 25,
                                  child: Text('Date', style: heading300.copyWith(color: iconinact,),
                                  ),
                                ),
                                const SizedBox(width: 172),
                                SizedBox(
                                  height: 15,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment:
                                    MainAxisAlignment.end,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Text('Aug 21, 2022 | 4:03 PM',
                                          style: heading300),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 7),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 93,
                                  child: Text('Payment Info',
                                    style: heading300.copyWith(color: iconinact,),),
                                ),
                                const SizedBox(width: 103),
                                SizedBox(
                                  height: 15,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment:
                                    MainAxisAlignment.end,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Text('Local Students - Tuition',
                                          style: heading300),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 7),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 93,
                                  child: Text('Transaction #/TT\nNumber',
                                    style: heading300.copyWith(color: iconinact,),),
                                ),
                                const SizedBox(width: 103),
                                SizedBox(
                                  width: 100,
                                  height: 30,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment:
                                    MainAxisAlignment.end,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Text('99698174/\nTT23044K50WN//1',
                                          textAlign: TextAlign.right,
                                          style: heading300),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 7),
                            Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: SizedBox(
                                    width: 111,
                                    height: 18,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.end,
                                      children: [
                                        SizedBox(
                                          width: 111.11,
                                          height: 17,
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                            MainAxisAlignment.start,
                                            crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                            children: [
                                              Container(
                                                width: 27.95,
                                                height: 17,
                                                decoration: const BoxDecoration(
                                                  image: DecorationImage(
                                                    image: AssetImage('assets/images/momo.png'),
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(width: 4.44),
                                              Text('Mobile Money',
                                                style: heading300.copyWith(color: iconinact,),),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 223.33,
                                  top: 2.22,
                                  child: SizedBox(
                                    width: 94,
                                    child: Text('*** *** 2516',
                                        textAlign: TextAlign.right,
                                        style: heading300),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 12),
                      Container(
                        width: 332,
                        height: 44,
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
                            Text('Download Receipt', style: btn),
                          ],
                        ),
                      ),
                ], ),),

          ],
              )

    )

    ]);
}
}
