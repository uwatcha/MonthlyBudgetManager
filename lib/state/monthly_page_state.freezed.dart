// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'monthly_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MonthlyPageState implements DiagnosticableTreeMixin {
  DateTime get startDate;
  DateTime get endDate;
  int get startMoney;
  List<RecordModel> get records; // TODO: セーブ機能作ったらrequiredにしてbuild()で情報を取得する
  /// 1日ごとに収支を管理し，グラフに渡す
  /// キーは日付（'yyyy-MM-dd'形式の文字列）
  /// 値はその日の収支合計
  Map<String, int> get dailyAmounts;

  /// Create a copy of MonthlyPageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MonthlyPageStateCopyWith<MonthlyPageState> get copyWith =>
      _$MonthlyPageStateCopyWithImpl<MonthlyPageState>(
          this as MonthlyPageState, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'MonthlyPageState'))
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
            other is MonthlyPageState &&
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
    return 'MonthlyPageState(startDate: $startDate, endDate: $endDate, startMoney: $startMoney, records: $records, dailyAmounts: $dailyAmounts)';
  }
}

/// @nodoc
abstract mixin class $MonthlyPageStateCopyWith<$Res> {
  factory $MonthlyPageStateCopyWith(
          MonthlyPageState value, $Res Function(MonthlyPageState) _then) =
      _$MonthlyPageStateCopyWithImpl;
  @useResult
  $Res call(
      {DateTime startDate,
      DateTime endDate,
      int startMoney,
      List<RecordModel> records,
      Map<String, int> dailyAmounts});
}

/// @nodoc
class _$MonthlyPageStateCopyWithImpl<$Res>
    implements $MonthlyPageStateCopyWith<$Res> {
  _$MonthlyPageStateCopyWithImpl(this._self, this._then);

  final MonthlyPageState _self;
  final $Res Function(MonthlyPageState) _then;

  /// Create a copy of MonthlyPageState
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

class _MonthlyPageState
    with DiagnosticableTreeMixin
    implements MonthlyPageState {
  const _MonthlyPageState(
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
  /// 1日ごとに収支を管理し，グラフに渡す
  /// キーは日付（'yyyy-MM-dd'形式の文字列）
  /// 値はその日の収支合計
  final Map<String, int> _dailyAmounts;
// TODO: セーブ機能作ったらrequiredにしてbuild()で情報を取得する
  /// 1日ごとに収支を管理し，グラフに渡す
  /// キーは日付（'yyyy-MM-dd'形式の文字列）
  /// 値はその日の収支合計
  @override
  @JsonKey()
  Map<String, int> get dailyAmounts {
    if (_dailyAmounts is EqualUnmodifiableMapView) return _dailyAmounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_dailyAmounts);
  }

  /// Create a copy of MonthlyPageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MonthlyPageStateCopyWith<_MonthlyPageState> get copyWith =>
      __$MonthlyPageStateCopyWithImpl<_MonthlyPageState>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'MonthlyPageState'))
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
            other is _MonthlyPageState &&
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
    return 'MonthlyPageState(startDate: $startDate, endDate: $endDate, startMoney: $startMoney, records: $records, dailyAmounts: $dailyAmounts)';
  }
}

/// @nodoc
abstract mixin class _$MonthlyPageStateCopyWith<$Res>
    implements $MonthlyPageStateCopyWith<$Res> {
  factory _$MonthlyPageStateCopyWith(
          _MonthlyPageState value, $Res Function(_MonthlyPageState) _then) =
      __$MonthlyPageStateCopyWithImpl;
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
class __$MonthlyPageStateCopyWithImpl<$Res>
    implements _$MonthlyPageStateCopyWith<$Res> {
  __$MonthlyPageStateCopyWithImpl(this._self, this._then);

  final _MonthlyPageState _self;
  final $Res Function(_MonthlyPageState) _then;

  /// Create a copy of MonthlyPageState
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
    return _then(_MonthlyPageState(
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
