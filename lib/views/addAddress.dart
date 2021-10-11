import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddAddress extends StatefulWidget {
  @override
  _AddAddressState createState() => _AddAddressState();
}

class _AddAddressState extends State<AddAddress> {
  TextEditingController addressController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              "Add new address",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: addressController,
              decoration: InputDecoration(
                  labelText: 'Title', labelStyle: TextStyle(fontSize: 20.0)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: addressController,
              decoration: InputDecoration(
                labelText: 'Street Address',
                labelStyle: TextStyle(fontSize: 20.0),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: addressController,
              decoration: InputDecoration(
                labelText: 'City',
                labelStyle: TextStyle(fontSize: 20.0),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: addressController,
              decoration: InputDecoration(
                labelText: 'Zipcode',
                labelStyle: TextStyle(fontSize: 20.0),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 180.0, left: 10, right: 10, bottom: 20.0),
            child: FlatButton(
              minWidth: 320.0,
              height: 50.0,
              color: Colors.orange,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              onPressed: () {},
              child: Text(
                "SAVE",
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
