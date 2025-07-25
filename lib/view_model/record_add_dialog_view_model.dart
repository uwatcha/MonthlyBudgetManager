import 'package:flutter/material.dart';
import 'package:monthly_budget_manager/state/record_add_dialog_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'record_add_dialog_view_model.g.dart';

@Riverpod(keepAlive: true)
class RecordAddDialogViewModel extends _$RecordAddDialogViewModel {
  @override
  RecordAddDialogState build() {
    return RecordAddDialogState();
  }

  void setIsExpenditureMode(bool isModeExpenditure) {
    state = state.copyWith(isExpenditureMode: isModeExpenditure);
    debugPrint(state.toString());
  }

  void setContent(String content) {
    state = state.copyWith(content: content, amount: state.amount);
    debugPrint(state.toString());
  }

  void setAmount(int amount) {
    state = state.copyWith(content: state.content, amount: amount);
    debugPrint(state.toString());
  }

  void resetState() {
    state = RecordAddDialogState();
    debugPrint(state.toString());
  }
}
