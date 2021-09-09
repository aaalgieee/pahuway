/*
Author: Al Gabriel
Date: 09-Sept-2021
AppName: Pahuway
*/

import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'dart:ui';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Relax(),
));

class Relax extends StatefulWidget {
  @override
  _RelaxState createState() => _RelaxState();
}

class _RelaxState extends State<Relax> {
  double percent = 0;
  static int TimeInMinut = 25;
  int TimeInSec = TimeInMinut * 60;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Color(0xff1542bf), Color(0xff51a8ff)],
                      begin: FractionalOffset(0.5, 1))),
              width: double.infinity,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(top: 25.0),
                        child: Text("Pahuway",
                            style: TextStyle(
                                color: Colors.white, fontSize: 40.0))),
                    Expanded(
                      child: CircularPercentIndicator(
                          percent: percent,
                          animation: true,
                          animateFromLastPercent: true,
                          radius: 250.0,
                          lineWidth: 20.0,
                          progressColor: Colors.white,
                          center: Text("$TimeInMinut",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 80.0
                              )
                          )
                      ),
                    )
                  ]
              )
          )
      ),
    );
  }
}
