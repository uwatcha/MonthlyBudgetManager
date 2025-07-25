// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'record_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RecordModel {
  String get content;
  int get amount;

  /// Create a copy of RecordModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RecordModelCopyWith<RecordModel> get copyWith =>
      _$RecordModelCopyWithImpl<RecordModel>(this as RecordModel, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RecordModel &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, content, amount);

  @override
  String toString() {
    return 'RecordModel(content: $content, amount: $amount)';
  }
}

/// @nodoc
abstract mixin class $RecordModelCopyWith<$Res> {
  factory $RecordModelCopyWith(
          RecordModel value, $Res Function(RecordModel) _then) =
      _$RecordModelCopyWithImpl;
  @useResult
  $Res call({String content, int amount});
}

/// @nodoc
class _$RecordModelCopyWithImpl<$Res> implements $RecordModelCopyWith<$Res> {
  _$RecordModelCopyWithImpl(this._self, this._then);

  final RecordModel _self;
  final $Res Function(RecordModel) _then;

  /// Create a copy of RecordModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? amount = null,
  }) {
    return _then(_self.copyWith(
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _RecordModel implements RecordModel {
  const _RecordModel({required this.content, required this.amount});

  @override
  final String content;
  @override
  final int amount;

  /// Create a copy of RecordModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RecordModelCopyWith<_RecordModel> get copyWith =>
      __$RecordModelCopyWithImpl<_RecordModel>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RecordModel &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, content, amount);

  @override
  String toString() {
    return 'RecordModel(content: $content, amount: $amount)';
  }
}

/// @nodoc
abstract mixin class _$RecordModelCopyWith<$Res>
    implements $RecordModelCopyWith<$Res> {
  factory _$RecordModelCopyWith(
          _RecordModel value, $Res Function(_RecordModel) _then) =
      __$RecordModelCopyWithImpl;
  @override
  @useResult
  $Res call({String content, int amount});
}

/// @nodoc
class __$RecordModelCopyWithImpl<$Res> implements _$RecordModelCopyWith<$Res> {
  __$RecordModelCopyWithImpl(this._self, this._then);

  final _RecordModel _self;
  final $Res Function(_RecordModel) _then;

  /// Create a copy of RecordModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? content = null,
    Object? amount = null,
  }) {
    return _then(_RecordModel(
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
