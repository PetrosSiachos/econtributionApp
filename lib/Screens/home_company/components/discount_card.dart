import 'package:econtribution/Screens/details_company/components/bodi.dart';
import 'package:econtribution/Screens/details_company/details-screen.dart';
import 'package:econtribution/Screens/home/components/item_image.dart';
import 'package:flutter/material.dart';



class DiscountCardB extends StatelessWidget {
  final String okfirst;
  const DiscountCardB({
    Key key, this.okfirst,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(

      child:
      Row(
        children: <Widget>[
          ItemCards(
            svgSrc: "assets/images/nike.jpg",
            title: "nike",
            press: () {
              Bodi.a="nike";
              Bodi.first = okfirst;
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return DetailsScreenB();
                  },
                ),
              );
            },
          ),
          ItemCards(
            svgSrc: "assets/images/toms.jpg",
            title: "Peter",
            press: () {
              Bodi.a="toms";
              Bodi.first = okfirst;
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return DetailsScreenB();
                  },
                ),
              );
            },
          ),

        ],
      ),
    );
  }
}
