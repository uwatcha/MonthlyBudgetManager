// ignore_for_file: avoid_print

import 'package:monthly_budget_manager/model/record_model.dart';
import 'package:monthly_budget_manager/state/record_add_dialog_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'record_add_dialog_view_model.g.dart';

@Riverpod(keepAlive: true)
class RecordAddDialogViewModel extends _$RecordAddDialogViewModel {
  final RecordAddDialogState initialRecordAddDialogState =
      RecordAddDialogState(record: RecordModel(content: ' ', amount: -1));
  @override
  RecordAddDialogState build() {
    return initialRecordAddDialogState.copyWith();
  }

  void setIsExpenditureMode(bool isModeExpenditure) {
    state = state.copyWith(isExpenditureMode: isModeExpenditure);
    print(state);
  }

  void setContent(String content) {
    state = state.copyWith(
        record: RecordModel(content: content, amount: state.record.amount));
    print(state);
  }

  void setAmount(int amount) {
    state = state.copyWith(
        record: RecordModel(content: state.record.content, amount: amount));
    print(state);
  }

  void resetState() {
    state = initialRecordAddDialogState.copyWith();
    print(state);
  }
}
