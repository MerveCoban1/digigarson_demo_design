import 'package:digigarson_demo_design/widgets/showAlertDialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AllowLocation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          new Container(
            height: height*0.5,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/location.png"),
                  fit: BoxFit.cover),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 65.0),
            child: Text(
              "Hi! Nice to meet you",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding:
                  const EdgeInsets.only(top: 10.0, left: 30.0, right: 30.0),
              child: Text(
                "Please allow your location to continue using app",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20.0),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 60.0, left: 65.0, right: 65.0),
            child: FlatButton(
              minWidth: width*0.4,
              height: 50.0,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  side: BorderSide(
                      color: Colors.orange, width: 1, style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(20)),
              onPressed: () {
                showAlertDialog(context);
              },
              child: Text(
                "Use current location",
                style: TextStyle(
                  color: Colors.orange,
                  fontSize: 25.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
