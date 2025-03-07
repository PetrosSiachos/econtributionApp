import 'package:flutter/material.dart';
import 'package:econtribution/Screens/Welcome/welcome_screen.dart';
import 'package:econtribution/constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'econtribution',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home:  WelcomeScreen(),
    );
  }
}
