import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:someshapp/StoreItem/components/StoreItem.dart';
import 'package:someshapp/constants.dart';

class StoreCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: [
        Container(
          child: StoreListHorizontal(
              image1: "assets/images/cup.png",
              image2: "assets/images/table.png",
              image3: "assets/images/watch.png",
              title1: "Cup",
              title2: "Table",
              title3: "Watch",
              price1: "\$200",
              price2: "\$900",
              price3: "\$450",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StoreItem()),
                );
              }),
        ),
        Container(
          child: StoreListHorizontal(
            image1: "assets/images/necklace.png",
            image2: "assets/images/chess.png",
            image3: "assets/images/facestatue.png",
            title1: "Cup",
            title2: "Table",
            title3: "Watch",
            price1: "\$200",
            price2: "\$900",
            price3: "\$450",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => StoreItem(),
                ),
              );
            },
          ),
        ),
        Container(
          child: StoreListHorizontal(
            image1: "assets/images/gramaphone.png",
            image2: "assets/images/horsestatue.png",
            image3: "assets/images/vassel.png",
            title1: "Cup",
            title2: "Table",
            title3: "Watch",
            price1: "\$200",
            price2: "\$900",
            price3: "\$450",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => StoreItem(),
                ),
              );
            },
          ),
        ),
      ]),
    );
  }
}

class StoreListHorizontal extends StatelessWidget {
  const StoreListHorizontal({
    Key key,
    this.press,
    @required this.image1,
    @required this.image2,
    @required this.image3,
    @required this.title1,
    @required this.title2,
    @required this.title3,
    @required this.price1,
    @required this.price2,
    @required this.price3,
  }) : super(key: key);

  final String image1, image2, image3;
  final String title1, title2, title3;
  final String price1, price2, price3;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                // margin: EdgeInsets.only(right: 18),
                // margin: EdgeInsets.only(top: 10),
                height: MediaQuery.of(context).size.height * 0.25,
                width: MediaQuery.of(context).size.width * 0.50,
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: InkWell(
                  onTap: press,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Image.asset(
                      image1,
                      // fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Text(
                  title1,
                  style: GoogleFonts.josefinSans(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Text(
                  price1,
                  style: GoogleFonts.josefinSans(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 40),
                height: MediaQuery.of(context).size.height * 0.25,
                // height: 220,
                width: MediaQuery.of(context).size.width * 0.55,
                // width: 200,
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: InkWell(
                  onTap: press,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Image.asset(
                      image2,
                      // fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  title2,
                  style: GoogleFonts.josefinSans(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Text(
                  price2,
                  style: GoogleFonts.josefinSans(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            width: 80,
          ),
          Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                // margin: EdgeInsets.only(right: 18),
                // margin: EdgeInsets.only(top: 0),
                height: MediaQuery.of(context).size.height * 0.5,
                // height: 400,
                width: MediaQuery.of(context).size.width * 0.65,
                // width: 200,
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: InkWell(
                  onTap: press,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Image.asset(
                      image3,
                      // fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Text(
                  title3,
                  style: GoogleFonts.josefinSans(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Text(
                  price3,
                  style: GoogleFonts.josefinSans(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
