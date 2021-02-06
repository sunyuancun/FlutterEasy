import 'package:flutter/widgets.dart';
import 'package:flutter_lib/flutter_lib.dart';
import 'package:flutter_lib/src/event/event_center.dart';

RouteObserver<PageRoute> routeObserver = FlutterRouteObserver<PageRoute>();

class FlutterRouteObserver<R extends Route<dynamic>> extends RouteObserver<R> {
  @override
  void didPush(Route route, Route previousRoute) {
    super.didPush(route, previousRoute);
    // eventCenter.emit(route);
    Logger.print("--didPush--${route.settings.name}");
  }

  @override
  void didPop(Route route, Route previousRoute) {
    super.didPop(route, previousRoute);
    // eventCenter.emit(previousRoute);
    Logger.print("--didPop--${previousRoute.settings.name}");
  }
}
