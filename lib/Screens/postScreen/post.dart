import 'package:econtribution/Screens/home/components/app_bar.dart';
import 'package:econtribution/Screens/postScreen/button.dart';
import 'package:econtribution/components/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  final String first;
  final String second;
  const Post({
    Key key, this.first, this.second,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ///final String path = first + second + ".png";
    return new Scaffold(
      appBar: homeAppBar(context),
      bottomNavigationBar: BottomNavBar(),
      body: new Column(
        children: <Widget>[
          Image.asset(
              "assets/images/bar1.png",
           width: 1000,
            height: 10,
          ),
          Image.asset(
              "assets/images/trash.png",
            width: 400,
            height: 450,
          ),

          Button(),

        ],
      ),
    );
  }
}
