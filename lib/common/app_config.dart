import 'package:flutter/services.dart';
import 'package:flutter_lib/flutter_lib.dart';

class AppConfig {
  static Future init() async {
    _screenOrientation();
    await _screenInit();
  }

  ///屏幕适配
  static _screenInit() async {
    ScreenAdapt.init(uiWidth: 375);
  }

  ///橫屏設置
  static _screenOrientation() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft, //只能橫向
      DeviceOrientation.landscapeLeft, //只能橫向
    ]);
  }
}
