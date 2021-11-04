import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RestaurantScreenCategoryCard extends StatefulWidget{
  var categoryName;
  var categoryImage;

  RestaurantScreenCategoryCard(this.categoryName, this.categoryImage);

  @override
  _RestaurantScreenCategoryCardState createState() => _RestaurantScreenCategoryCardState();
}
class _RestaurantScreenCategoryCardState extends State<RestaurantScreenCategoryCard> {
  var containerColor=Colors.grey[100];
  var imageColor=Colors.grey[100];
  var textColor=Colors.grey[700];
  var control=1;
  var selectedCategory="burger";

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: (){
          setState(() {
            if(control==1){
              containerColor=Colors.orangeAccent;
              imageColor=Colors.white;
              textColor=Colors.white;
              control=0;
            }else{
              containerColor=Colors.grey[100];
              imageColor=Colors.grey[100];
              textColor=Colors.grey[700];
              control=1;
            }
          });
        },
        child: Padding(
          padding: const EdgeInsets.only(right: 5.0,left: 5.0),
          child: Container(
            margin: EdgeInsets.only(top: 15),
            alignment: Alignment.bottomCenter,
            width: 80.0,
            decoration: BoxDecoration(
              color: containerColor,
              borderRadius: BorderRadius.circular(50.0),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  width: 70.0,
                  height: 70.0,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(widget.categoryImage),
                    radius: 50.0,
                    backgroundColor: imageColor,
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Center(
                  child: Text(
                    widget.categoryName,
                    style: TextStyle(
                      color: textColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}