import 'package:flutter/material.dart';
import 'package:studyssey_app/Pages/welcome.dart';
import 'package:studyssey_app/components/heading.dart';
import 'package:studyssey_app/components/homecards.dart';
import 'package:studyssey_app/components/homecardsI.dart';
import 'package:studyssey_app/components/homecardsII.dart';
import 'package:studyssey_app/components/searchbar.dart';
import 'package:studyssey_app/utils/styles.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top:20, right: medium, left: medium),
            child: Column(
              children: [
                const HeadingSection(),
                SizedBox(height: small),
                const WelcomeSection(),

                const SearchSection(),
                SizedBox(height: small),

                const HomeCards(),
                SizedBox(height: small),
                const HomeCardsI(),
                SizedBox(height: small),
                const HomeCardsII(),
              ],
            ),
          )
      ),
    );
  }
}
