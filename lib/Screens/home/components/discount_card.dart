import 'package:econtribution/Screens/details/components/bodo.dart';
import 'package:econtribution/Screens/home/components/item_image.dart';
import 'package:flutter/material.dart';
import 'package:econtribution/screens/details/details-screen.dart';

class DiscountCard extends StatelessWidget {
  const DiscountCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(

      child:
      Row(
        children: <Widget>[
          ItemCards(
            svgSrc: "assets/images/tree.png",
            title: "Molly",
            press: () {
              Bodo.a="tree";
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return DetailsScreen();
                  },
                ),
              );
            },
          ),
          ItemCards(
            svgSrc: "assets/images/close.jpg",
            title: "Peter",
            press: () {
              Bodo.a="close";
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return DetailsScreen();
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