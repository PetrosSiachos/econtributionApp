import 'package:flutter/material.dart';
import 'package:econtribution/screens/home/components/category_item.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CategoryItem(
            title: "Νέα",
            isActive: true,
            press: () {},
          ),
          CategoryItem(
            title: "Αγαπημένα",
            press: () {},
          ),
          CategoryItem(
            title: "Κοινότητα",
            press: () {},
          ),
          CategoryItem(
            title: "Ημερολόγιο",
            press: () {},
          ),
        ],
      ),
    );
  }
}
