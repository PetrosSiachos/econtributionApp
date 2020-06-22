import 'package:econtribution/Screens/details_company/components/bodi.dart';
import 'package:flutter/material.dart';
import 'package:econtribution/constants.dart';
import 'package:econtribution/screens/details/components/app_bar.dart';

class DetailsScreenB extends StatelessWidget {
  static String okfirst;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: detailsAppBar(),
      body: Bodi(),
    );
  }
}
