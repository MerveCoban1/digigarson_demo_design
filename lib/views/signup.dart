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
    return Material(
      child: Stack(children: [
        Column(
          children: [
            new Container(
              height: 500.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/signup.jpeg"),
                    fit: BoxFit.cover),
              ),
            ),
            Container(
              height: 160.0,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
            )
          ],
        ),
        Positioned(
          top: 280.0,
          left: 35.0,
          child: Container(
            width: 340.0,
            height: 350.0,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40.0),
                boxShadow: [BoxShadow(blurRadius: 1.0, color: Colors.grey)]),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 290.0,
          ),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              Icon(Icons.person_outline_rounded,
                  color: Colors.orange, size: 50.0),
              SizedBox(
                height: 10.0,
              ),
              Center(
                child: Text(
                  "Digigarson'a Hoş Geldiniz",
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
