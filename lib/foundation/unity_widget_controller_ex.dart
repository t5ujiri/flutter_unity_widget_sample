import 'dart:convert';

import 'package:app/gen/proto/app.pb.dart';
import 'package:flutter_unity_widget/flutter_unity_widget.dart';

extension UnityWidgetControllerEx on UnityWidgetController {
  void sendAction(PAppAction action) {
    postMessage("UnityMessageManager", "OnMessage",
        base64Encode(action.writeToBuffer()));
  }
}
