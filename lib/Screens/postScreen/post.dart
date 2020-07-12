import 'package:econtribution/components/app_bar.dart';
import 'package:econtribution/Screens/postScreen/button.dart';
import 'package:econtribution/components/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  static String first;
  static String second;
  String path = "assets/InstaStory/" + first + second + ".png";

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: homeAppBar(context),
      body: new Column(
        children: <Widget>[
          Image.asset(
            "assets/images/bar3.png",
            width:500,
            height: 150,
          ),
          Image.asset(
              path,
            width: 400,
            height: 310,
          ),

         Button(),

        ],
      ),
    );
  }
}
