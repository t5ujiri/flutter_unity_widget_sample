//
//  Generated code. Do not modify.
//  source: app.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use pAppStateDescriptor instead')
const PAppState$json = {
  '1': 'PAppState',
  '2': [
    {'1': 'count', '3': 1, '4': 1, '5': 5, '10': 'count'},
    {'1': 'can_jump', '3': 2, '4': 1, '5': 8, '10': 'canJump'},
  ],
};

/// Descriptor for `PAppState`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pAppStateDescriptor = $convert.base64Decode(
    'CglQQXBwU3RhdGUSFAoFY291bnQYASABKAVSBWNvdW50EhkKCGNhbl9qdW1wGAIgASgIUgdjYW'
    '5KdW1w');

@$core.Deprecated('Use pAppActionDescriptor instead')
const PAppAction$json = {
  '1': 'PAppAction',
  '2': [
    {'1': 'jump', '3': 1, '4': 1, '5': 11, '6': '.flutter_unity_widget_sample.PAppAction.Jump', '9': 0, '10': 'jump'},
    {'1': 'set_can_jump', '3': 2, '4': 1, '5': 11, '6': '.flutter_unity_widget_sample.PAppAction.SetCanJump', '9': 0, '10': 'setCanJump'},
    {'1': 'reset', '3': 3, '4': 1, '5': 11, '6': '.flutter_unity_widget_sample.PAppAction.Reset', '9': 0, '10': 'reset'},
  ],
  '3': [PAppAction_Jump$json, PAppAction_SetCanJump$json, PAppAction_Reset$json],
  '8': [
    {'1': 'action'},
  ],
};

@$core.Deprecated('Use pAppActionDescriptor instead')
const PAppAction_Jump$json = {
  '1': 'Jump',
};

@$core.Deprecated('Use pAppActionDescriptor instead')
const PAppAction_SetCanJump$json = {
  '1': 'SetCanJump',
  '2': [
    {'1': 'can_jump', '3': 1, '4': 1, '5': 8, '10': 'canJump'},
  ],
};

@$core.Deprecated('Use pAppActionDescriptor instead')
const PAppAction_Reset$json = {
  '1': 'Reset',
};

/// Descriptor for `PAppAction`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pAppActionDescriptor = $convert.base64Decode(
    'CgpQQXBwQWN0aW9uEkIKBGp1bXAYASABKAsyLC5mbHV0dGVyX3VuaXR5X3dpZGdldF9zYW1wbG'
    'UuUEFwcEFjdGlvbi5KdW1wSABSBGp1bXASVgoMc2V0X2Nhbl9qdW1wGAIgASgLMjIuZmx1dHRl'
    'cl91bml0eV93aWRnZXRfc2FtcGxlLlBBcHBBY3Rpb24uU2V0Q2FuSnVtcEgAUgpzZXRDYW5KdW'
    '1wEkUKBXJlc2V0GAMgASgLMi0uZmx1dHRlcl91bml0eV93aWRnZXRfc2FtcGxlLlBBcHBBY3Rp'
    'b24uUmVzZXRIAFIFcmVzZXQaBgoESnVtcBonCgpTZXRDYW5KdW1wEhkKCGNhbl9qdW1wGAEgAS'
    'gIUgdjYW5KdW1wGgcKBVJlc2V0QggKBmFjdGlvbg==');

