import 'package:econtribution/Screens/details/components/bodo.dart';
import 'package:econtribution/Screens/home/components/item_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:econtribution/constants.dart';
import 'package:econtribution/screens/details/details-screen.dart';
import 'package:econtribution/screens/home/components/item_card.dart';


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
              Bodo.a="tree.png";
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
              Bodo.a="close.jpg";
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
