import 'package:econtribution/components/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:econtribution/Newsappi/screens/product/components/body.dart';

class ProductsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("econtribution Νέα"),
      ),
      bottomNavigationBar: BottomNavBar(),
      backgroundColor: Colors.white,
      body: Body(),
    );
  }
}


