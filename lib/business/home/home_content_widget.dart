import 'package:flutter/material.dart';
import 'package:flutter_easy/common/app_routers.dart';
import 'package:flutter_lib/flutter_lib.dart';

class HomeContentWidget extends StatefulWidget {
  @override
  _HomeContentWidgetState createState() => _HomeContentWidgetState();
}

class _HomeContentWidgetState extends State<HomeContentWidget> with PageRouter {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        color: Colors.white,
        child: Center(
          child: Text("push"),
        ),
      ),
      onTap: () {
        push(RouterNames.language_setting_page, arguments: {"Hello": "Language"}).then((value) {
          Logger.print("$value");
        });
      },
    );
  }
}
