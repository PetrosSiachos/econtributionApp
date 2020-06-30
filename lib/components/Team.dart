import 'package:flutter/material.dart';

class Team extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'About Us';

    return Scaffold(

        appBar: AppBar(
          title: Text(title),
        ),
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image.asset(
                  'assets/images/team1.png',
                      width: 500,
                      height: 550,
              ),
              Text("econtribution © all rights reserved"),

    ]
    )
    );
    
    
  }
}