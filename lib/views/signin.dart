import 'package:digigarson_demo_design/views/allowLocation.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Material(
      child: Stack(children: [
        Column(
          children: [
            new Container(
              height: height * 0.6,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/sign.jpg"),
                    fit: BoxFit.cover),
              ),
            ),
          ],
        ),
        Positioned(
          top: width * 0.75,
          left: height * 0.045,
          child: Container(
            width: width * 0.82,
            height: height * 0.45,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40.0),
                boxShadow: [BoxShadow(blurRadius: 1.0, color: Colors.grey)]),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: width * 0.78,
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
              Text(
                "LOGIN",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 35.0,
                  decoration: TextDecoration.none,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 15.0, left: 50.0, right: 45.0),
                child: Text(
                  "Enter your valid mobile number to continue",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 18.0,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 30.0,
                  left: 45.0,
                  right: 45.0,
                ),
                child: TextField(
                  controller: numberController,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey.shade200,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      labelText: 'Phone Number',
                      labelStyle: TextStyle(fontSize: 25.0)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 18.0),
                child: FlatButton(
                  minWidth: 320.0,
                  height: 50.0,
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      side: BorderSide(
                          color: Colors.orange,
                          width: 1,
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(20)),
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => AllowLocation()));
                  },
                  child: Text(
                    "SEND",
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 25.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
