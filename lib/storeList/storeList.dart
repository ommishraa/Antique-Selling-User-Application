import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:someshapp/constants.dart';
import 'package:someshapp/storeList/components/body.dart';

class StoreList extends StatelessWidget {
  // static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        elevation: 0,
        title: Text(
          "Store",
          style: GoogleFonts.josefinSans(
              fontWeight: FontWeight.w800, color: Colors.black, fontSize: 28),
        ),
        centerTitle: true,
        leading: IconButton(
            icon: SvgPicture.asset("assets/icons/menu.svg"), onPressed: () {}),
        actions: [
          IconButton(
              icon: SvgPicture.asset("assets/icons/search.svg"),
              onPressed: () {})
        ],
      ),
      body: Body(),
    );
  }
}
