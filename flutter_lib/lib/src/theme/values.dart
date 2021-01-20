import 'dart:ui';
import 'package:flutter/material.dart';

class Values {
  BuildContext _context;

  static Values _instance;

  static Values of(BuildContext context) {
    if (_instance == null) {
      _instance = Values();
    }
    _instance._context = context;
    return _instance;
  }

  //颜色 浅色模式
  static const Color c_black_33 = Color(0xff333333);
  static const Color c_black_44 = Color(0xff444444);
  static const Color c_black_66 = Color(0xff666666);
  static const Color c_black_99 = Color(0xff999999);

  static const Color c_grey_f5 = Color(0xffF5F5F5);
  static const Color c_grey_ea = Color(0xffeaeaea);

  static const Color c_white_ff = Color(0xffffffff);

  //颜色 深色模式
  static const Color c_black_33_d = Color(0xCCffffff);
  static const Color c_black_44_d = Color(0xCCffffff);
  static const Color c_black_66_d = Color(0x66ffffff);
  static const Color c_black_99_d = Color(0x99ffffff);

  static const Color c_grey_f5_d = Color(0xff1F2025);
  static const Color c_grey_ea_d = Color(0x26ffffff);

  static const Color c_white_ff_d = Color(0xff333333);

  //尺寸、距离
  static const double d_0_5 = 0.5;
  static const double d_1 = 1;
  static const double d_2 = 2;
  static const double d_5 = 5;
  static const double d_8 = 8;
  static const double d_10 = 10;
  static const double d_11 = 11;
  static const double d_12 = 12;
  static const double d_15 = 15;
  static const double d_16 = 16;
  static const double d_18 = 18;
  static const double d_20 = 20;
  static const double d_22 = 22;
  static const double d_24 = 24;
  static const double d_26 = 26;
  static const double d_28 = 28;
  static const double d_30 = 30;
  static const double d_36 = 36;
  static const double d_40 = 40;
  static const double d_44 = 44;
  static const double d_45 = 45;
  static const double d_49 = 49;
  static const double d_50 = 50;
  static const double d_52 = 52;
  static const double d_60 = 60;
  static const double d_70 = 70;
  static const double d_80 = 80;
  static const double d_88 = 88;
  static const double d_97 = 97;
  static const double d_100 = 100;
  static const double d_135 = 135;
  static const double d_150 = 150;
  static const double d_360 = 360;

  //字体
  static const double s_text_1 = 1;
  static const double s_text_2 = 2;
  static const double s_text_3 = 3;
  static const double s_text_4 = 4;
  static const double s_text_5 = 5;
  static const double s_text_6 = 6;
  static const double s_text_7 = 7;
  static const double s_text_8 = 8;
  static const double s_text_9 = 9;
  static const double s_text_10 = 10;
  static const double s_text_11 = 11;
  static const double s_text_12 = 12;
  static const double s_text_13 = 13;
  static const double s_text_14 = 14;
  static const double s_text_15 = 15;
  static const double s_text_16 = 16;
  static const double s_text_17 = 17;
  static const double s_text_18 = 18;
  static const double s_text_20 = 20;
  static const double s_text_30 = 30;
  static const double s_text_40 = 40;
  static const double s_text_50 = 50;

  static const FontWeight font_Weight_normal = FontWeight.w400;
  static const FontWeight font_Weight_medium = FontWeight.w500;

  ///================================================================
  ///以下为跟随主题变化的色值
  ///业务模块应从这里取值

  /// 字体色
  Color get c_front_black_33 {
    return Theme.of(_context).primaryColor;
  }

  /// 字体色
  Color get c_front_white_ff {
    return Theme.of(_context).primaryColorLight;
  }

  /// 分割线
  Color get c_divider {
    return Theme.of(_context).dividerColor;
  }

  ///背景色
  Color get c_background_grey_f5 {
    return Theme.of(_context).scaffoldBackgroundColor;
  }
  ///背景色
  Color get c_background_white_ff {
    return Theme.of(_context).backgroundColor;
  }
}
