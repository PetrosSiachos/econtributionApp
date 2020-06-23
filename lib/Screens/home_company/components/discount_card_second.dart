import 'package:econtribution/Screens/details_company/components/bodi.dart';
import 'package:econtribution/Screens/details_company/details-screen.dart';
import 'package:econtribution/Screens/home_company/components/item_image.dart';
import 'package:flutter/material.dart';

class DisB extends StatelessWidget {
  final String okfirst;
  const DisB({
    Key key, this.okfirst,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(

      child:
      Row(
        children: <Widget>[
          ItemCardsB(
            svgSrc: "assets/images/ice.jpg",
            title: "Molly",
            press: () {
              Bodi.a="ice";
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
          ItemCardsB(
            svgSrc: "assets/images/city.png",
            title: "Peter",
            press: () {
              Bodi.a="city";
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
