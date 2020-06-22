import 'package:econtribution/Screens/details/components/bodo.dart';
import 'package:econtribution/Screens/home/components/item_card.dart';
import 'package:flutter/material.dart';
import 'package:econtribution/screens/details/details-screen.dart';



class ItemList extends StatelessWidget {
  const ItemList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child:
      Row(
        children: <Widget>[
          ItemCard(
            svgSrc: "assets/images/dog.png",
            title: "Molly",
            press: () {
              Bodo.a="dog.png";
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
          ItemCard(
            svgSrc: "assets/images/parrot.png",
            title: "Peter",
            press: () {
              Bodo.a="parrot.png";
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
          ItemCard(
            svgSrc: "assets/images/turtle.png",
            title: "Andrew",
            press: () {
              Bodo.a="turtle.png";
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
