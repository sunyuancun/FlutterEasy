import 'package:flutter_lib/flutter_lib.dart';

class AppConfig {
  static Future init() async {
    await _screenInit();
  }

  ///屏幕适配
  static _screenInit() async {
    ScreenAdapt.init(uiWidth: 375);
  }
}
