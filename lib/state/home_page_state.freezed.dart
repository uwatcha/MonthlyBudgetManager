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
  int get startMoney;
  List<RecordModel> get records; // TODO: セーブ機能作ったらrequiredにしてbuild()で情報を取得する
  Map<String, int> get dailyAmounts;

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
      ..add(DiagnosticsProperty('startMoney', startMoney))
      ..add(DiagnosticsProperty('records', records))
      ..add(DiagnosticsProperty('dailyAmounts', dailyAmounts));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomePageState &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.startMoney, startMoney) ||
                other.startMoney == startMoney) &&
            const DeepCollectionEquality().equals(other.records, records) &&
            const DeepCollectionEquality()
                .equals(other.dailyAmounts, dailyAmounts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      startDate,
      endDate,
      startMoney,
      const DeepCollectionEquality().hash(records),
      const DeepCollectionEquality().hash(dailyAmounts));

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomePageState(startDate: $startDate, endDate: $endDate, startMoney: $startMoney, records: $records, dailyAmounts: $dailyAmounts)';
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
      int startMoney,
      List<RecordModel> records,
      Map<String, int> dailyAmounts});
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
    Object? startMoney = null,
    Object? records = null,
    Object? dailyAmounts = null,
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
      startMoney: null == startMoney
          ? _self.startMoney
          : startMoney // ignore: cast_nullable_to_non_nullable
              as int,
      records: null == records
          ? _self.records
          : records // ignore: cast_nullable_to_non_nullable
              as List<RecordModel>,
      dailyAmounts: null == dailyAmounts
          ? _self.dailyAmounts
          : dailyAmounts // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
    ));
  }
}

/// @nodoc

class _HomePageState with DiagnosticableTreeMixin implements HomePageState {
  const _HomePageState(
      {required this.startDate,
      required this.endDate,
      required this.startMoney,
      final List<RecordModel> records = const [],
      final Map<String, int> dailyAmounts = const <String, int>{}})
      : _records = records,
        _dailyAmounts = dailyAmounts;

  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
  @override
  final int startMoney;
  final List<RecordModel> _records;
  @override
  @JsonKey()
  List<RecordModel> get records {
    if (_records is EqualUnmodifiableListView) return _records;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_records);
  }

// TODO: セーブ機能作ったらrequiredにしてbuild()で情報を取得する
  final Map<String, int> _dailyAmounts;
// TODO: セーブ機能作ったらrequiredにしてbuild()で情報を取得する
  @override
  @JsonKey()
  Map<String, int> get dailyAmounts {
    if (_dailyAmounts is EqualUnmodifiableMapView) return _dailyAmounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_dailyAmounts);
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
      ..add(DiagnosticsProperty('startMoney', startMoney))
      ..add(DiagnosticsProperty('records', records))
      ..add(DiagnosticsProperty('dailyAmounts', dailyAmounts));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HomePageState &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.startMoney, startMoney) ||
                other.startMoney == startMoney) &&
            const DeepCollectionEquality().equals(other._records, _records) &&
            const DeepCollectionEquality()
                .equals(other._dailyAmounts, _dailyAmounts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      startDate,
      endDate,
      startMoney,
      const DeepCollectionEquality().hash(_records),
      const DeepCollectionEquality().hash(_dailyAmounts));

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomePageState(startDate: $startDate, endDate: $endDate, startMoney: $startMoney, records: $records, dailyAmounts: $dailyAmounts)';
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
      int startMoney,
      List<RecordModel> records,
      Map<String, int> dailyAmounts});
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
    Object? startMoney = null,
    Object? records = null,
    Object? dailyAmounts = null,
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
      startMoney: null == startMoney
          ? _self.startMoney
          : startMoney // ignore: cast_nullable_to_non_nullable
              as int,
      records: null == records
          ? _self._records
          : records // ignore: cast_nullable_to_non_nullable
              as List<RecordModel>,
      dailyAmounts: null == dailyAmounts
          ? _self._dailyAmounts
          : dailyAmounts // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
    ));
  }
}

// dart format on
