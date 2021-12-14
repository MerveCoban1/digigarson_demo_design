//@dart=2.9
import 'package:digigarson_demo_design/widgets/menu_card.dart';
import 'package:digigarson_demo_design/widgets/restaurant_screen_category_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RestaurantMenuScreen extends StatefulWidget{
  var categoryName;

  RestaurantMenuScreen(this.categoryName);

  @override
  _RestaurantMenuScreenState createState()=>_RestaurantMenuScreenState();
}

class _RestaurantMenuScreenState extends State<RestaurantMenuScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(),
      body: buildListView(),
    );
  }
  AppBar buildAppBar() {
    return AppBar(
      iconTheme: IconThemeData(
        color: Colors.orangeAccent,
      ),
      backgroundColor: Colors.white70,
      elevation: 0.0,
      leading: IconButton(
        onPressed: (){
          Navigator.pop(context);
        },
        icon: Icon(Icons.arrow_back,color: Colors.orangeAccent),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Icon(Icons.search),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Icon(Icons.shopping_cart),
        ),
      ],
    );
  }

  ListView buildListView() {
    return ListView(
      children: [
        Container(
          height: 20.0,
          width: 200.0,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              "DIJIGARSON",
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.grey[400],
              ),
            ),
          ),
        ),
        Container(
          height: 40.0,
          width: 200.0,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 5.0),
            child: Text(
              "MENU",
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Container( //bu container kategorilerin olduğu container
          width: double.infinity,
          height: 150.0,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                RestaurantScreenCategoryCard("Burger","assets/images/hamburger.png"),
                RestaurantScreenCategoryCard("Pizza","assets/images/pizza.png"),
                RestaurantScreenCategoryCard("Chicken","assets/images/hamburger.png"),
                RestaurantScreenCategoryCard("Burger","assets/images/hamburger.png"),
                RestaurantScreenCategoryCard("Pizza","assets/images/pizza.png"),
                RestaurantScreenCategoryCard("Chicken","assets/images/hamburger.png"),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Container( //bu container yemeklerin olduğu container
          width: double.infinity,
          height: 350.0,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 5.0),
            child: ListView(
              children: [
                MenuCard("Lazania Pizza", "Lazania Pizza",128,256,"assets/images/yemek1.jpg", "assets/images/yemek1.jpg"),
                MenuCard("Lazania Pizza", "Lazania Pizza",128,256,"assets/images/yemek1.jpg", "assets/images/yemek1.jpg"),
                MenuCard("Lazania Pizza", "Lazania Pizza",128,256,"assets/images/yemek1.jpg", "assets/images/yemek1.jpg"),
                MenuCard("Lazania Pizza", "Lazania Pizza",128,256,"assets/images/yemek1.jpg", "assets/images/yemek1.jpg"),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

