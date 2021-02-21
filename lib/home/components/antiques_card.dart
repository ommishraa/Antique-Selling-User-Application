import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:someshapp/constants.dart';
import 'package:someshapp/storeList/storeList.dart';

class AntiquesCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        height: 25,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Text(
              "Antiques",
              style: GoogleFonts.josefinSans(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => StoreList()),
              );
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Text(
                "View More",
                style: GoogleFonts.josefinSans(
                  fontSize: 19,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          // SizedBox(
          //   width: 10,
          // ),
        ],
      ),
      SizedBox(
        height: 10,
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            AntiquesCardMaker(
              image: "assets/images/cup.png",
              tite: "Cup",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StoreList()),
                );
              },
            ),
            AntiquesCardMaker(
              image: "assets/images/watch.png",
              tite: "Watch",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StoreList()),
                );
              },
            ),
            AntiquesCardMaker(
              image: "assets/images/necklace.png",
              tite: "Necklace",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StoreList()),
                );
              },
            ),
            AntiquesCardMaker(
              image: "assets/images/sittingman.png",
              tite: "Sitting Statue",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StoreList()),
                );
              },
            ),
            AntiquesCardMaker(
              image: "assets/images/vassel.png",
              tite: "Vassel",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StoreList()),
                );
              },
            ),
            SizedBox(
              width: 18,
            ),
          ],
        ),
      ),
    ]);
  }
}

class AntiquesCardMaker extends StatelessWidget {
  const AntiquesCardMaker({
    Key key,
    @required this.tite,
    @required this.image,
    @required this.press,
  }) : super(key: key);

  final String tite, image;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 18),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.35,
              // height: 350,
              child: Column(
                children: [
                  AspectRatio(
                    aspectRatio: 1.02,
                    child: Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.circular(15)),
                      child: Image.asset(
                        image,
                        // fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "$tite",
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
