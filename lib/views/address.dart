import 'package:digigarson_demo_design/views/addAddress.dart';
import 'package:digigarson_demo_design/widgets/addressContainer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Address extends StatefulWidget {
  @override
  _AddressState createState() => _AddressState();
}

class _AddressState extends State<Address> {
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Address",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
            ),
          ),
          AddressContainer(),
          AddressContainer(),
          AddressContainer(),
          Padding(
            padding: const EdgeInsets.only(
                top: 200.0, left: 10, right: 10, bottom: 20.0),
            child: FlatButton(
              minWidth: 320.0,
              height: 50.0,
              color: Colors.orange,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AddAddress()));
              },
              child: Text(
                "Add new address",
                style: TextStyle(
                  color: Colors.white,
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
