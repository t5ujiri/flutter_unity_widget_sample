import 'package:app/data/provider/unity_controller_provider.dart';
import 'package:app/foundation/unity_widget_controller_ex.dart';
import 'package:app/gen/proto/app.pb.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_controller.g.dart';

@riverpod
class HomeController extends _$HomeController {
  @override
  PAppState build() {
    return PAppState(
      count: 0,
      canJump: false,
    );
  }

  void syncState(PAppState value) {
    state = value;
  }

  void jump() {
    ref.read(unityWidgetControllerProvider)?.sendAction(PAppAction(
          jump: PAppAction_Jump(),
        ));
  }

  void reset() {
    ref.read(unityWidgetControllerProvider)?.sendAction(PAppAction(
          reset: PAppAction_Reset(),
        ));
  }
}
