import 'package:digigarson_demo_design/views/settings_info.dart';
import 'package:digigarson_demo_design/views/settings_password.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          new IconButton(
              alignment: Alignment.bottomLeft,
              onPressed: () {
                Navigator.pop(context);
              },
              icon: new Icon(
                Icons.arrow_back,
                color: Colors.orangeAccent,
              )),
          Padding(
            padding: const EdgeInsets.only(top: 25.0, bottom: 25.0),
            child: Text(
              "Settings",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0),
            ),
          ),
          Container(
            height: 40.0,
            decoration: BoxDecoration(color: Colors.grey.shade100),
            child: Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: Text(
                "User Information",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 20.0, bottom: 20.0, left: 5.0, right: 106.0),
                child: Text(
                  "Information & Contact",
                  style: TextStyle(fontSize: 25.0),
                ),
              ),
              new IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SettingsInfo()));
                },
                icon: new Icon(Icons.arrow_forward_ios),
                color: Colors.grey,
              )
            ],
          ),
          Container(
            height: 5.0,
            decoration: BoxDecoration(color: Colors.grey.shade100),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 20.0, bottom: 20.0, left: 5.0, right: 150.0),
                child: Text(
                  "Change Password",
                  style: TextStyle(fontSize: 25.0),
                ),
              ),
              new IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SettingsPassword()));
                },
                icon: new Icon(Icons.arrow_forward_ios),
                color: Colors.grey,
              )
            ],
          ),
          Container(
            height: 40.0,
            decoration: BoxDecoration(color: Colors.grey.shade100),
            child: Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: Text(
                "App Settings",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0, left: 3.0, right: 3.0),
            child: Row(
              children: [
                Text("App version", style: TextStyle(fontSize: 22.0)),
                Padding(
                  padding: const EdgeInsets.only(left: 230.0),
                  child: Text("1.0.1",
                      textAlign: TextAlign.end,
                      style: TextStyle(fontSize: 22.0)),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
