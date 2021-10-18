import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Support extends StatelessWidget {
  const Support({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 118.0,
      height: 110.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [BoxShadow(color: Colors.black, blurRadius: 1.0)],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.headphones,
            color: Colors.orangeAccent,
            size: 35.0,
          ),
          Text(
            "Support",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18.0,
            ),
          ),
        ],
      ),
    );
  }
}
