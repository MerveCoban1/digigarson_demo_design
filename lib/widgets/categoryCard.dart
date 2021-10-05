import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatefulWidget{
  var categoryName;
  var categoryImage;

  CategoryCard(this.categoryName, this.categoryImage);

  @override
  _CategoryCardState createState() => _CategoryCardState();
}
class _CategoryCardState extends State<CategoryCard> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: () async{
        },
        child: Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Stack(
            //eklediğim 2.widgetın konumunu belirliyorum.
            alignment: Alignment.topCenter,
            children: [
              Container(
                margin: EdgeInsets.only(top: 40),
                alignment: Alignment.bottomCenter,
                width: 130.0,
                height: 100.0,
                decoration: BoxDecoration(
                  color: Colors.orangeAccent,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Text(
                    widget.categoryName,
                    style: TextStyle(
                      color: Colors.white70,
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                    ),
                  ),
                ),
              ),
              Container(
                width: 90.0,
                height: 90.0,
                child: CircleAvatar(
                  backgroundImage: AssetImage(widget.categoryImage),
                  radius: 50.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}