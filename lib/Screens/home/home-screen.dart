import 'package:flutter/material.dart';
import 'package:econtribution/components/bottom_nav_bar.dart';
import 'package:econtribution/components/app_bar.dart';
import 'package:econtribution/screens/home/components/body.dart';

import '../../Newsappi/main.dart';
import '../../components/Community.dart';
import '../../components/userProfile.dart';
import '../../constants.dart';


class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  MyStatefulWidgetState createState() => MyStatefulWidgetState();
}

class MyStatefulWidgetState extends State<HomeScreen> {
  int _selectedIndex = 0;
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
      print(_selectedIndex);
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
      appBar: homeAppBar(context),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
            backgroundColor: lightgrey350,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            title: Text('Community'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            title: Text('News'),
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
      body: Body(),
    );
  }
}

