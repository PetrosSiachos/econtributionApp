import 'package:flutter/material.dart';
import 'package:econtribution/constants.dart';
import 'package:econtribution/Screens/details/components/bodo.dart';


class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(),
      body: Bodo(),
    );
  }
}
