// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'money_line_chart_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MoneyLineChartState {
  List<FlSpot> get lineChartSpots;

  /// Create a copy of MoneyLineChartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MoneyLineChartStateCopyWith<MoneyLineChartState> get copyWith =>
      _$MoneyLineChartStateCopyWithImpl<MoneyLineChartState>(
          this as MoneyLineChartState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MoneyLineChartState &&
            const DeepCollectionEquality()
                .equals(other.lineChartSpots, lineChartSpots));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(lineChartSpots));

  @override
  String toString() {
    return 'MoneyLineChartState(lineChartSpots: $lineChartSpots)';
  }
}

/// @nodoc
abstract mixin class $MoneyLineChartStateCopyWith<$Res> {
  factory $MoneyLineChartStateCopyWith(
          MoneyLineChartState value, $Res Function(MoneyLineChartState) _then) =
      _$MoneyLineChartStateCopyWithImpl;
  @useResult
  $Res call({List<FlSpot> lineChartSpots});
}

/// @nodoc
class _$MoneyLineChartStateCopyWithImpl<$Res>
    implements $MoneyLineChartStateCopyWith<$Res> {
  _$MoneyLineChartStateCopyWithImpl(this._self, this._then);

  final MoneyLineChartState _self;
  final $Res Function(MoneyLineChartState) _then;

  /// Create a copy of MoneyLineChartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lineChartSpots = null,
  }) {
    return _then(_self.copyWith(
      lineChartSpots: null == lineChartSpots
          ? _self.lineChartSpots
          : lineChartSpots // ignore: cast_nullable_to_non_nullable
              as List<FlSpot>,
    ));
  }
}

/// @nodoc

class _MoneyLineChartState implements MoneyLineChartState {
  const _MoneyLineChartState({final List<FlSpot> lineChartSpots = const []})
      : _lineChartSpots = lineChartSpots;

  final List<FlSpot> _lineChartSpots;
  @override
  @JsonKey()
  List<FlSpot> get lineChartSpots {
    if (_lineChartSpots is EqualUnmodifiableListView) return _lineChartSpots;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lineChartSpots);
  }

  /// Create a copy of MoneyLineChartState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MoneyLineChartStateCopyWith<_MoneyLineChartState> get copyWith =>
      __$MoneyLineChartStateCopyWithImpl<_MoneyLineChartState>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MoneyLineChartState &&
            const DeepCollectionEquality()
                .equals(other._lineChartSpots, _lineChartSpots));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_lineChartSpots));

  @override
  String toString() {
    return 'MoneyLineChartState(lineChartSpots: $lineChartSpots)';
  }
}

/// @nodoc
abstract mixin class _$MoneyLineChartStateCopyWith<$Res>
    implements $MoneyLineChartStateCopyWith<$Res> {
  factory _$MoneyLineChartStateCopyWith(_MoneyLineChartState value,
          $Res Function(_MoneyLineChartState) _then) =
      __$MoneyLineChartStateCopyWithImpl;
  @override
  @useResult
  $Res call({List<FlSpot> lineChartSpots});
}

/// @nodoc
class __$MoneyLineChartStateCopyWithImpl<$Res>
    implements _$MoneyLineChartStateCopyWith<$Res> {
  __$MoneyLineChartStateCopyWithImpl(this._self, this._then);

  final _MoneyLineChartState _self;
  final $Res Function(_MoneyLineChartState) _then;

  /// Create a copy of MoneyLineChartState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? lineChartSpots = null,
  }) {
    return _then(_MoneyLineChartState(
      lineChartSpots: null == lineChartSpots
          ? _self._lineChartSpots
          : lineChartSpots // ignore: cast_nullable_to_non_nullable
              as List<FlSpot>,
    ));
  }
}

// dart format on
