import 'package:flutter/material.dart';
import 'package:monthly_budget_manager/model/record_model.dart';
import 'package:monthly_budget_manager/state/home_page_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_page_view_model.g.dart';

@Riverpod(keepAlive: true)
class HomePageViewModel extends _$HomePageViewModel {
  @override
  HomePageState build() {
    return HomePageState();
  }

  bool addRecord(String? content, int? amount) {
    if (content != null && amount != null) {
      var newRecord =
          RecordModel(date: DateTime.now(), content: content, amount: amount);
      state = state.copyWith(records: [...state.records, newRecord]);
      debugPrint('項目を追加　内容：$content，金額：$amount');
      debugPrint(state.records.toString());
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
    newRecords.remove(newRecords.firstWhere((r) => r.date.isAtSameMomentAs(date)));

    state = state.copyWith(records: newRecords);
    //TODO: ここでエラー．また，popupMenuも閉じない
    debugPrint(
        '項目を削除 $deleteRecord');
    debugPrint('削除後の履歴： ${state.records}');
  }
}
