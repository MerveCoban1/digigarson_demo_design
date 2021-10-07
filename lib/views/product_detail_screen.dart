//@dart=2.9
import 'package:digigarson_demo_design/widgets/extraMaterialCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductDetailScreen extends StatefulWidget{
  @override
  _ProductDetailScreenState createState()=>_ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: buildListView(context),
    );
  }

  ListView buildListView(BuildContext context) {
    return ListView(
      children: [
        //ekranın %65'ini kapsıyor
        Container(//ürün resmi ve adı
          height: (MediaQuery.of(context).size.height)*0.65,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(150.0),
                ),
                child :Image.asset(
                  "assets/images/yemek3.jpg",
                  height: 450,
                  width: (MediaQuery.of(context).size.width)*0.75,
                  fit: BoxFit.fitHeight,
                ),
              ),
              Container(
                width: (MediaQuery.of(context).size.width)*0.25,
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 40.0,right: 40.0,top: 15.0),
                      child: Text("PIZZA",
                        style: TextStyle(
                          fontSize: 45.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          height: 1.4,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 26.0,right: 26.0),
                      child: Container(
                        height: 50.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(1000),
                          color: Colors.orangeAccent,
                        ),
                        child:
                        IconButton(onPressed:(){},
                          alignment: Alignment.center,
                          icon: Icon(Icons.add_shopping_cart, color: Colors.white,),
                          iconSize: 30,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          height: (MediaQuery.of(context).size.height)*0.35,
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0,top:10.0),
                child: Text("Special Pan Pizza",
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0,top:10.0),
                child: Text("açıklama",
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0,top:10.0,right: 10.0),
                child: Container( //bu container extraların olduğu container
                  height: 100.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      ExtraMaterialCard("Extra Cheese"),
                      ExtraMaterialCard("Extra Topping"),
                      ExtraMaterialCard("Extra Olive"),
                      ExtraMaterialCard("Extra pepper"),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Container(
                height: 25.0,
                alignment: Alignment.bottomRight,
                child: Text("10.0 TL",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

