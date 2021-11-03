import 'package:digigarson_demo_design/views/signin.dart';
import 'package:digigarson_demo_design/widgets/signUpButtons.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Material(
      child: Stack(children: [
        Column(
          children: [
            new Container(
              height: height * 0.7,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/signup.jpeg"),
                    fit: BoxFit.cover),
              ),
            ),
            Center(
              child: Container(
                height: height * 0.3,
                width: width * 1,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
        Positioned(
          top: height * 0.41,
          left: width * 0.1,
          child: Container(
            width: width * 0.8,
            height: height * 0.4,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40.0),
                boxShadow: [BoxShadow(blurRadius: 2.0, color: Colors.grey)]),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: height * 0.22,
            left: width * 0.04,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.person_outline_rounded,
                  color: Colors.orange, size: 50.0),
              SizedBox(
                height: height * 0.01,
              ),
              Center(
                child: Text(
                  "Welcome to Digigarson",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 28.0,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
              SignUpButton(
                  "assets/images/phone.png", Colors.green, "Phone number"),
              SignUpButton(
                  "assets/images/facebook.png", Colors.blue, "Facebook"),
              SignUpButton("assets/images/google.png", Colors.red, "Google"),
            ],
          ),
        ),
      ]),
    );
  }
}
