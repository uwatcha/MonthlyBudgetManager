import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:monthly_budget_manager/constant/constant.dart';
import 'package:monthly_budget_manager/model/record_model.dart';
import 'package:monthly_budget_manager/state/home_page_state.dart';
import 'package:monthly_budget_manager/state/record_add_dialog_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:intl/intl.dart';

part 'home_page_view_model.g.dart';

@Riverpod(keepAlive: true)
class HomePageViewModel extends _$HomePageViewModel {
  @override
  HomePageState build() {
    return HomePageState(
        //TODO: これらのデータを前の画面で入力してから遷移するようにする
        startDate: DateTime(2025, 7, 20),
        endDate: DateTime(2025, 8, 20),
        currentMoney: 10000);
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
      dailyAmounts.update(recordDateString, (value) => value + record.amount,
          ifAbsent: () => record.amount);
    }
    List<FlSpot> newSpots = dailyAmounts.entries.map<FlSpot>(
      (e) {
        DateTime date = formatter.parse(e.key);
        double x = date.difference(state.startDate).inDays.toDouble();
        double y = (state.currentMoney + e.value).toDouble();
        return FlSpot(x, y);
      },
    ).toList();
    state = state.copyWith(lineChartSpots: newSpots);
  }

  void replaceDummyRecords() {
    List<RecordModel> newRecords = [
      RecordModel(date: DateTime(2025, 7, 20), content: 'りんご', amount: -200),
      RecordModel(date: DateTime(2025, 7, 25), content: 'バナナ', amount: -250),
      RecordModel(date: DateTime(2025, 7, 28), content: 'ラーメン', amount: -1000),
      RecordModel(date: DateTime(2025, 7, 28), content: 'ケーキ', amount: -430),
      RecordModel(date: DateTime(2025, 7, 28), content: 'ピザ', amount: -2000),
      RecordModel(date: DateTime(2025, 8, 1), content: 'りんご飴', amount: -300),
      RecordModel(date: DateTime(2025, 8, 1), content: 'かき氷', amount: -150),
      RecordModel(date: DateTime(2025, 8, 1), content: 'クレープ', amount: -450),
      RecordModel(date: DateTime(2025, 8, 1), content: 'たこ焼き', amount: -500),
      RecordModel(date: DateTime(2025, 8, 5), content: 'アメリカンドッグ', amount: -140),
      RecordModel(date: DateTime(2025, 8, 10), content: 'ティッシュ', amount: -270),
      RecordModel(date: DateTime(2025, 8, 10), content: 'シャンプー', amount: -530),
      RecordModel(date: DateTime(2025, 8, 15), content: '鬼滅映画', amount: -1300),
      RecordModel(date: DateTime(2025, 8, 15), content: 'ポップコーン', amount: -500),
      RecordModel(date: DateTime(2025, 8, 15), content: '交通費', amount: -500),
      RecordModel(date: DateTime(2025, 8, 19), content: 'チョコミントアイス', amount: -110),
    ];
    state = state.copyWith(records: newRecords);
    debugPrint('ダミー項目を追加');
    debugPrint(state.records.toString());
    _updateLineChartSpots();
  }
}
