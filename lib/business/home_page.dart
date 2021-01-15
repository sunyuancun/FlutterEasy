import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lib/flutter_lib.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Logger.print("----screenW-----${ScreenAdapt.screenW()}");
    Logger.print("----screenH----${ScreenAdapt.screenH()}");
    Logger.print("----padTopH-----${ScreenAdapt.padTopH()}");
    Logger.print("----padBotH-----${ScreenAdapt.padBotH()}");

    Logger.print("----100-----${ScreenAdapt.px(100)}");
    return Scaffold(body: Row(
      children: [
        Container(width: ScreenAdapt.px(100),height: ScreenAdapt.px(100),color: Colors.red,),
        Container(width: ScreenAdapt.px(100),height: ScreenAdapt.px(100),color: Colors.blue,),
        Container(width: ScreenAdapt.px(100),height: ScreenAdapt.px(100),color: Colors.yellow,),
      ],
    ));
  }
}
