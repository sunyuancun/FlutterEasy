import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

///页面跳转工具类
mixin PageRouter {
  var pageBridgeManager = PageBridgeManager();

  Future getInitArgs(BuildContext context) {
    return pageBridgeManager.getInitArgs(context);
  }

  Future push(String route, {Object arguments}) {
    return pageBridgeManager.push(route, arguments: arguments);
  }

  Future pop({Object data}) {
    return pageBridgeManager.pop(data: data);
  }

  Future popAndPushNamed(String route, {Object arguments}) {
    return pageBridgeManager.popAndPushNamed(route, arguments: arguments);
  }

  void popUntil(String router) {
    pageBridgeManager.popUntil(router);
  }

  void closeAPP() {
    pageBridgeManager.exitAPP();
  }
}

///全局路由Navigator
final GlobalNavigator = GlobalKey<NavigatorState>();

///页面跳转实现类
class PageBridgeManager {
  factory PageBridgeManager() => _getInstance();

  static PageBridgeManager get instance => _getInstance();

  static PageBridgeManager _instance;

  PageBridgeManager._internal();

  static PageBridgeManager _getInstance() {
    if (_instance == null) {
      _instance = new PageBridgeManager._internal();
    }
    return _instance;
  }

  NavigatorState get globalNav {
    return GlobalNavigator.currentState;
  }

  Future getInitArgs(BuildContext context) {
    return Future.value(ModalRoute.of(context).settings.arguments);
  }

  Future push(String router, {Object arguments}) {
    return globalNav.pushNamed(router, arguments: arguments);
  }

  Future popAndPushNamed(String router, {Object arguments}) {
    return globalNav.popAndPushNamed(router, arguments: arguments);
  }

  void popUntil(String router) {
    return globalNav.popUntil(ModalRoute.withName(router));
  }

  Future pop({Object data}) {
    return globalNav.maybePop(data).then((value) {
      if (value == null || !value) {
        SystemNavigator.pop(animated: true);
        exit(0);
      }

      return value;
    });
  }

  void exitAPP() {
    exit(0);
  }
}
