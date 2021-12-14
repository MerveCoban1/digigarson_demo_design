import 'package:digigarson_demo_design/views/myOrder.dart';
import 'package:digigarson_demo_design/widgets/my_cart_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MyCart extends StatefulWidget {
  const MyCart({Key? key}) : super(key: key);

  @override
  _MyCartState createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  List<int> items = List<int>.generate(20, (int index) => index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(context),
      body: buildListView(context),
      bottomSheet: BottomAppBar(
        //Toplam fiyat kısmı
        child: Container(
          width: (MediaQuery.of(context).size.width),
          height: (MediaQuery.of(context).size.height) * 0.20,
          color: Colors.white,
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(top: 10.0, bottom: 8.0, right: 8.0),
                child: Container(
                    alignment: Alignment.topRight,
                    child: Text(
                      "Total",
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Container(
                    alignment: Alignment.topRight,
                    child: Text("15.50TL",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 23))),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 0.0),
                child: Container(
                  alignment: Alignment.bottomCenter,
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MyOrder()));
                    },
                    color: Colors.orangeAccent,
                    height: (MediaQuery.of(context).size.height) * 0.06,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Container(
                      width: (MediaQuery.of(context).size.width) * 0.65,
                      height: (MediaQuery.of(context).size.height) * 0.06,
                      child: Center(
                        child: Text("Place Order",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                              fontSize: 25.0,
                            )),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(
        color: Colors.grey,
      ),
      backgroundColor: Colors.white70,
      elevation: 0.0,
      actions: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Icon(Icons.search),
        ),
      ],
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(20.0),
        child: Container(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Text("MY CART",
                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold)),
          ),
          color: Colors.white,
        ),
      ),
    );
  }

  buildListView(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      padding: const EdgeInsets.symmetric(vertical: 16),
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            Dismissible(
              child: ListTile(
                  title: MyCartList("Special Pan Pizza", " 15.50TL",
                      "assets/images/yemek3.jpg")),
              background: Container(
                color: Colors.red,
              ),
              key: ValueKey<int>(items[index]),
              onDismissed: (DismissDirection direction) {
                setState(() {
                  items.removeAt(index);
                });
              },
            ),
          ],
        );
      },
    );
  }
}
