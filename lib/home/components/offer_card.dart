import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:someshapp/constants.dart';
import 'package:someshapp/storeList/storeList.dart';
// import 'package:someshapp/storeList/storeList.dart';

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: [
            OfferCard(
              text: "Old Gramaphone,\nancet period is\nhere",
              image: "assets/images/vassel.png",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StoreList()),
                );
              },
            ),
            OfferCard(
              text: "Old Gramaphone,\nancet period is\nhere",
              image: "assets/images/watch.png",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StoreList()),
                );
              },
            ),
            OfferCard(
              text: "Old Gramaphone,\nancet period is\nhere",
              image: "assets/images/table.png",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StoreList()),
                );
              },
            ),
            OfferCard(
              text: "Old Gramaphone,\nancet period is\nhere",
              image: "assets/images/cup.png",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StoreList()),
                );
              },
            ),
            // SizedBox(
            //   width: 18,
            // ),
          ],
          options: CarouselOptions(
            height: 150,
            autoPlay: true,
            autoPlayCurve: Curves.easeInOut,
            enlargeCenterPage: true,
          ),
          // ),
          // ],
        ),
        // ),
      ],
    );
  }
}

class OfferCard extends StatelessWidget {
  const OfferCard({
    Key key,
    @required this.text,
    this.press,
    @required this.image,
  }) : super(key: key);

  final String text, image;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                image,
                fit: BoxFit.cover,
              ),
              Text(
                text,
                style: GoogleFonts.josefinSans(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
