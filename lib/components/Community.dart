import 'package:econtribution/components/bottom_nav_bar.dart';
import 'package:econtribution/components/category_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:econtribution/Newsappi/main.dart';
import 'package:econtribution/components/userProfile.dart';

import '../Screens/home/home-screen.dart';
import '../constants.dart';

class Community extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Community> {

  final List<String> _listItem = [
    'assets/images/two.jpg',
    'assets/images/three.png',
    'assets/images/four.jpg',
    'assets/images/five.jpg',
    'assets/images/five.jpg',
    'assets/images/two.jpg',
    'assets/images/three.png',
    'assets/images/four.jpg',
    'assets/images/five.jpg',
  ];
  int _selectedIndex = 1;
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
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            title: Text('Community'),
            backgroundColor: lightgrey350,
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
      appBar: AppBar(
        title: Text("Κοινότητα"),
        ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CategoryList(),

              SizedBox(height: 20,),
              Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    children: _listItem.map((item) => Card(
                      color: Colors.transparent,
                      elevation: 0,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage(item),
                                fit: BoxFit.cover
                            )
                        ),
                        child: Transform.translate(
                          offset: Offset(50, -50),
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 65, vertical: 63),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white
                            ),
                            child: Icon(Icons.person, size: 15,),
                          ),
                        ),
                      ),
                    )).toList(),
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}