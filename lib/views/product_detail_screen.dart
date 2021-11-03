//@dart=2.9
import 'package:digigarson_demo_design/widgets/extraMaterialCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductDetailScreen extends StatefulWidget {
  var dealName;
  var dealImage;
  var dealPrice;
  var category;

  ProductDetailScreen(
      this.dealName, this.dealImage, this.dealPrice, this.category);

  @override
  _ProductDetailScreenState createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: buildListView(context),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        child: const Icon(Icons.add_shopping_cart),
        backgroundColor: Colors.orangeAccent,
      ),
    );
  }

  ListView buildListView(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return ListView(
      children: [
        //ekranın %65'ini kapsıyor
        Container(
          //ürün resmi ve adı
          height: height * 0.58,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Stack(
                alignment: Alignment.topLeft,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(150.0),
                    ),
                    child: Image.asset(
                      widget.dealImage,
                      height: height * 0.58,
                      width: width * 0.75,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back, color: Colors.white),
                  ),
                ],
              ),
              Container(
                width: width * 0.25,
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 40.0, right: 40.0, top: 15.0),
                      child: Text(
                        widget.category,
                        style: TextStyle(
                          fontSize: 45.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          height: 1.3,
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
          height: height * 0.37,
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0, top: 10.0),
                child: Text(
                  widget.dealName,
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, top: 10.0),
                child: Text(
                  "açıklama",
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 10.0, top: 10.0, right: 10.0),
                child: Container(
                  //bu container extraların olduğu container
                  height: height*0.14,
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
                child: Text(
                  widget.dealPrice,
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
