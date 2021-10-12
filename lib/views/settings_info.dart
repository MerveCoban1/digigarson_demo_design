import 'package:digigarson_demo_design/widgets/textWithBorder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsInfo extends StatelessWidget {
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
                Icons.arrow_back_ios,
                color: Colors.grey,
              )),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                  "Information",
                  textAlign: TextAlign.start,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 180.0, right: 5.0),
                child: Icon(
                  Icons.edit_sharp,
                  color: Colors.orange,
                  size: 50.0,
                ),
              )
            ],
          ),
          SizedBox(height:5.0),

          TextWithBorder("Username", "Johndoel123"),
          TextWithBorder("Email", "johndoe@mail.com"),
          TextWithBorder("Phone", "+1 234 567 890"),
          TextWithBorder("Gender", "Male"),
          TextWithBorder("Date of birth", "25/05/2000"),
        ],
      ),
    );
  }
}
