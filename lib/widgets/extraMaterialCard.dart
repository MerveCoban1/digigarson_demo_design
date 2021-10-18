import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExtraMaterialCard extends StatefulWidget{
  var dealName;

  ExtraMaterialCard(this.dealName);
  @override
  _ExtraMaterialCardState createState() => _ExtraMaterialCardState();
}
class _ExtraMaterialCardState extends State<ExtraMaterialCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        width: 100.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(width: 2.0,color: Color(0xfff2f2f2)),
        ),
        child: InkWell(
          onTap: () async{
          },
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20.0,right: 20.0,top: 10.0),
                child: Text(widget.dealName,
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 32.0,right: 32.0),
                child: Container(
                  height: 30.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(1000),
                    color: Colors.black,
                  ),
                  child:
                  IconButton(onPressed:(){},
                    alignment: Alignment.center,
                    icon: Icon(Icons.add, color: Colors.white,),
                    iconSize: 15,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}