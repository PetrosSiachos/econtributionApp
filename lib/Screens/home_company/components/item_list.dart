import 'package:econtribution/Screens/details_company/components/bodi.dart';
import 'package:econtribution/Screens/details_company/details-screen.dart';
import 'package:econtribution/Screens/home_company/components/item_card.dart';
import 'package:flutter/material.dart';
import 'package:econtribution/screens/home/components/item_card.dart';


class ItemListB extends StatelessWidget {
  final String okfirst;
  const ItemListB({
    Key key , this.okfirst,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child:
      Row(
        children: <Widget>[
          ItemCardB(
            svgSrc: "assets/images/Marvel.jpg",
            title: "Marvel",
            press: () {
              Bodi.a="Marvel";
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
          ItemCardB(
            svgSrc: "assets/images/starbucks.png",
            title: "Starbucks",
            press: () {
              Bodi.a="starbucks";
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
          ItemCard(
            svgSrc: "assets/images/tesla.png",
            title: "Tesla",
            press: () {
              Bodi.a="tesla";
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
