import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:studyssey_app/Pages/PayFees/Payfeesdashb.dart';
import 'package:studyssey_app/utils/styles.dart';





class HomeCardsI extends StatelessWidget {
  const HomeCardsI ({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PayFees()),
              );
            },
            child: Container(
              width: 172,
              height: 153.33,
              decoration: ShapeDecoration(
                color: background,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Pay Fees',
                    style: heading400reg),
                  const SizedBox(height: 9),
                  SizedBox(
                    width: 102.69,
                    height: 93.66,
                    child: SvgPicture.asset('assets/svg/undraw_credit_card_re_blml 1.svg',
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: small),
          Container(
            width: 112,
            height: 153.33,
            padding: const EdgeInsets.only(top: 10, left: 15, right: 5),
            decoration: ShapeDecoration(
              color: accentlight,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Get \nAssistance', style: heading400reg.copyWith(color: Colors.white),),
                const SizedBox(height: 1),
                SizedBox(
                    width: 82.67,
                    height: 98.8,


                    child: Align (
                      alignment: Alignment.bottomCenter,
                      child:SvgPicture.asset('assets/svg/Assistance.svg'
                      ),
                    )

                ),
              ],
            ),
          ),
        ]

    );
  }
}