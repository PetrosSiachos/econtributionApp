import 'package:flutter/material.dart';
import 'package:econtribution/components/bottom_nav_bar.dart';
import 'package:econtribution/screens/home/components/app_bar.dart';
import 'package:econtribution/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(context),
      bottomNavigationBar: BottomNavBar(),
      body: Body(),
    );
  }
}
