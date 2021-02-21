import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:someshapp/constants.dart';

class ProductList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: ProductDetailes(
      image1: "assets/images/cup.png",
      image2: "assets/images/cup.png",
      image3: "assets/images/cup.png",
      image4: "assets/images/cup.png",
      price: "100000 rs.",
      lineimage: "assets/images/Frame 2.png",
      desciption:
          "This is the ancent necklase, this necklase is about 200y. old and now this time it’s market value is 1500000 rs. but we selling it for 100000 rs. and its a big deal. it’s a diamond necklase and we sure that you can,t return it after purchasing because it,s beauty is like...",
      icon1: "assets/icons/Cart Icon.svg",
      icon2: "assets/icons/Shop Icon.svg",
    )
        // ],
        // ),
        );
  }
}

class ProductDetailes extends StatelessWidget {
  const ProductDetailes({
    Key key,
    @required this.image1,
    @required this.image2,
    @required this.image3,
    @required this.image4,
    @required this.price,
    @required this.desciption,
    @required this.lineimage,
    @required this.icon1,
    @required this.icon2,
    this.press,
  }) : super(key: key);

  final String image1, image2, image3, image4, lineimage;
  final String price, desciption;
  final String icon1, icon2;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.35,
          width: MediaQuery.of(context).size.width * 1,
          decoration: BoxDecoration(
            color: kPrimaryColor,
            // color: Colors.blue,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Image.asset(
              image1,
              // color: Colors.pink,
            ),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: EdgeInsets.only(right: 18, left: 18),
                height: MediaQuery.of(context).size.height * 0.15,
                width: MediaQuery.of(context).size.width * 0.3,
                decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(15)),
                child: Image.asset(
                  image2,
                  // fit: BoxFit.cover,
                ),
              ),
              Container(
                margin: EdgeInsets.all(18),
                height: MediaQuery.of(context).size.height * 0.15,
                width: MediaQuery.of(context).size.width * 0.3,
                decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(15)),
                child: Image.asset(
                  image3,
                  // fit: BoxFit.cover,
                ),
              ),
              Container(
                margin: EdgeInsets.all(18),
                height: MediaQuery.of(context).size.height * 0.15,
                width: MediaQuery.of(context).size.width * 0.3,
                decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(15)),
                child: Image.asset(
                  image4,
                  // fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
        Center(
          child: Text(
            price,
            style: GoogleFonts.josefinSans(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Center(
          child: Image.asset(
            lineimage,
            width: 600,
          ),
        ),
        Container(
          child: Text(
            "About",
            style: GoogleFonts.josefinSans(
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Center(
          child: Image.asset(
            lineimage,
            width: 600,
          ),
        ),
        Container(
          margin: EdgeInsets.all(15),
          child: Text(
            desciption,
            style: GoogleFonts.josefinSans(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 18),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset(
                icon1,
                height: 30,
                width: 30,
                color: Colors.black,
              ),
              RaisedButton(
                child: Text(
                  "Place Order",
                  style: GoogleFonts.josefinSans(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
                onPressed: () {},
                color: kPrimaryDarkColor,
                textColor: Colors.black,
                // padding: EdgeInsets.fromLTRB(9, 9, 9, 9),
                splashColor: Colors.red,
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(50.0)),
              ),
              SvgPicture.asset(
                icon2,
                height: 30,
                width: 30,
                color: Colors.black,
              ),
            ],
          ),
        ),
        // )
      ],
    );
  }
}
