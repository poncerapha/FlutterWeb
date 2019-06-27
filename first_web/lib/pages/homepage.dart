import 'dart:web_gl';

import 'package:flutter_web/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var ResponsiveLayout;
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                height: 50.0,
                padding: EdgeInsets.only(top: 15.0, left: 50.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Raphael Ponce",
                      style: TextStyle(
                          fontFamily: "Montserrat",
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Text("Software Engineer")
                  ],
                ),
              ),
              ResponsiveLayout.isSmallScreen(context)
                  ? SizedBox(
                      width: 350.0,
                    )
                  : SizedBox(
                      width: MediaQuery.of(context).size.width / 2 - 350.0,
                    )
            ],
          )
        ],
      ),
    );
  }
}
