import 'package:econtribution/components/TermsOfUse.dart';
import 'package:flutter/material.dart';
import 'package:econtribution/components/Team.dart';
import 'package:econtribution/components/Policy.dart';


class MenuList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Menu List';

    return Scaffold(

        appBar: AppBar(
          title: Text(title),
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.local_grocery_store),
              title: Text('Store'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.group),
              title: Text('About Us'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Team(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.book),
              title: Text('Terms of use'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Terms(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.lock),
              title: Text('Privacy Policy'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Policy(),
                  ),
                );
              },
            ),
          ],
        ),
    );
  }
}
