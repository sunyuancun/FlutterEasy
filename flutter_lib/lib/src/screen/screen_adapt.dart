import 'package:flutter/material.dart';
import 'dart:ui';

class ScreenAdapt {
  static MediaQueryData mediaQuery = MediaQueryData.fromWindow(window);
  static double _width = mediaQuery.size.width;
  static double _height = mediaQuery.size.height;
  static double _topbarH = mediaQuery.padding.top;
  static double _botbarH = mediaQuery.padding.bottom;
  static double _pixelRatio = mediaQuery.devicePixelRatio;
  static var _ratio;

  static init({int uiWidth}) {
    int realUiWidth = uiWidth is int ? uiWidth : 375;
    _ratio = _width / realUiWidth;
  }

  static px(number) {
    return number * _ratio;
  }

  static onepx() {
    return 1 / _pixelRatio;
  }

  static screenW() {
    return _width;
  }

  static screenH() {
    return _height;
  }

  static padTopH() {
    return _topbarH;
  }

  static padBotH() {
    return _botbarH;
  }
}
