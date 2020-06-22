import 'package:econtribution/Screens/details/components/bodo.dart';
import 'package:econtribution/Screens/home/components/discount_card_second.dart';
import 'package:econtribution/Screens/home/components/item_image.dart';
import 'package:flutter/material.dart';
import 'package:econtribution/screens/home/components/discount_card.dart';
import 'package:econtribution/screens/home/components/item_list.dart';
import 'package:econtribution/constants.dart';
import 'package:econtribution/screens/details/details-screen.dart';

class Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          //Image.asset(),
          Text("     ΒΟΗΘΗΣΕ ΤΩΡΑ", style: TextStyle(fontWeight: FontWeight.bold, color: kTextColor), ),
          ItemList(),
          Text(
            "     ΠΕΡΙΣΣΟΤΕΡΕΣ ΔΡΑΣΕΙΣ",
            style: TextStyle(fontWeight: FontWeight.bold, color: kTextColor),
          ),
          DiscountCard(),
          Row(
            children: <Widget>[
              ItemCards(
                svgSrc: "assets/images/plastics.png",
                title: "Molly",
                press: () {
                  Bodo.a="plastics.png";
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return DetailsScreen(
                        );
                      },
                    ),
                  );
                },
              ),
              ItemCards(
                svgSrc: "assets/images/trash.png",
                title: "Peter",
                press: () {
                  Bodo.a="trash.png";
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
          Dis(),
        ],
      ),
    );
  }
}