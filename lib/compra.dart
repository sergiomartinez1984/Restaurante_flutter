import 'package:flutter/material.dart';

import 'info.dart';

class CompraPage extends StatefulWidget {
  @override
  CompraPageState createState() => CompraPageState();
}

class CompraPageState extends State<CompraPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(children: <Widget>[
      Stack(
        children: <Widget>[
          ClipPath(
            clipper: MyClipper(),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CompraPage()),
                );
              },
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Italian Choco Cake",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        Icon(
                          Icons.menu,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  itemCake(),
                ],
              ),
            ),
          )
        ],
      )
    ])));
  }
}
