import 'package:digigarson_demo_design/widgets/allAddress.dart';
import 'package:digigarson_demo_design/widgets/generalDetails.dart';
import 'package:digigarson_demo_design/widgets/logout.dart';
import 'package:digigarson_demo_design/widgets/paymentMethods.dart';
import 'package:digigarson_demo_design/widgets/settings.dart';
import 'package:digigarson_demo_design/widgets/support.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {


  const ProfilePage(
      {Key? key,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.orangeAccent,
          iconTheme: IconThemeData(
            color: Colors.white70,
          ),
          elevation: 0.0,
          leading: GestureDetector(
            onTap: () {},
            child: Icon(
              Icons.qr_code,
              size: 40.0,
            ),
          ),
          actions: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 17.0),
                  child: Container(
                    alignment: Alignment.topRight,
                    height: 50.0,
                    width: 40.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(
                  right: 25.0,
                )),
                GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.shopping_bag,
                    color: Colors.orangeAccent,
                    size: 40.0,
                  ),
                ),
              ],
            ),
          ]),
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 200.00,
                decoration: BoxDecoration(
                  color: Colors.orangeAccent,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100.0),
                child: Center(
                  child: Container(
                    height: 180.0,
                    width: 360.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0),
                      boxShadow: [
                        BoxShadow(color: Colors.black, blurRadius: 1.0)
                      ],
                    ),
                  ),
                ),
              ),
              Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 30.0,
                    ),
                    new Container(
                      width: 150.0,
                      height: 150.0,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/profil.png"),
                              fit: BoxFit.cover),
                          border: Border.all(width: 2.0, color: Colors.black),
                          borderRadius: BorderRadius.circular(75.0)),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      "Jessica Jones",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 25.0),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "+1 23 456 789",
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 12.0, left: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [PaymentMethods(), AllAddress(), GeneralDetails()],
            ),
          ),
          SizedBox(height: 5.0),
          Padding(
            padding: const EdgeInsets.only(right: 12.0, left: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [Settings(), Support(), Logout()],
            ),
          ),
        ],
      ),
    );
  }
}
