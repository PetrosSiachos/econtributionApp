import 'package:econtribution/Screens/home/home-screen.dart';
import 'package:flutter/material.dart';
import 'package:econtribution/Screens/Login/components/background.dart';
import 'package:econtribution/Screens/Signup/signup_screen.dart';
import 'package:econtribution/components/already_have_an_account_acheck.dart';
import 'package:econtribution/components/rounded_button.dart';
import 'package:econtribution/components/rounded_input_field.dart';
import 'package:econtribution/components/rounded_password_field.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatefulWidget {
  @override
  Body createState() => new Body();
}

class Body extends State<LoginPage> {


  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _email, _password;

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            Image.asset(
              "assets/images/logo.png",
              width: 100,
              height: 100,
              ),
            SizedBox(height: size.height * 0.03),
            TextFormField(
              validator: (input) {
                if(input.isEmpty){
                  return 'Provide an email';
                }
              },
              decoration: InputDecoration(
                  labelText: 'Email'
              ),
              onSaved: (input) => _email = input,
            ),
            TextFormField(
              validator: (input) {
                if(input.length < 6){
                  return 'Longer password please';
                }
              },
              decoration: InputDecoration(
                  labelText: 'Password'
              ),
              onSaved: (input) => _password = input,
              obscureText: true,
            ),
            RaisedButton(

              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
              onPressed: signIn,
              child: Text('Sign in'),
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  void signIn() async {
    if(_formKey.currentState.validate()){
      _formKey.currentState.save();
      try{
        await FirebaseAuth.instance.signInWithEmailAndPassword(email: _email, password: _password) ;
        Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
      }catch(e){
        print(e.message);
      }
    }
  }


}


