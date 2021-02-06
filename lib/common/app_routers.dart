import 'package:flutter/cupertino.dart';
import 'package:flutter_easy/business/home/home_page.dart';
import 'package:flutter_easy/business/language/language_setting_page.dart';

class RouterNames {
  static const String home_page = "home_page";
  static const String language_setting_page = "language_setting_page";
}

Map<String, WidgetBuilder> routers = {
  RouterNames.home_page: (BuildContext context) => HomePage(),
  RouterNames.language_setting_page: (BuildContext context) => LanguageSettingPage(),
};
