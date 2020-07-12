import 'package:econtribution/components/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:econtribution/Newsappi/screens/product/components/body.dart';

import '../../../Screens/home/home-screen.dart';
import '../../../components/Community.dart';
import '../../../components/userProfile.dart';
import '../../../constants.dart';
import '../../main.dart';
import '../../main.dart';

class ProductsScreen extends StatefulWidget {
  @override
  MyStatefulWidgetState createState() => MyStatefulWidgetState();
}

class MyStatefulWidgetState extends State<ProductsScreen> {
  int _selectedIndex = 2;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static  List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    Community(),
    NewsApp(),
    Profile(),
  ];



  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return _widgetOptions[index];
          },
        ),
      );


    });
  }
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("econtribution Νέα"),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.group),
              title: Text('Community'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.info),
              title: Text('News'),
              backgroundColor: lightgrey350,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Profile'),
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: green600,

          onTap: _onItemTapped,

        ),
        backgroundColor: Colors.white,
        body: Body(),
      );
    }
}


