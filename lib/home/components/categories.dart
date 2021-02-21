import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:someshapp/constants.dart';
import 'package:someshapp/storeList/storeList.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 25,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Text(
                "Categories",
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
        AntiquesCategories(
          title1: "Statues",
          title2: "Ancent phones",
          image1: "assets/images/horsestatue.png",
          image2: "assets/images/gramaphone.png",
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => StoreList()),
            );
          },
        ),
        SizedBox(
          height: 20,
        ),
        AntiquesCategories(
          title1: "Lockers",
          title2: "Jwellers",
          image1: "assets/images/lock.png",
          image2: "assets/images/necklace.png",
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => StoreList()),
            );
          },
        ),
        SizedBox(
          height: 20,
        ),
        AntiquesCategories(
          title1: "Furnitures",
          title2: "Watches",
          image1: "assets/images/table.png",
          image2: "assets/images/watch.png",
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => StoreList()),
            );
          },
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}

class AntiquesCategories extends StatelessWidget {
  const AntiquesCategories({
    Key key,
    @required this.title1,
    @required this.image1,
    @required this.image2,
    @required this.title2,
    @required this.press,
  }) : super(key: key);

  final String title1, title2, image1, image2;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 18),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.43,
              child: Column(
                children: [
                  AspectRatio(
                    aspectRatio: 1.02,
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.circular(15)),
                      child: Image.asset(
                        image1,
                        // fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "$title1",
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.05,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.43,
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 1.02,
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.circular(15)),
                    child: Image.asset(
                      image2,
                      // fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "$title2",
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
