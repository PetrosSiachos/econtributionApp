import 'package:econtribution/main.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:econtribution/components/bottom_nav_bar.dart';

import '../Newsappi/main.dart';
import '../Screens/home/home-screen.dart';
import '../constants.dart';
import 'Community.dart';


class Profile extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Profile>
    with SingleTickerProviderStateMixin {
  TabController controller;

  int _selectedIndex = 3;
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


  int getColorHexFromStr(String colorStr) {
    colorStr = "FF" + colorStr;
    colorStr = colorStr.replaceAll("#", "");
    int val = 0;
    int len = colorStr.length;
    for (int i = 0; i < len; i++) {
      int hexDigit = colorStr.codeUnitAt(i);
      if (hexDigit >= 48 && hexDigit <= 57) {
        val += (hexDigit - 48) * (1 << (4 * (len - 1 - i)));
      } else if (hexDigit >= 65 && hexDigit <= 70) {
        // A..F
        val += (hexDigit - 55) * (1 << (4 * (len - 1 - i)));
      } else if (hexDigit >= 97 && hexDigit <= 102) {
        // a..f
        val += (hexDigit - 87) * (1 << (4 * (len - 1 - i)));
      } else {
        throw new FormatException("An error occurred when converting a color");
      }
    }
    return val;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = new TabController(length: 4, vsync: this);
    initUser();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }
  final FirebaseAuth _auth = FirebaseAuth.instance;
  FirebaseUser user;


  initUser() async {
    user = await _auth.currentUser();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(children: <Widget>[
        Column(children: <Widget>[
          Stack(children: <Widget>[
            Container(
              height: 250.0,
              width: double.infinity,
              color: Color(getColorHexFromStr('#FDD148')),
            ),
            Positioned(
              bottom: 250.0,
              right: 100.0,
              child: Container(
                height: 400.0,
                width: 400.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(200.0),
                    color:
                    Color(getColorHexFromStr('#FEE16D')).withOpacity(0.4)),
              ),
            ),
            Positioned(
              bottom: 300.0,
              left: 150.0,
              child: Container(
                  height: 300.0,
                  width: 300.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(150.0),
                      color: Color(getColorHexFromStr('#FEE16D'))
                          .withOpacity(0.5))),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 15.0),
                Row(
                  children: <Widget>[
                    SizedBox(width: 15.0),
                    Container(
                      alignment: Alignment.topLeft,
                      height: 75.0,
                      width: 75.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(37.5),
                          border: Border.all(
                              color: Colors.white,
                              style: BorderStyle.solid,
                              width: 3.0),
                          image: DecorationImage(
                              image: AssetImage('assets/images/person.png'))),
                    ),
                    SizedBox(width: 10.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          '    ',
                          style: TextStyle(
                              fontFamily: 'Quicksand',
                              fontSize: 60.0,
                              fontWeight: FontWeight.bold),
                        ),
                        ],
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width - 225.0),
                    Container(
                      alignment: Alignment.topRight,
                      child: IconButton(
                        icon: Icon(Icons.settings),
                        onPressed: () {},
                        color: Colors.white,
                        iconSize: 30.0,
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 15.0),
                Text(
                  '  ${user?.email}',
                    style: TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold),
                ),
               Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        cardDetails('Δράσεις που στηρίχθηκαν', 'assets/images/star.jpg', '0'),
                        cardDetails('Επίπεδο Προσφοράς', 'assets/images/trophy.jpg', '0%'),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        cardDetails('Σύνολο Πόντων', 'assets/images/reward.png', '0'),
                        //cardDetails(
                           // 'Return / Replace', 'assets/returnbox.png', '0'),
                      ],
                    ),
                    SizedBox(height: 5.0)
                  ],
                )
              ],
            )
          ]),
          SizedBox(height: 15.0),
          listItem('Εξαργύρωση Πόντων στο eshop', Colors.red, Icons.grid_on),
          listItemB('Αποσύνδεση', Color(getColorHexFromStr('#ECB800')), Icons.person)
        ])
      ]),
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
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Profile'),
            backgroundColor: lightgrey350,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: green600,

        onTap: _onItemTapped,

      ),
    );
  }

  Widget listItem(String title, Color buttonColor, iconButton) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Row(
        children: <Widget>[
          Container(
            height: 50.0,
            width: 50.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                color: buttonColor.withOpacity(0.3)
            ),
            child: Icon(
                iconButton,
                color: buttonColor,
                size: 25.0
            ),
          ),
          SizedBox(width: 25.0),
          Container(
            width: MediaQuery.of(context).size.width - 100.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(title,
                  style: TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize: 15.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.arrow_forward_ios),
                  onPressed: () {},
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget listItemB(String title, Color buttonColor, iconButton) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Row(
        children: <Widget>[
          Container(
            height: 50.0,
            width: 50.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                color: buttonColor.withOpacity(0.3)
            ),
            child: Icon(
                iconButton,
                color: buttonColor,
                size: 25.0
            ),
          ),
          SizedBox(width: 25.0),
          Container(
            width: MediaQuery.of(context).size.width - 100.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(title,
                  style: TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize: 15.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.arrow_forward_ios),

                  onPressed: () {
                    _signOut();

                  },

                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget cardDetails(String title, String imgPath, String valueCount) {
    return Material(
      elevation: 4.0,
      borderRadius: BorderRadius.circular(7.0),
      child: Container(
        height: 125.0,
        width: (MediaQuery.of(context).size.width / 2) - 20.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7.0), color: Colors.white),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 10.0),
            Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Image.asset(
                imgPath,
                fit: BoxFit.cover,
                height: 50.0,
                width: 50.0,
              ),
            ),
            SizedBox(height: 2.0),
            Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Text(title,
                  style: TextStyle(
                    fontFamily: 'Quicksand',
                    fontSize: 15.0,
                    color: Colors.black,
                  )),
            ),
            SizedBox(height: 3.0),
            Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Text(valueCount,
                  style: TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize: 15.0,
                      color: Colors.red,
                      fontWeight: FontWeight.bold)),
            )
          ],
        ),
      ),
    );
  }
}

Future<void> _signOut() async {

  await FirebaseAuth.instance.signOut();
  runApp(
      MaterialApp(
        home: MyApp(),
      )
  );

}