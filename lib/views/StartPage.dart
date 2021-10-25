import 'dart:async';

import 'package:digigarson_demo_design/views/settings_info.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';

import '../appInfoPage1.dart';

class StartPages extends StatefulWidget  {
  @override
  State<StatefulWidget> createState() => new StartPagess();
}

class StartPagess extends State<StartPages> {
  late Timer _timer;

  StartPagess() {
    _timer = new Timer(const Duration(milliseconds: 1500), () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => XDGooglePixel44XL1()));
    });
  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffbaf03),
      body: Center(
            child: Text(
              'DİGİGARSON',
              style: TextStyle(
                fontFamily: 'Snap ITC',
                fontSize: 45,
                color: const Color(0xffffffff),
              ),
              textAlign: TextAlign.left,
            ),
          ),
    );
  }
}


