import 'package:flutter/material.dart';

class AddNewAddressScreen extends StatefulWidget {
  @override
  _AddNewAddressScreenState createState() => _AddNewAddressScreenState();
}

class _AddNewAddressScreenState extends State<AddNewAddressScreen> {
  TextEditingController titleController = TextEditingController();
  TextEditingController streetController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController zipcodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: buildListView(context),
    );
  }

  ListView buildListView(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: 70.0,
          width: 200.0,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 20.0),
            child: Text(
              "Add New Address",
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.grey[700],
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Container(
            child: TextField(
              controller: titleController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Title',
              ),
            ),
          ),
        ),
        SizedBox(height: 5.0,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Container(
            child: TextField(
              controller: streetController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Street Address',
              ),
            ),
          ),
        ),
        SizedBox(height: 5.0,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Container(
            child: TextField(
              controller: cityController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'City',
              ),
            ),
          ),
        ),
        SizedBox(height: 5.0,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Container(
            child: TextField(
              controller: zipcodeController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Zipcode',
              ),
            ),
          ),
        ),
        SizedBox(height: 25.0,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: TextButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20),
              backgroundColor: Colors.orangeAccent,
            ),
            onPressed: (){
              Navigator.pop(context);
              //Navigator.push(context, MaterialPageRoute(builder: (context)=>Pro()));
            },
            child:Text('Save',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 25,
              ),
            ),
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