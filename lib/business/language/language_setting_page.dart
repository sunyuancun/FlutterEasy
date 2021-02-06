import 'package:flutter/material.dart';
import 'package:flutter_lib/flutter_lib.dart';

class LanguageSettingPage extends StatefulWidget {
  @override
  _LanguageSettingPageState createState() => _LanguageSettingPageState();
}

class _LanguageSettingPageState extends State<LanguageSettingPage> with PageRouter {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      getInitArgs(context).then((value) {
        Logger.print("-----:$value");
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        color: Colors.blue,
        child: Center(
          child: Text("Language"),
        ),
      ),
      onTap: () {
        pop(data: {"Hello": "HomePage"});
      },
    );
  }
}
