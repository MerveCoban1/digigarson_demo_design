import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuCard extends StatefulWidget{
  var foodName1,foodName2,price1,price2,image1,image2;

  MenuCard(this.foodName1, this.foodName2, this.price1, this.price2,
      this.image1, this.image2);

  @override
  _MenuCardState createState() => _MenuCardState();
}
class _MenuCardState extends State<MenuCard> {

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
          padding: const EdgeInsets.only(right: 5.0,left: 5.0),
          child: Container(
            margin: EdgeInsets.only(top: 15),
            alignment: Alignment.bottomCenter,
            width: 80.0,
            decoration: BoxDecoration(
              color: Colors.white70,
            ),
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: (){},
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10.0,
                        ),
                        Container(
                          width: 100.0,
                          height: 100.0,
                          decoration: BoxDecoration(
                            border: Border.all(width: 2.0, color: Colors.orangeAccent),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: CircleAvatar(
                              backgroundImage: AssetImage(widget.image1),
                              radius: 50.0,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Center(
                          child: Text(
                            widget.foodName1,
                            style: TextStyle(
                              color: Colors.grey[900],
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Center(
                          child: Text(
                            widget.price1.toString()+"  TL",
                            style: TextStyle(
                              color: Colors.grey[900],
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: (){},
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10.0,
                        ),
                        Container(
                          width: 100.0,
                          height: 100.0,
                          decoration: BoxDecoration(
                            border: Border.all(width: 2.0, color: Colors.orangeAccent),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: CircleAvatar(
                              backgroundImage: AssetImage(widget.image1),
                              radius: 50.0,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Center(
                          child: Text(
                            widget.foodName1,
                            style: TextStyle(
                              color: Colors.grey[900],
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Center(
                          child: Text(
                            widget.price1.toString()+"  TL",
                            style: TextStyle(
                              color: Colors.grey[900],
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0,
                            ),
                          ),
                        ),
                      ],
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