import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lib/flutter_lib.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Values.of(context).c_background_white_ff,
        body: Column(
          children: [
            Padding(padding: EdgeInsets.all(20)),
            Text(
              "setting",
              style: TextStyle(color: Values.of(context).c_front_black_33),
            ),
          ],
        ));
  }
}
