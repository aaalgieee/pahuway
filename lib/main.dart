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
                      colors: [Color(0xff1d3461), Color(0xff376996)],
                      begin: FractionalOffset(0.5, 1))),
              width: double.infinity,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(top: 25.0),
                        child: Text("Hello World",
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
                    ),
                    SizedBox(height: 30.0,),
                    Expanded(
                    child: Container(
                    width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(topRight: Radius.circular(30.0),topLeft: Radius.circular(30.0))
                      ),
                      child: Padding(
                      padding: EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
                        child: Column(
                        children: <Widget>[
                          Expanded(
                            child: Row(
                              children:<Widget>[
                                Expanded(
                                  child: Column(
                                    children: <Widget>[
                                      Text(
                                        "Relax Timer",
                                        style: TextStyle(
                                            fontSize: 30.0
                                        ),
                                      ),
                                      SizedBox(height:10.0,),
                                      Text(
                                          "5",
                                          style: TextStyle(
                                              fontSize: 80.0
                                          )
                                      )
                                    ]
                                  )
                                ),
                                Expanded(
                                    child: Column(
                                        children: <Widget>[
                                          Text(
                                            "Relax Timer",
                                            style: TextStyle(
                                                fontSize: 30.0
                                            ),
                                          ),
                                          SizedBox(height:10.0,),
                                          Text(
                                              "5",
                                              style: TextStyle(
                                                  fontSize: 80.0
                                              )
                                          )
                                        ]
                                    )
                                ),
                              ]
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 28.0),
                            child: RaisedButton(
                              color: Colors.blue,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100.0)
                              ), onPressed: () {  },
                              child: Padding(
                                padding:
                              )
                            )
                          )
                        ]
                        ),
                      )
                    )
                    ),
                  ]
              )
          )
      ),
    );
  }
}
