import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:someshapp/StoreItem/components/ProductList.dart';
import 'package:someshapp/storeList/components/stroe_card.dart';
import 'package:someshapp/storeList/storeList.dart';
import '../../constants.dart';

class StoreItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        // backgroundColor: Colors.blue,
        elevation: 0,
        // title: Text(
        //   "",
        //   style: GoogleFonts.josefinSans(
        //       fontWeight: FontWeight.w800, color: Colors.black, fontSize: 28),
        // ),
        centerTitle: true,
        leading: IconButton(
            icon: SvgPicture.asset(
              "assets/icons/Back ICon.svg",
              height: 25,
              width: 25,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => StoreList()),
              );
            }),
        actions: [
          IconButton(
              icon: SvgPicture.asset(
                "assets/icons/Heart Icon.svg",
                color: Colors.black,
                height: 25,
                width: 25,
              ),
              onPressed: () {})
        ],
      ),
      body: ProductList(),
    );
  }
}
