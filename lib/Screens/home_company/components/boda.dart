import 'package:econtribution/Screens/details/components/bodo.dart';
import 'package:econtribution/Screens/details_company/components/bodi.dart';
import 'package:econtribution/Screens/details_company/details-screen.dart';
import 'package:econtribution/Screens/home/components/discount_card_second.dart';
import 'package:econtribution/Screens/home/components/item_image.dart';
import 'package:econtribution/Screens/home_company/components/discount_card.dart';
import 'package:econtribution/Screens/home_company/components/discount_card_second.dart';
import 'package:econtribution/Screens/home_company/components/item_image.dart';
import 'package:econtribution/Screens/home_company/components/item_list.dart';
import 'package:flutter/material.dart';
import 'package:econtribution/components/search_box.dart';
import 'package:econtribution/screens/home/components/category_list.dart';
import 'package:econtribution/screens/home/components/discount_card.dart';
import 'package:econtribution/screens/home/components/item_list.dart';
import 'package:econtribution/constants.dart';
import 'package:econtribution/screens/details/details-screen.dart';

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
          //Image.asset(
            //  "assets/images/bar1.png"
         // ),
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
                  Bodi.a="six_dogs.jpg";
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
                  Bodi.a="zara.jpg";
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
