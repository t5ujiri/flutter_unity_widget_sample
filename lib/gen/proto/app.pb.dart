//
//  Generated code. Do not modify.
//  source: app.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class PAppState extends $pb.GeneratedMessage {
  factory PAppState({
    $core.int? count,
    $core.bool? canJump,
  }) {
    final $result = create();
    if (count != null) {
      $result.count = count;
    }
    if (canJump != null) {
      $result.canJump = canJump;
    }
    return $result;
  }
  PAppState._() : super();
  factory PAppState.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PAppState.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PAppState', package: const $pb.PackageName(_omitMessageNames ? '' : 'flutter_unity_widget_sample'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'count', $pb.PbFieldType.O3)
    ..aOB(2, _omitFieldNames ? '' : 'canJump')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PAppState clone() => PAppState()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PAppState copyWith(void Function(PAppState) updates) => super.copyWith((message) => updates(message as PAppState)) as PAppState;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PAppState create() => PAppState._();
  PAppState createEmptyInstance() => create();
  static $pb.PbList<PAppState> createRepeated() => $pb.PbList<PAppState>();
  @$core.pragma('dart2js:noInline')
  static PAppState getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PAppState>(create);
  static PAppState? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get count => $_getIZ(0);
  @$pb.TagNumber(1)
  set count($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCount() => $_has(0);
  @$pb.TagNumber(1)
  void clearCount() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get canJump => $_getBF(1);
  @$pb.TagNumber(2)
  set canJump($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCanJump() => $_has(1);
  @$pb.TagNumber(2)
  void clearCanJump() => clearField(2);
}

class PAppAction_Jump extends $pb.GeneratedMessage {
  factory PAppAction_Jump() => create();
  PAppAction_Jump._() : super();
  factory PAppAction_Jump.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PAppAction_Jump.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PAppAction.Jump', package: const $pb.PackageName(_omitMessageNames ? '' : 'flutter_unity_widget_sample'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PAppAction_Jump clone() => PAppAction_Jump()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PAppAction_Jump copyWith(void Function(PAppAction_Jump) updates) => super.copyWith((message) => updates(message as PAppAction_Jump)) as PAppAction_Jump;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PAppAction_Jump create() => PAppAction_Jump._();
  PAppAction_Jump createEmptyInstance() => create();
  static $pb.PbList<PAppAction_Jump> createRepeated() => $pb.PbList<PAppAction_Jump>();
  @$core.pragma('dart2js:noInline')
  static PAppAction_Jump getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PAppAction_Jump>(create);
  static PAppAction_Jump? _defaultInstance;
}

class PAppAction_SetCanJump extends $pb.GeneratedMessage {
  factory PAppAction_SetCanJump({
    $core.bool? canJump,
  }) {
    final $result = create();
    if (canJump != null) {
      $result.canJump = canJump;
    }
    return $result;
  }
  PAppAction_SetCanJump._() : super();
  factory PAppAction_SetCanJump.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PAppAction_SetCanJump.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PAppAction.SetCanJump', package: const $pb.PackageName(_omitMessageNames ? '' : 'flutter_unity_widget_sample'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'canJump')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PAppAction_SetCanJump clone() => PAppAction_SetCanJump()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PAppAction_SetCanJump copyWith(void Function(PAppAction_SetCanJump) updates) => super.copyWith((message) => updates(message as PAppAction_SetCanJump)) as PAppAction_SetCanJump;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PAppAction_SetCanJump create() => PAppAction_SetCanJump._();
  PAppAction_SetCanJump createEmptyInstance() => create();
  static $pb.PbList<PAppAction_SetCanJump> createRepeated() => $pb.PbList<PAppAction_SetCanJump>();
  @$core.pragma('dart2js:noInline')
  static PAppAction_SetCanJump getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PAppAction_SetCanJump>(create);
  static PAppAction_SetCanJump? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get canJump => $_getBF(0);
  @$pb.TagNumber(1)
  set canJump($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCanJump() => $_has(0);
  @$pb.TagNumber(1)
  void clearCanJump() => clearField(1);
}

class PAppAction_Reset extends $pb.GeneratedMessage {
  factory PAppAction_Reset() => create();
  PAppAction_Reset._() : super();
  factory PAppAction_Reset.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PAppAction_Reset.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PAppAction.Reset', package: const $pb.PackageName(_omitMessageNames ? '' : 'flutter_unity_widget_sample'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PAppAction_Reset clone() => PAppAction_Reset()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PAppAction_Reset copyWith(void Function(PAppAction_Reset) updates) => super.copyWith((message) => updates(message as PAppAction_Reset)) as PAppAction_Reset;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PAppAction_Reset create() => PAppAction_Reset._();
  PAppAction_Reset createEmptyInstance() => create();
  static $pb.PbList<PAppAction_Reset> createRepeated() => $pb.PbList<PAppAction_Reset>();
  @$core.pragma('dart2js:noInline')
  static PAppAction_Reset getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PAppAction_Reset>(create);
  static PAppAction_Reset? _defaultInstance;
}

enum PAppAction_Action {
  jump, 
  setCanJump, 
  reset, 
  notSet
}

class PAppAction extends $pb.GeneratedMessage {
  factory PAppAction({
    PAppAction_Jump? jump,
    PAppAction_SetCanJump? setCanJump,
    PAppAction_Reset? reset,
  }) {
    final $result = create();
    if (jump != null) {
      $result.jump = jump;
    }
    if (setCanJump != null) {
      $result.setCanJump = setCanJump;
    }
    if (reset != null) {
      $result.reset = reset;
    }
    return $result;
  }
  PAppAction._() : super();
  factory PAppAction.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PAppAction.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, PAppAction_Action> _PAppAction_ActionByTag = {
    1 : PAppAction_Action.jump,
    2 : PAppAction_Action.setCanJump,
    3 : PAppAction_Action.reset,
    0 : PAppAction_Action.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PAppAction', package: const $pb.PackageName(_omitMessageNames ? '' : 'flutter_unity_widget_sample'), createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..aOM<PAppAction_Jump>(1, _omitFieldNames ? '' : 'jump', subBuilder: PAppAction_Jump.create)
    ..aOM<PAppAction_SetCanJump>(2, _omitFieldNames ? '' : 'setCanJump', subBuilder: PAppAction_SetCanJump.create)
    ..aOM<PAppAction_Reset>(3, _omitFieldNames ? '' : 'reset', subBuilder: PAppAction_Reset.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PAppAction clone() => PAppAction()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PAppAction copyWith(void Function(PAppAction) updates) => super.copyWith((message) => updates(message as PAppAction)) as PAppAction;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PAppAction create() => PAppAction._();
  PAppAction createEmptyInstance() => create();
  static $pb.PbList<PAppAction> createRepeated() => $pb.PbList<PAppAction>();
  @$core.pragma('dart2js:noInline')
  static PAppAction getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PAppAction>(create);
  static PAppAction? _defaultInstance;

  PAppAction_Action whichAction() => _PAppAction_ActionByTag[$_whichOneof(0)]!;
  void clearAction() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  PAppAction_Jump get jump => $_getN(0);
  @$pb.TagNumber(1)
  set jump(PAppAction_Jump v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasJump() => $_has(0);
  @$pb.TagNumber(1)
  void clearJump() => clearField(1);
  @$pb.TagNumber(1)
  PAppAction_Jump ensureJump() => $_ensure(0);

  @$pb.TagNumber(2)
  PAppAction_SetCanJump get setCanJump => $_getN(1);
  @$pb.TagNumber(2)
  set setCanJump(PAppAction_SetCanJump v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSetCanJump() => $_has(1);
  @$pb.TagNumber(2)
  void clearSetCanJump() => clearField(2);
  @$pb.TagNumber(2)
  PAppAction_SetCanJump ensureSetCanJump() => $_ensure(1);

  @$pb.TagNumber(3)
  PAppAction_Reset get reset => $_getN(2);
  @$pb.TagNumber(3)
  set reset(PAppAction_Reset v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasReset() => $_has(2);
  @$pb.TagNumber(3)
  void clearReset() => clearField(3);
  @$pb.TagNumber(3)
  PAppAction_Reset ensureReset() => $_ensure(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
