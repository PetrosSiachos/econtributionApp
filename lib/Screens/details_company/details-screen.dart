import 'package:econtribution/Screens/details_company/components/bodi.dart';
import 'package:flutter/material.dart';
import 'package:econtribution/constants.dart';


class DetailsScreenB extends StatelessWidget {
  static String okfirst;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(),
      body: Bodi(),
    );
  }
}
