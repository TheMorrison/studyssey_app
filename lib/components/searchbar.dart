import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:studyssey_app/utils/styles.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children:  [
        Expanded(
          child:
          TextField(
              cursorColor: button,
              style: heading400reg,
              autocorrect: false,
              enableSuggestions: false,
              decoration: InputDecoration(
                isDense: true,
                  prefixIcon: Icon(Icons.search, size: 22, color: iconinact),
                contentPadding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                hintText: 'Search Here',
                  hintStyle: heading400reg,
                fillColor: background,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide.none,
                )
              ),
            ),
        ),
        SizedBox(width: small),
        GestureDetector(
          child: Container(
            decoration: BoxDecoration(
              color: button,
              borderRadius: BorderRadius.circular(5),
            ),
            height: 47,
            width: 47,
            child:
              SizedBox(
                  width: 28,
                  height: 28,

                child: SvgPicture.asset('assets/svg/Filter.svg',
                  color: Colors.white,
                  fit: BoxFit.scaleDown,
                ),
              ),
          ),
        )
      ],
    );
  }
}

