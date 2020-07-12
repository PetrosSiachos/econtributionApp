import 'package:econtribution/components/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:econtribution/constants.dart';
import 'package:econtribution/Newsappi/models/product.dart';
import 'package:econtribution/Newsappi/screens/details/components/body.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(),
      body: Body(
        product: product,
      ),
    );
  }
  }

