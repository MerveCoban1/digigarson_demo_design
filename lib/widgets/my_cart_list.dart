import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCartList extends StatefulWidget {
  var productImage;
  var productName;
  var productPrice;

  MyCartList(this.productName, this.productPrice,this.productImage);

  @override
  _MyCartListState createState() => _MyCartListState();
}

class _MyCartListState extends State<MyCartList> {
  
  @override
  Widget build(BuildContext context) {
    return
        Container(
          width: (MediaQuery.of(context).size.height)*0.25,
          height:150,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Stack(
            children: [
               Padding(
                  padding: const EdgeInsets.only(top:20, bottom: 20,right: 20, left: 40),
                  child: Container(
                    width: (MediaQuery.of(context).size.height)*0.5,
                    height:130,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.white24, width: 1.5),
                        boxShadow: [BoxShadow(blurRadius: 5,color: Colors.grey,)]
                    ),
                    child: Center(
                      child: Column(
                        children: [
                           Text(
                            widget.productName,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10,),
                             Row(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                  FlatButton(child: Text("-"), onPressed: () {  },),
                                 Text("2"),
                                 FlatButton( child: Text("+"),onPressed: (){},)
                               ],
                             ),

                          Text(widget.productPrice,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.orangeAccent, width: 3),
                          borderRadius: BorderRadius.circular(150),

                        ),
                        child: ClipRRect(
                          child: Image.asset(
                            widget.productImage,
                            width: 90,
                            height: 90,
                            fit: BoxFit.cover,

                          ),
                          borderRadius: BorderRadius.circular(140),

                        ),
                      ),



                    ],
                  )


                ],
              )
            ],
          )
    );
  }
}
