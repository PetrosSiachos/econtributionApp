import 'package:econtribution/Screens/home_company/components/boda.dart';
import 'package:flutter/material.dart';
import 'package:econtribution/components/bottom_nav_bar.dart';
import 'package:econtribution/screens/home/components/app_bar.dart';


class HomeScreenB extends StatelessWidget {
  final String ok;
  const HomeScreenB({
    Key key, this.ok,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(context),
      bottomNavigationBar: BottomNavBar(),
      body: Boda(
        okfirst: ok,
      ),
    );
  }
}
