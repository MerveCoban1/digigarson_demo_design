import 'package:digigarson_demo_design/widgets/my_cart_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'address.dart';

class MyOrder extends StatefulWidget {
  const MyOrder({Key? key}) : super(key: key);

  @override
  _MyOrderState createState() => _MyOrderState();
}

class _MyOrderState extends State<MyOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Colors.grey,
        ),

      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Text("MY ORDER", style: TextStyle(color: Colors.black, fontSize:25, fontWeight: FontWeight.bold),),
          ),
          MyCartList("Special Pan Pizza", "15.50TL", "assets/images/yemek3.jpg"),
          MyCartList("Special Pan Pizza", "15.50TL", "assets/images/yemek3.jpg"),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(

                decoration: BoxDecoration(
                color:Color(0xffcce0dd),
                borderRadius: BorderRadius.circular(10),
                ),
                  child: FlatButton(
                      onPressed:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>Address()));},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          Icon(Icons.home_outlined),
                          SizedBox(height: 5.0,),
                          Text("Address")
                        ],
                      )
                  ),
                ),

              Container(
                decoration: BoxDecoration(
                  color:Color(0xfffff2f5),
                  borderRadius: BorderRadius.circular(10),
                ),
                  child: FlatButton(
                      onPressed:(){},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        Icon(Icons.payment),
                        SizedBox(height: 5.0,),
                        Text("Payment")
                      ],
                    )
                  ),
                ),
            ],
          ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 15.0, left: 15.0,top: 25.0,bottom: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Subtotal", style: TextStyle(color: Colors.black87, fontSize: 23.0, fontWeight: FontWeight.normal),),
                      Text("80.00 TL", style: TextStyle(color: Colors.black, fontSize: 23.0, fontWeight: FontWeight.normal),),
                    ],

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15.0, left: 15.0,bottom: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Taxes & Fee", style: TextStyle(color: Colors.black87, fontSize: 23.0, fontWeight: FontWeight.normal),),
                      Text("5.00 TL", style: TextStyle(color: Colors.black, fontSize: 23.0, fontWeight: FontWeight.normal),),
                    ],

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15.0, left: 15.0,bottom: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Delivery", style: TextStyle(color: Colors.black87, fontSize: 23.0, fontWeight: FontWeight.normal),),
                      Text("Free", style: TextStyle(color: Colors.black, fontSize: 23.0, fontWeight: FontWeight.normal),),
                    ],

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15.0, left: 15.0,bottom: 40.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("TOTAL", style: TextStyle(color: Colors.black87, fontSize: 23.0, fontWeight: FontWeight.normal),),
                      Text("80.00 TL", style: TextStyle(color: Colors.black, fontSize: 23.0, fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),
              ],
            ),
          Padding(
            padding: const EdgeInsets.only(bottom:15.0),
            child: Container(
              alignment: Alignment.bottomCenter,
              child: FlatButton(onPressed: () { },
                color: Colors.orangeAccent,
                height: (MediaQuery.of(context).size.height)*0.06,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Container(
                  width: (MediaQuery.of(context).size.width)*0.65,
                  height: (MediaQuery.of(context).size.height)*0.06,
                  child: Center(
                    child: Text("Pay & Place order", style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.normal, fontSize: 25.0,
                    )),
                  ),
                ),


              ),
            ),
          )
        ],
      ),
    );
  }


  }

