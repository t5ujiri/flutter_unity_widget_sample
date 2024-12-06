import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_unity_widget/flutter_unity_widget.dart';

final unityWidgetControllerProvider =
    StateProvider.autoDispose<UnityWidgetController?>((ref) => null);
