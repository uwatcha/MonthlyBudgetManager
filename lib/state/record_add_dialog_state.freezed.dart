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
  bool get isExpenditureMode;
  RecordModel get record;

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
      ..add(DiagnosticsProperty('record', record));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RecordAddDialogState &&
            (identical(other.isExpenditureMode, isExpenditureMode) ||
                other.isExpenditureMode == isExpenditureMode) &&
            (identical(other.record, record) || other.record == record));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isExpenditureMode, record);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecordAddDialogState(isExpenditureMode: $isExpenditureMode, record: $record)';
  }
}

/// @nodoc
abstract mixin class $RecordAddDialogStateCopyWith<$Res> {
  factory $RecordAddDialogStateCopyWith(RecordAddDialogState value,
          $Res Function(RecordAddDialogState) _then) =
      _$RecordAddDialogStateCopyWithImpl;
  @useResult
  $Res call({bool isExpenditureMode, RecordModel record});

  $RecordModelCopyWith<$Res> get record;
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
    Object? record = null,
  }) {
    return _then(_self.copyWith(
      isExpenditureMode: null == isExpenditureMode
          ? _self.isExpenditureMode
          : isExpenditureMode // ignore: cast_nullable_to_non_nullable
              as bool,
      record: null == record
          ? _self.record
          : record // ignore: cast_nullable_to_non_nullable
              as RecordModel,
    ));
  }

  /// Create a copy of RecordAddDialogState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RecordModelCopyWith<$Res> get record {
    return $RecordModelCopyWith<$Res>(_self.record, (value) {
      return _then(_self.copyWith(record: value));
    });
  }
}

/// @nodoc

class _RecordAddDialogState
    with DiagnosticableTreeMixin
    implements RecordAddDialogState {
  const _RecordAddDialogState(
      {this.isExpenditureMode = true, required this.record});

  @override
  @JsonKey()
  final bool isExpenditureMode;
  @override
  final RecordModel record;

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
      ..add(DiagnosticsProperty('record', record));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RecordAddDialogState &&
            (identical(other.isExpenditureMode, isExpenditureMode) ||
                other.isExpenditureMode == isExpenditureMode) &&
            (identical(other.record, record) || other.record == record));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isExpenditureMode, record);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecordAddDialogState(isExpenditureMode: $isExpenditureMode, record: $record)';
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
  $Res call({bool isExpenditureMode, RecordModel record});

  @override
  $RecordModelCopyWith<$Res> get record;
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
    Object? record = null,
  }) {
    return _then(_RecordAddDialogState(
      isExpenditureMode: null == isExpenditureMode
          ? _self.isExpenditureMode
          : isExpenditureMode // ignore: cast_nullable_to_non_nullable
              as bool,
      record: null == record
          ? _self.record
          : record // ignore: cast_nullable_to_non_nullable
              as RecordModel,
    ));
  }

  /// Create a copy of RecordAddDialogState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RecordModelCopyWith<$Res> get record {
    return $RecordModelCopyWith<$Res>(_self.record, (value) {
      return _then(_self.copyWith(record: value));
    });
  }
}

// dart format on
