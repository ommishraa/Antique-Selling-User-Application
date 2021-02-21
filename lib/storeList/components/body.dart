import "package:flutter/material.dart";
import 'package:someshapp/storeList/components/stroe_card.dart';

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
          StoreCard(),
        ],
      ),
    ));
  }
}
