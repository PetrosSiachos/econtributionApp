import 'package:econtribution/Screens/details/components/bodo.dart';
import 'package:econtribution/Screens/home/components/item_image.dart';
import 'package:flutter/material.dart';
import 'package:econtribution/screens/details/details-screen.dart';

class Dis extends StatelessWidget {
  const Dis({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(

      child:
      Row(
        children: <Widget>[
          ItemCards(
            svgSrc: "assets/images/bear.png",
            title: "Molly",
            press: () {
              Bodo.a="bear.png";
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
            svgSrc: "assets/images/brown.png",
            title: "Peter",
            press: () {
              Bodo.a="brown.png";
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