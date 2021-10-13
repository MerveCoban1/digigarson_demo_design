//@dart=2.9
import 'package:digigarson_demo_design/views/profile_page.dart';
import 'package:digigarson_demo_design/views/qr_scan_screen.dart';
import 'package:digigarson_demo_design/views/settingsPage.dart';
import 'package:digigarson_demo_design/widgets/categoryCard.dart';
import 'package:digigarson_demo_design/widgets/dealCard.dart';
import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flappy_search_bar/search_bar_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget{
  @override
  _HomeScreenState createState()=>_HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.orangeAccent,
        ),
        backgroundColor: Colors.white70,
        elevation: 0.0,
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: InkWell(
              onTap:(){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>QrScan()));
              },
              child: Icon(Icons.qr_code),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(Icons.shopping_cart),
          ),
        ],
      ),
      body: buildListView(),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(0.0),
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Digigarson"),
              accountEmail: Text("matrixteknoloji@gmail.com"),
              currentAccountPicture: Container(
                child: Image.asset(
                  'assets/images/logo.png',
                  fit: BoxFit.cover,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.orangeAccent,
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: (){
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfilePage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text("Favorites"),
              onTap: (){
                //Navigator.push(context, MaterialPageRoute(builder: (context)=>Favorites()));
              },
            ),
            ListTile(
              leading: Icon(Icons.card_giftcard),
              title: Text("Orders"),
              onTap: (){
                //Navigator.push(context, MaterialPageRoute(builder: (context)=>Orders()));
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SettingsPage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Çıkış Yap"),
              onTap: (){
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
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
              "Welcome To",
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
                "DIGIGARSON",
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Container(
          height: 80.0,
          width: 200.0,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: SearchBar(
              loader: Text("loading..."),
              hintText: "Search",
              iconActiveColor: Colors.orangeAccent,
              searchBarStyle: SearchBarStyle(
                backgroundColor: Colors.grey[100],
                padding: EdgeInsets.only(left: 50.0),
                borderRadius: BorderRadius.circular(50.0),
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
              "Categories",
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Container( //bu container kategorilerin olduğu container
          width: double.infinity,
          height: 150.0,
          decoration: BoxDecoration(
              color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 5.0),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CategoryCard("Breakfast","assets/images/yemek2.jpg"),
                CategoryCard("Lunch","assets/images/yemek3.jpg"),
                CategoryCard("Dinner","assets/images/yemek1.jpg"),
              ],
            ),
          ),
        ),
        Container(
          height: 40.0,
          width: 200.0,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 5.0),
            child: Text(
              "Deals",
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Container( //bu container yemeklerin olduğu container
          width: double.infinity,
          height: 200.0,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 5.0),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                DealCard("Full Chicken Biryani","assets/images/yemek4.jpg","10TL"),
                DealCard("Full Chicken Biryani","assets/images/yemek4.jpg","10TL"),
                DealCard("Full Chicken Biryani","assets/images/yemek4.jpg","10TL"),
              ],
            ),
          ),
        ),
        Container(
          height: 40.0,
          width: 200.0,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 5.0),
            child: Text(
              "Populars",
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Container( //bu container yemeklerin olduğu container
          width: double.infinity,
          height: 200.0,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 5.0),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                DealCard("Full Chicken Biryani","assets/images/yemek4.jpg","10TL"),
                DealCard("Full Chicken Biryani","assets/images/yemek4.jpg","10TL"),
                DealCard("Full Chicken Biryani","assets/images/yemek4.jpg","10TL"),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

