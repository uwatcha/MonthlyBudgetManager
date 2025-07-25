import 'package:flutter/material.dart';
import 'package:monthly_budget_manager/model/record_model.dart';
import 'package:monthly_budget_manager/state/record_add_dialog_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'record_add_dialog_view_model.g.dart';

@Riverpod(keepAlive: true)
class RecordAddDialogViewModel extends _$RecordAddDialogViewModel {
  final RecordAddDialogState initialRecordAddDialogState =
      RecordAddDialogState(record: RecordModel(date: DateTime(-1), content: ' ', amount: -1));
  @override
  RecordAddDialogState build() {
    return initialRecordAddDialogState.copyWith();
  }

  void setIsExpenditureMode(bool isModeExpenditure) {
    state = state.copyWith(isExpenditureMode: isModeExpenditure);
    debugPrint(state.toString());
  }

  void setContent(String content) {
    state = state.copyWith(
        record: RecordModel(date: state.record.date, content: content, amount: state.record.amount));
    debugPrint(state.toString());
  }

  void setAmount(int amount) {
    state = state.copyWith(
        record: RecordModel(date: state.record.date, content: state.record.content, amount: amount));
    debugPrint(state.toString());
  }

  void resetState() {
    state = initialRecordAddDialogState.copyWith();
    debugPrint(state.toString());
  }
}
