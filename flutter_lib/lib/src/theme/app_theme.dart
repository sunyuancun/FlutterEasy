import 'package:flutter/material.dart';
import 'package:flutter_lib/flutter_lib.dart';
import 'values.dart';

const String Light = "Light";
const String Dark = "Dark";
enum ThemeModel { Light, Dark }

class AppTheme {
  static var _backgroundColorWhiteFF = {Light: Values.c_white_ff, Dark: Values.c_white_ff_d};
  static var _backgroundColorGreyF5 = {Light: Values.c_grey_f5, Dark: Values.c_grey_f5_d};
  static var _dividerColorGreyEA = {Light: Values.c_grey_ea, Dark: Values.c_grey_ea_d};
  static var _fontColorBlack33 = {Light: Values.c_black_33, Dark: Values.c_black_33_d};
  static var _fontColorWhiteFF = {Light: Values.c_white_ff, Dark: Values.c_white_ff_d};

  static ThemeData getTheme({ThemeModel themeModel}) {
    String model = Light;
    switch (themeModel) {
      case ThemeModel.Light:
        model = Light;
        break;

      case ThemeModel.Dark:
        model = Dark;
        break;
    }

    return ThemeData(

        ///背景色 白
        backgroundColor: _backgroundColorWhiteFF[model],

        ///背景色 灰
        scaffoldBackgroundColor: _backgroundColorGreyF5[model],

        ///分割线颜色
        dividerColor: _dividerColorGreyEA[model],

        ///字体色
        primaryColor: _fontColorBlack33[model],

        ///字体色
        primaryColorLight: _fontColorWhiteFF[model]);
  }
}
