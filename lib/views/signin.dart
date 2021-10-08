import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Column(
        children: [
          new Container(
            height: 500.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/sign.jpg"),
                  fit: BoxFit.cover),
            ),
          ),
          Container(
            height: 183.0,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
          )
        ],
      ),
      Positioned(
        child: Container(
          width: 340.0,
          height: 350.0,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(40.0)),
        ),
      ),
    ]);
  }
}
