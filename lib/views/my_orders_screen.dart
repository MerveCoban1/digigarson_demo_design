import 'package:digigarson_demo_design/widgets/my_orders_list.dart';
import 'package:flutter/material.dart';

class MyOrdersScreen extends StatefulWidget {
  @override
  _MyOrdersScreenState createState() => _MyOrdersScreenState();
}

class _MyOrdersScreenState extends State<MyOrdersScreen> with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(context),
      body: buildListView(context),
    );
  }

  ListView buildListView(context) {
    return ListView(
      children: [
        Container(
          height: 70.0,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 20.0),
            child: Text(
              "My Orders",
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.grey[700],
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Container(
          height: 50.0,
          child: TabBar(
            controller: tabController,
            indicatorColor: Colors.orangeAccent,
            labelColor: Colors.orangeAccent,
            unselectedLabelColor: Colors.grey,
            isScrollable: true,
            labelStyle: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500),
            tabs: [
              Tab(
                child: Text(
                  "Ongoing",
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 60.0,right: 60.0),
                child: Tab(
                  child: Text(
                    "Delivered",
                  ),
                ),
              ),
              Tab(
                child: Text(
                  "Cancelled",
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 450.0,
          child: TabBarView(
            controller: tabController,
            children: [
              MyOrdersList("ongoing"),
              MyOrdersList("delivered"),
              MyOrdersList("cancelled"),
            ],
          ),
        ),
      ],
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: IconButton(
        onPressed: (){
          Navigator.pop(context);
        },
        icon: Icon(Icons.arrow_back,color: Colors.orangeAccent),
      ),
    );
  }
}
