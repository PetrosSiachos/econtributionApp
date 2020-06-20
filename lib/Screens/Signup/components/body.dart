import 'package:flutter/material.dart';
import 'package:econtribution/Screens/Login/login_screen.dart';
import 'package:econtribution/Screens/Signup/components/background.dart';
import 'package:econtribution/Screens/Signup/components/or_divider.dart';
import 'package:econtribution/Screens/Signup/components/social_icon.dart';
import 'package:econtribution/components/already_have_an_account_acheck.dart';
import 'package:econtribution/components/rounded_button.dart';
import 'package:econtribution/components/rounded_input_field.dart';
import 'package:econtribution/components/rounded_password_field.dart';
import 'package:flutter_svg/svg.dart';
import 'package:econtribution/Screens/home/home-screen.dart';
import 'package:econtribution/Screens/home/components/app_bar.dart';
import 'package:econtribution/Screens/home/components/body.dart';
import 'package:econtribution/Screens/home/components/category_item.dart';
import 'package:econtribution/Screens/home/components/category_list.dart';
import 'package:econtribution/Screens/home/components/discount_card.dart';
import 'package:econtribution/Screens/home/components/item_card.dart';
import 'package:econtribution/Screens/home/components/item_list.dart';


class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "SIGNUP",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/signup.svg",
              height: size.height * 0.35,
            ),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "SIGNUP",
              press: () {},
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocalIcon(
                  iconSrc: "assets/icons/facebook.svg",
                  press: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return HomeScreen();
                      },
                    ),
                  );},
                ),
                SocalIcon(
                  iconSrc: "assets/icons/twitter.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/icons/google-plus.svg",
                  press: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
