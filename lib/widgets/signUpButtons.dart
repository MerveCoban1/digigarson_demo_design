import 'package:digigarson_demo_design/views/signin.dart';
import 'package:flutter/material.dart';

class SignUpButton extends StatelessWidget {
  var image;
  var color;
  var text;

  SignUpButton(this.image, this.color, this.text);
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 40.0, right: 30.0),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 18.0),
                child: Stack(
                  children: [
                    FlatButton(
                      minWidth: width * 0.70,
                      height: height * 0.06,
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          side: BorderSide(
                              color: color, width: 3, style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(20)),
                      onPressed: () {
                        Navigator.pop(context);
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => SignIn()));
                      },
                      child: Text(
                        text,
                        style: TextStyle(
                          color: color,
                          fontSize: 25.0,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0, left: width * 0.6),
                      child: Container(
                        height: height * 0.03,
                        width: width * 0.03,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(image), fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(10.0)),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
