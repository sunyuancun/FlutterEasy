import 'package:flutter/material.dart';
import 'package:flutter_lib/flutter_lib.dart';
import 'business/home_page.dart';
import 'common/app_config.dart';

void main() {
  AppConfig.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.getTheme(themeModel: ThemeModel.Light),
      darkTheme: AppTheme.getTheme(themeModel: ThemeModel.Dark),
      home: HomePage(),
    );
  }
}

class AppInfoProvider extends InheritedWidget {
  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;
}
