// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HomePageState implements DiagnosticableTreeMixin {
  DateTime get startDate;
  DateTime get endDate;
  int get currentMoney;
  List<RecordModel> get records; // TODO: セーブ機能作ったらrequiredにしてbuild()で情報を取得する
  List<FlSpot> get lineChartSpots;

  /// Create a copy of HomePageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HomePageStateCopyWith<HomePageState> get copyWith =>
      _$HomePageStateCopyWithImpl<HomePageState>(
          this as HomePageState, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'HomePageState'))
      ..add(DiagnosticsProperty('startDate', startDate))
      ..add(DiagnosticsProperty('endDate', endDate))
      ..add(DiagnosticsProperty('currentMoney', currentMoney))
      ..add(DiagnosticsProperty('records', records))
      ..add(DiagnosticsProperty('lineChartSpots', lineChartSpots));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomePageState &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.currentMoney, currentMoney) ||
                other.currentMoney == currentMoney) &&
            const DeepCollectionEquality().equals(other.records, records) &&
            const DeepCollectionEquality()
                .equals(other.lineChartSpots, lineChartSpots));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      startDate,
      endDate,
      currentMoney,
      const DeepCollectionEquality().hash(records),
      const DeepCollectionEquality().hash(lineChartSpots));

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomePageState(startDate: $startDate, endDate: $endDate, currentMoney: $currentMoney, records: $records, lineChartSpots: $lineChartSpots)';
  }
}

/// @nodoc
abstract mixin class $HomePageStateCopyWith<$Res> {
  factory $HomePageStateCopyWith(
          HomePageState value, $Res Function(HomePageState) _then) =
      _$HomePageStateCopyWithImpl;
  @useResult
  $Res call(
      {DateTime startDate,
      DateTime endDate,
      int currentMoney,
      List<RecordModel> records,
      List<FlSpot> lineChartSpots});
}

/// @nodoc
class _$HomePageStateCopyWithImpl<$Res>
    implements $HomePageStateCopyWith<$Res> {
  _$HomePageStateCopyWithImpl(this._self, this._then);

  final HomePageState _self;
  final $Res Function(HomePageState) _then;

  /// Create a copy of HomePageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startDate = null,
    Object? endDate = null,
    Object? currentMoney = null,
    Object? records = null,
    Object? lineChartSpots = null,
  }) {
    return _then(_self.copyWith(
      startDate: null == startDate
          ? _self.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _self.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      currentMoney: null == currentMoney
          ? _self.currentMoney
          : currentMoney // ignore: cast_nullable_to_non_nullable
              as int,
      records: null == records
          ? _self.records
          : records // ignore: cast_nullable_to_non_nullable
              as List<RecordModel>,
      lineChartSpots: null == lineChartSpots
          ? _self.lineChartSpots
          : lineChartSpots // ignore: cast_nullable_to_non_nullable
              as List<FlSpot>,
    ));
  }
}

/// @nodoc

class _HomePageState with DiagnosticableTreeMixin implements HomePageState {
  const _HomePageState(
      {required this.startDate,
      required this.endDate,
      required this.currentMoney,
      final List<RecordModel> records = const [],
      final List<FlSpot> lineChartSpots = const []})
      : _records = records,
        _lineChartSpots = lineChartSpots;

  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
  @override
  final int currentMoney;
  final List<RecordModel> _records;
  @override
  @JsonKey()
  List<RecordModel> get records {
    if (_records is EqualUnmodifiableListView) return _records;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_records);
  }

// TODO: セーブ機能作ったらrequiredにしてbuild()で情報を取得する
  final List<FlSpot> _lineChartSpots;
// TODO: セーブ機能作ったらrequiredにしてbuild()で情報を取得する
  @override
  @JsonKey()
  List<FlSpot> get lineChartSpots {
    if (_lineChartSpots is EqualUnmodifiableListView) return _lineChartSpots;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lineChartSpots);
  }

  /// Create a copy of HomePageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$HomePageStateCopyWith<_HomePageState> get copyWith =>
      __$HomePageStateCopyWithImpl<_HomePageState>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'HomePageState'))
      ..add(DiagnosticsProperty('startDate', startDate))
      ..add(DiagnosticsProperty('endDate', endDate))
      ..add(DiagnosticsProperty('currentMoney', currentMoney))
      ..add(DiagnosticsProperty('records', records))
      ..add(DiagnosticsProperty('lineChartSpots', lineChartSpots));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HomePageState &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.currentMoney, currentMoney) ||
                other.currentMoney == currentMoney) &&
            const DeepCollectionEquality().equals(other._records, _records) &&
            const DeepCollectionEquality()
                .equals(other._lineChartSpots, _lineChartSpots));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      startDate,
      endDate,
      currentMoney,
      const DeepCollectionEquality().hash(_records),
      const DeepCollectionEquality().hash(_lineChartSpots));

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomePageState(startDate: $startDate, endDate: $endDate, currentMoney: $currentMoney, records: $records, lineChartSpots: $lineChartSpots)';
  }
}

/// @nodoc
abstract mixin class _$HomePageStateCopyWith<$Res>
    implements $HomePageStateCopyWith<$Res> {
  factory _$HomePageStateCopyWith(
          _HomePageState value, $Res Function(_HomePageState) _then) =
      __$HomePageStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {DateTime startDate,
      DateTime endDate,
      int currentMoney,
      List<RecordModel> records,
      List<FlSpot> lineChartSpots});
}

/// @nodoc
class __$HomePageStateCopyWithImpl<$Res>
    implements _$HomePageStateCopyWith<$Res> {
  __$HomePageStateCopyWithImpl(this._self, this._then);

  final _HomePageState _self;
  final $Res Function(_HomePageState) _then;

  /// Create a copy of HomePageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? startDate = null,
    Object? endDate = null,
    Object? currentMoney = null,
    Object? records = null,
    Object? lineChartSpots = null,
  }) {
    return _then(_HomePageState(
      startDate: null == startDate
          ? _self.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _self.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      currentMoney: null == currentMoney
          ? _self.currentMoney
          : currentMoney // ignore: cast_nullable_to_non_nullable
              as int,
      records: null == records
          ? _self._records
          : records // ignore: cast_nullable_to_non_nullable
              as List<RecordModel>,
      lineChartSpots: null == lineChartSpots
          ? _self._lineChartSpots
          : lineChartSpots // ignore: cast_nullable_to_non_nullable
              as List<FlSpot>,
    ));
  }
}

// dart format on
