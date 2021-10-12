import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

showAlertDialog(BuildContext context) async {
  Widget denyButton = FlatButton(
    child: Text(
      "Deny",
      style: TextStyle(color: Colors.orange, fontSize: 22.0),
    ),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );
  Widget allowButton = FlatButton(
    child: Text(
      "Allow",
      style: TextStyle(color: Colors.orange, fontSize: 22.0),
    ),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );

  AlertDialog alert = AlertDialog(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
    content: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 100.0,
        width: 300.0,
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              Icon(
                Icons.location_on,
                color: Colors.orange,
                size: 60.0,
              ),
              Text(
                "Allow Foodmap to",
                style: TextStyle(fontSize: 20.0),
              )
            ]),
            SizedBox(
              height: 10.0,
            ),
            Text(
              " access this location's device",
              style: TextStyle(fontSize: 20.0),
            )
          ],
        ),
      ),
    ),
    actions: [denyButton, allowButton],
  );

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
