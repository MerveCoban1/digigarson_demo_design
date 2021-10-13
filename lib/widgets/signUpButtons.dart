import 'package:digigarson_demo_design/views/signin.dart';
import 'package:flutter/material.dart';

class SignUpButton extends StatelessWidget {
  var image;
  var color;
  var text;

  SignUpButton(this.image, this.color, this.text);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 40.0,
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 18.0),
                child: Stack(
                  children: [
                    FlatButton(
                      minWidth: 320.0,
                      height: 50.0,
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
                      padding: const EdgeInsets.only(
                          right: 40.0, top: 10.0, left: 280.0),
                      child: Container(
                        height: 30.0,
                        width: 30.0,
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
