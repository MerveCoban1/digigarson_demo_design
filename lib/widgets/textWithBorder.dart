import 'package:flutter/material.dart';

class TextWithBorder extends StatefulWidget {
  var left;
  var right;
  TextWithBorder(this.left, this.right);
  @override
  _TextWithBorderState createState() => _TextWithBorderState();
}

class _TextWithBorderState extends State<TextWithBorder> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      padding: const EdgeInsets.all(3.0),
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey, width: 3.0))),
      child: Row(
        children: [
          Text(
            widget.left,
            style: TextStyle(color: Colors.grey, fontSize: 25.0),
          ),
          Flexible(fit: FlexFit.tight, child: SizedBox()),
          Text(
            widget.right,
            style: TextStyle(color: Colors.black, fontSize: 25.0),
          ),
        ],
      ),
    );
  }
}
