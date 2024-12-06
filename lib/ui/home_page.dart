import 'dart:convert';

import 'package:app/data/provider/unity_controller_provider.dart';
import 'package:app/gen/proto/app.pb.dart';
import 'package:app/ui/home_controller.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_unity_widget/flutter_unity_widget.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class CounterPage extends HookConsumerWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count =
        ref.watch(homeControllerProvider.select((value) => value.count));
    final canJump =
        ref.watch(homeControllerProvider.select((value) => value.canJump));

    ref.watch(unityWidgetControllerProvider);

    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {
              ref.read(homeControllerProvider.notifier).reset();
            },
            child: const Text('Reset'),
          ),
        ],
      ),
      body: Stack(
        children: [
          Stack(
            children: [
              UnityWidget(
                onUnityCreated: (controller) async {
                  ref.read(unityWidgetControllerProvider.notifier).state =
                      controller;
                  controller.resume();
                },
                onUnityMessage: (message) {
                  var state = PAppState.fromBuffer(base64.decode(message));
                  ref.read(homeControllerProvider.notifier).syncState(state);
                },
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Text('Count: $count'),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: canJump ? Colors.blue : Colors.grey,
        onPressed: canJump
            ? () {
                ref.read(homeControllerProvider.notifier).jump();
              }
            : null,
        child: const Icon(Icons.add),
      ),
    );
  }
}
