import 'package:digigarson_demo_design/views/signup.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';

class appInfoPage3 extends StatelessWidget {
  const appInfoPage3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children:[
          Container(
            height: height * 0.85,
            width: width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: const AssetImage('assets/images/start3.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: height * 0.25,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(39.0),
                  topRight: Radius.circular(39.0),
                ),
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
              child: Column(
                children: [
                  Center(
                    child: Text(
                      'Order & Pay Meal',
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 31,
                        color: const Color(0xe5000000),
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Text(
                    'You can order the food you want and pay immediately',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 25,
                      color: const Color(0x80000000),
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius:
                      BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                      color: const Color(0xff707070),
                      border:
                      Border.all(width: 1.0, color: const Color(0xff707070)),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius:
                      BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                      color: const Color(0xff707070),
                      border:
                      Border.all(width: 1.0, color: const Color(0xff707070)),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius:
                      BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                      color: const Color(0xfffbaf03),
                      border:
                      Border.all(width: 1.0, color: const Color(0xff707070)),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      color: const Color(0xfffbaf03),
                      border:
                      Border.all(width: 1.0, color: const Color(0xff707070)),
                    ),
                  ),
                  GestureDetector(
                    child: Text(
                      'Başla',
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 15,
                        color: const Color(0xff000000),
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignUp()));
                    },
                  ),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
