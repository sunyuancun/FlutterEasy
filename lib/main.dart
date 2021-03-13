import 'package:flutter/material.dart';
import 'package:flutter_lib/flutter_lib.dart';
import 'common/app_config.dart';
import 'common/app_routers.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  AppConfig.init();
  runApp(MyApp());
}

/// This widget is the root of your application.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Easy',
      routes: routers,
      initialRoute: RouterNames.home_page,
      navigatorKey: GlobalNavigator,
      navigatorObservers: [routeObserver],
      theme: AppTheme.getTheme(themeModel: ThemeModel.Light),
      darkTheme: AppTheme.getTheme(themeModel: ThemeModel.Dark),
    );
  }
}
