import 'package:flutter/material.dart';
import 'package:flutter_lib/flutter_lib.dart';

class HomeDrawerWidget extends StatefulWidget {
  @override
  _HomeDrawerWidgetState createState() => _HomeDrawerWidgetState();
}

class _HomeDrawerWidgetState extends State<HomeDrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: ScreenAdapt.px(150),
    );
  }
}
