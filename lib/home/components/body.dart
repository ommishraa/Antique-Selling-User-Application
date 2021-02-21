import 'package:flutter/material.dart';
import 'package:someshapp/home/components/antiques_card.dart';
import 'package:someshapp/home/components/categories.dart';
import 'package:someshapp/home/components/offer_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          SpecialOfferCard(),
          AntiquesCard(),
          Categories(),
        ],
      ),
    ));
  }
}
