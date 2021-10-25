import 'package:digigarson_demo_design/appInfoPage2.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';

class XDGooglePixel44XL1 extends StatefulWidget {
  const XDGooglePixel44XL1({Key? key}) : super(key: key);

  @override
  _XDGooglePixel44XL1 createState() => _XDGooglePixel44XL1();
}

class _XDGooglePixel44XL1 extends State<XDGooglePixel44XL1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: -20.0, end: -19.0),
            Pin(size: 660.0, start: 0.0),
            child:
                // Adobe XD layer: '1' (shape)
                Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/start1.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 246.0, end: 0.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(39.0),
                  topRight: Radius.circular(39.0),
                ),
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 31.0, end: 31.0),
            Pin(size: 35.0, middle: 0.7904),
            child: Text(
              'Yemek Sipariş Et & Öde',
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
          Pinned.fromPins(
            Pin(start: 24.0, end: 20.0),
            Pin(size: 57.0, end: 89.0),
            child: Text(
              'İstediğiniz yemeği sipariş edip \nhemen ödeyebilirsiniz',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 25,
                color: const Color(0x80000000),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 12.0, middle: 0.5),
            Pin(size: 13.0, end: 40.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0xff707070),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 12.0, middle: 0.45),
            Pin(size: 13.0, end: 40.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0xfffbaf03),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 12.0, middle: 0.55),
            Pin(size: 13.0, end: 40.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0xff707070),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 62.0, end: 20.0),
            Pin(size: 28.0, end: 32.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                color: const Color(0xfffbaf03),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 27.0, end: 37.0),
            Pin(size: 17.0, end: 37.0),
            child: GestureDetector(
                child: Text(
                  'İleri',
                  style: TextStyle(
                    fontFamily: 'Arial',
                    fontSize: 15,
                    color: const Color(0xff000000),
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.left,
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => appInfoPage2()));
                }),
          ),
        ],
      ),
    );
  }
}
