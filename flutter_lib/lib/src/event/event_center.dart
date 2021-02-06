import 'dart:async';

import 'package:flutter_lib/flutter_lib.dart';


///发送的消息，所有消息都要继承此类
class EventObject {
  dynamic data;

  EventObject({this.data});
}

class EventCenter {
  StreamController _streamController;

  EventCenter() : _streamController = StreamController.broadcast(sync: false);

  EventCenter.customController(StreamController controller) : _streamController = controller;

  StreamSubscription<T> listen<T>(void onData(T event)) {
    if (T == dynamic) {
      return _streamController.stream.listen(onData);
    } else {
      return _streamController.stream.where((event) => event is T).cast<T>().listen(onData);
    }
  }

  emit(dynamic event) {
    _streamController.add(event);
  }
}

var eventCenter = EventCenter();
