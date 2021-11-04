import 'package:flutter/material.dart';

class MyOrdersList extends StatefulWidget {
  final String kategori;
  MyOrdersList(this.kategori);

  @override
  _MyOrdersListState createState() => _MyOrdersListState();
}

class _MyOrdersListState extends State<MyOrdersList> {
  late List<Widget> gosterilecekListe;
  @override
  void initState() {
    super.initState();
    if (widget.kategori == 'ongoing') {
      gosterilecekListe = [
        orderCard("123456","12 Sep 2021","08:09 PM"),
        orderCard("123456","12 Sep 2021","08:09 PM"),
        orderCard("123456","12 Sep 2021","08:09 PM"),
        orderCard("123456","12 Sep 2021","08:09 PM"),
        orderCard("123456","12 Sep 2021","08:09 PM"),
        ];
    } else if (widget.kategori == 'delivered') {
      gosterilecekListe = [
        orderCard("123456","12 Sep 2021","08:09 PM"),
        orderCard("123456","12 Sep 2021","08:09 PM"),
      ];
    } else if (widget.kategori == 'cancelled') {
      gosterilecekListe = [
        orderCard("123456","12 Sep 2021","08:09 PM"),
        orderCard("123456","12 Sep 2021","08:09 PM"),
        orderCard("123456","12 Sep 2021","08:09 PM"),
        orderCard("123456","12 Sep 2021","08:09 PM"),
      ];
    }
  }

  Widget orderCard(String orderNo,String tarih,String saat) {
    return GestureDetector(
      onTap: (){

      },
      child: Padding(
        padding: const EdgeInsets.only(top:10.0,bottom: 10.0),
        child: Container(
          height: 120.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                blurRadius: 4.0,
                spreadRadius: 2.0,
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: [
                SizedBox(
                  height: 8.0,
                ),
                Text(
                  "Order no:  "+orderNo,
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[900],
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Text(
                  tarih,
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[400],
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Container(
                  height: 40.0,
                  child: Row(
                    children: [
                      Text(
                        saat,
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[400],
                        ),
                      ),
                      SizedBox(width: 220.0,),
                      OutlinedButton(
                        onPressed: (){},
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50.0),
                                    side: BorderSide(color: Colors.orangeAccent),
                                ),
                            ),
                        ),
                        child:  Text("Details",
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[700],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0,right: 8.0),
      child: ListView(
        children: gosterilecekListe,
      ),
    );
  }
}
