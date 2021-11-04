import 'package:flutter/material.dart';

class AddressContainer extends StatefulWidget {
  @override
  _AddressContainerState createState() => _AddressContainerState();
}

class _AddressContainerState extends State<AddressContainer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 80.0,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Row(
          children: [
            Theme(
              data: Theme.of(context).copyWith(
                  unselectedWidgetColor: Colors.orange,
                  disabledColor: Colors.orange),
              child: Transform.scale(
                scale: 2.0,
                child: Radio(
                  value: 0,
                  groupValue: 'null',
                  onChanged: (index) {},
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "123 NY Street",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18.0),
                    ),
                    Text(
                      "54 000",
                      style: TextStyle(fontSize: 15.0),
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
