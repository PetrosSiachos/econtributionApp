import 'package:econtribution/Screens/details_company/components/bodi.dart';
import 'package:econtribution/Screens/details_company/details-screen.dart';
import 'package:econtribution/Screens/home_company/components/discount_card.dart';
import 'package:econtribution/Screens/home_company/components/discount_card_second.dart';
import 'package:econtribution/Screens/home_company/components/item_image.dart';
import 'package:econtribution/Screens/home_company/components/item_list.dart';
import 'package:flutter/material.dart';
import 'package:econtribution/constants.dart';


class Boda extends StatelessWidget {
  final String okfirst;
  const Boda({
    Key key, this.okfirst,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.asset(
            "assets/images/bar2.png",
            width:500,
            height: 150,
          ),
          Text("     ΕΠΙΛΕΞΕ ΧΟΡΗΓΟ", style: TextStyle(fontWeight: FontWeight.bold, color: kTextColor), ),
          ItemListB(
            okfirst: okfirst,
          ),
          Text(
            "     ΠΕΡΙΣΣΟΤΕΡΟΙ ΧΟΡΗΓΟΙ",
            style: TextStyle(fontWeight: FontWeight.bold, color: kTextColor),
          ),
          DiscountCardB(
            okfirst: okfirst,
          ),
          Row(
            children: <Widget>[
              ItemCardsB(
                svgSrc: "assets/images/six_dogs.jpg",
                title: "Molly",
                press: () {
                  Bodi.a="six_dogs";
                  Bodi.first = okfirst;
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return DetailsScreenB(
                        );
                      },
                    ),
                  );
                },
              ),
              ItemCardsB(
                svgSrc: "assets/images/zara.jpg",
                title: "Peter",
                press: () {
                  Bodi.a="zara";
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
          DisB(
            okfirst: okfirst,
          ),
        ],
      ),
    );
  }
}
