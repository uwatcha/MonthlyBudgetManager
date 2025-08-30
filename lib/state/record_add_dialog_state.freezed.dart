// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'record_add_dialog_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RecordAddDialogState implements DiagnosticableTreeMixin {
  bool get isExpenditureMode; // 支出と収入のどちらの入力モードになっているか．支出でtrue
  String? get content; // 購入したものの名前 or 収入の名目
  int? get amount;

  /// Create a copy of RecordAddDialogState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RecordAddDialogStateCopyWith<RecordAddDialogState> get copyWith =>
      _$RecordAddDialogStateCopyWithImpl<RecordAddDialogState>(
          this as RecordAddDialogState, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'RecordAddDialogState'))
      ..add(DiagnosticsProperty('isExpenditureMode', isExpenditureMode))
      ..add(DiagnosticsProperty('content', content))
      ..add(DiagnosticsProperty('amount', amount));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RecordAddDialogState &&
            (identical(other.isExpenditureMode, isExpenditureMode) ||
                other.isExpenditureMode == isExpenditureMode) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isExpenditureMode, content, amount);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecordAddDialogState(isExpenditureMode: $isExpenditureMode, content: $content, amount: $amount)';
  }
}

/// @nodoc
abstract mixin class $RecordAddDialogStateCopyWith<$Res> {
  factory $RecordAddDialogStateCopyWith(RecordAddDialogState value,
          $Res Function(RecordAddDialogState) _then) =
      _$RecordAddDialogStateCopyWithImpl;
  @useResult
  $Res call({bool isExpenditureMode, String? content, int? amount});
}

/// @nodoc
class _$RecordAddDialogStateCopyWithImpl<$Res>
    implements $RecordAddDialogStateCopyWith<$Res> {
  _$RecordAddDialogStateCopyWithImpl(this._self, this._then);

  final RecordAddDialogState _self;
  final $Res Function(RecordAddDialogState) _then;

  /// Create a copy of RecordAddDialogState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isExpenditureMode = null,
    Object? content = freezed,
    Object? amount = freezed,
  }) {
    return _then(_self.copyWith(
      isExpenditureMode: null == isExpenditureMode
          ? _self.isExpenditureMode
          : isExpenditureMode // ignore: cast_nullable_to_non_nullable
              as bool,
      content: freezed == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _RecordAddDialogState
    with DiagnosticableTreeMixin
    implements RecordAddDialogState {
  const _RecordAddDialogState(
      {this.isExpenditureMode = true, this.content, this.amount});

  @override
  @JsonKey()
  final bool isExpenditureMode;
// 支出と収入のどちらの入力モードになっているか．支出でtrue
  @override
  final String? content;
// 購入したものの名前 or 収入の名目
  @override
  final int? amount;

  /// Create a copy of RecordAddDialogState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RecordAddDialogStateCopyWith<_RecordAddDialogState> get copyWith =>
      __$RecordAddDialogStateCopyWithImpl<_RecordAddDialogState>(
          this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'RecordAddDialogState'))
      ..add(DiagnosticsProperty('isExpenditureMode', isExpenditureMode))
      ..add(DiagnosticsProperty('content', content))
      ..add(DiagnosticsProperty('amount', amount));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RecordAddDialogState &&
            (identical(other.isExpenditureMode, isExpenditureMode) ||
                other.isExpenditureMode == isExpenditureMode) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isExpenditureMode, content, amount);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecordAddDialogState(isExpenditureMode: $isExpenditureMode, content: $content, amount: $amount)';
  }
}

/// @nodoc
abstract mixin class _$RecordAddDialogStateCopyWith<$Res>
    implements $RecordAddDialogStateCopyWith<$Res> {
  factory _$RecordAddDialogStateCopyWith(_RecordAddDialogState value,
          $Res Function(_RecordAddDialogState) _then) =
      __$RecordAddDialogStateCopyWithImpl;
  @override
  @useResult
  $Res call({bool isExpenditureMode, String? content, int? amount});
}

/// @nodoc
class __$RecordAddDialogStateCopyWithImpl<$Res>
    implements _$RecordAddDialogStateCopyWith<$Res> {
  __$RecordAddDialogStateCopyWithImpl(this._self, this._then);

  final _RecordAddDialogState _self;
  final $Res Function(_RecordAddDialogState) _then;

  /// Create a copy of RecordAddDialogState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isExpenditureMode = null,
    Object? content = freezed,
    Object? amount = freezed,
  }) {
    return _then(_RecordAddDialogState(
      isExpenditureMode: null == isExpenditureMode
          ? _self.isExpenditureMode
          : isExpenditureMode // ignore: cast_nullable_to_non_nullable
              as bool,
      content: freezed == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

// dart format on
