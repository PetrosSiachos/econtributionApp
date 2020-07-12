import 'package:econtribution/search_news/search.dart';
import 'package:econtribution/components/MenuList.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:econtribution/constants.dart';


AppBar homeAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    leading: IconButton(
      icon: SvgPicture.asset("assets/icons/menu.svg"),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return MenuList();
            },
          ),
        );
      },
    ),
    title: RichText(
      text: TextSpan(
        style: Theme.of(context)
            .textTheme
            .title
            .copyWith(fontWeight: FontWeight.bold),
        children: [
          TextSpan(
            text: "",
            style: TextStyle(color: ksecondaryColor),
          ),
          TextSpan(
            text: "              econtribution",
            style: TextStyle(color: kTextColor),
          ),
        ],
      ),
    ),
    actions: <Widget>[
      IconButton(
        icon: SvgPicture.asset("assets/icons/search.svg"),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return Search();
              },
            ),
          );
        },
      ),
    ],
  );
}
