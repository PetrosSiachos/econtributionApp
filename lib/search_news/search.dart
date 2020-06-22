import 'package:econtribution/Screens/home/components/app_bar.dart';
import 'package:econtribution/components/bottom_nav_bar.dart';
import 'package:econtribution/search_news/newsFeed.dart';
import 'package:flutter/material.dart';
import 'package:econtribution/components/search_box.dart';
import 'package:econtribution/screens/home/components/category_list.dart';

class Search extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: homeAppBar(context),
      bottomNavigationBar: BottomNavBar(),
      body: new Column(
        children: <Widget>[
          SearchBox(
            onChanged: (value) {},
          ),
          CategoryList(),
          newsFeed(),
        ],
      ),
    );
  }
}
