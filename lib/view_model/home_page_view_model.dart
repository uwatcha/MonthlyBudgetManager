import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:monthly_budget_manager/constant/constant.dart';
import 'package:monthly_budget_manager/model/record_model.dart';
import 'package:monthly_budget_manager/state/home_page_state.dart';
import 'package:monthly_budget_manager/state/record_add_dialog_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:intl/intl.dart';

part 'home_page_view_model.g.dart';

//TODO: デバッグ用にダミーデータを一括で入れられるようにする．
@Riverpod(keepAlive: true)
class HomePageViewModel extends _$HomePageViewModel {
  @override
  HomePageState build() {
    return HomePageState(
      //TODO: これらのデータを前の画面で入力してから遷移するようにする
      startDate: DateTime(2025, 7, 20), endDate: DateTime(2025, 8, 20), currentMoney: 10000);
  }

  bool addRecord(RecordAddDialogState addState) {
    bool isExpenditureMode = addState.isExpenditureMode;
    String? content = addState.content;
    int? amount = addState.amount;

    if (content != null && amount != null) {
      int sign = isExpenditureMode ? -1 : 1;
      var newRecord = RecordModel(
          date: DateTime.now(), content: content, amount: sign * amount);
      state = state.copyWith(records: [...state.records, newRecord]);
      debugPrint('項目を追加　内容：$content，金額：$amount');
      debugPrint(state.records.toString());
      _updateLineChartSpots();
      return true;
    } else {
      debugPrint('未記入の欄があります。');
      return false;
    }
  }

  void deleteRecord(DateTime date) {
    RecordModel deleteRecord =
        state.records.firstWhere((r) => r.date.isAtSameMomentAs(date));

    final newRecords = [...state.records];
    newRecords
        .remove(newRecords.firstWhere((r) => r.date.isAtSameMomentAs(date)));

    state = state.copyWith(records: newRecords);
    debugPrint('項目を削除 $deleteRecord');
    debugPrint('削除後の履歴： ${state.records}');
    _updateLineChartSpots();
  }

  void _updateLineChartSpots() {
    final DateFormat formatter = DateFormat(DATE_FORMAT_PATTERN);
    Map<String, int> dailyAmounts = {};
    for (var record in state.records) {
      String recordDateString = formatter.format(record.date);
      dailyAmounts.update(recordDateString, (value) => value + record.amount, ifAbsent: () => record.amount);
    }
    List<FlSpot> newSpots = dailyAmounts.entries.map<FlSpot>((e) {
      DateTime date = formatter.parse(e.key);
      double x = date.difference(state.startDate).inDays.toDouble();
      double y = (state.currentMoney + e.value).toDouble();
      return FlSpot(x, y);
    },).toList();
    state = state.copyWith(lineChartSpots: newSpots);
  }
}
