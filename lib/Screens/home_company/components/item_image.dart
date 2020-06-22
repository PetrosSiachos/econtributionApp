import 'package:flutter/material.dart';

class ItemCardsB extends StatelessWidget {
  final String title, svgSrc;
  final Function press;
  const ItemCardsB({
    Key key,
    this.title,
    this.svgSrc,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // This size provide you the total height and width of the screen
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(left: 0, right: 0, top: 0, bottom: 0),

      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: press,
          child: Padding(
            padding: const EdgeInsets.all(2),
            child: Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                  ),
                  child: Image.asset(
                    svgSrc,
                    width: 200,
                    height: 150,
                    fit: BoxFit.fitWidth,
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
