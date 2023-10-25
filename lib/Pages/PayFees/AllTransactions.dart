import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:studyssey_app/Pages/PayFees/Payfeesdashb.dart';
import 'package:studyssey_app/components/transactionscomp.dart';

import 'package:studyssey_app/utils/styles.dart';




class TransactionsAll extends StatelessWidget {
  const TransactionsAll ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top:20, right: medium, left: medium),
            child: Column(
              children: <Widget>[
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const PayFees()),
                        );
                      },
                      child:
                      SvgPicture.asset('assets/svg/back.svg',
                        width: 15,
                        height: 10,
                      ),

                    ),

                    const SizedBox(width: 84),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('All Transactions', style: heading400reg),
                      ],),
                  ],
                ),
                Expanded(

                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        SizedBox(height: medium),
                        const TransactionRec(datentime: 'Aug 21, 2022 at 4:23 PM', amount: 'GH¢  2805.00', title: 'Tuition fees', sem: ' | Semester 2'),
                        const TransactionRec(datentime: 'Aug 21, 2022 at 4:23 PM', amount: 'GH¢  285.00', title:  'Other fees  ', sem: ' | Semester 2'),
                        const TransactionRec(datentime: 'Aug 21, 2022 at 4:23 PM', amount: 'GH¢  2805.00', title: 'Tuition fees', sem: ' | Semester 1'),
                        const TransactionRec(datentime: 'Aug 21, 2022 at 4:23 PM', amount: 'GH¢  285.00', title:  'Other fees  ', sem: ' | Semester 1'),


                        const SizedBox( height: 15,),
                      ],
                    ),
                  ),
                ),

              ],
            ),
          )
      ),
    );
  }
}
