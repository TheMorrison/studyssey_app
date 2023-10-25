import 'package:flutter/material.dart';
import 'package:studyssey_app/utils/styles.dart';


class TransactionRec extends StatelessWidget {
  final String datentime, amount, sem, title;



  const TransactionRec ({
    required this.datentime,
    required this.amount,
    required this.title,
    required this.sem,

    super.key});


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 360,
          //height: 58.56,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 13),
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 0.96, color: Color(0xFF9F9F9F)),
              borderRadius: BorderRadius.circular(4.44),
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 160,
                    height: 16.34,
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: title,
                            style: heading400reg
                          ),
                          TextSpan(
                            text: sem,
                            style: heading400reg.copyWith(color: Colors.grey,),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  SizedBox(
                    width: 100,
                    height: 13,
                    child: Text(
                      datentime,
                      style: body
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 10,),
              Text(
                amount,
                style: heading400reg
              ),

            ],
          ),
        ),
        SizedBox(height: xsmall,),
      ],
    );
  }
}