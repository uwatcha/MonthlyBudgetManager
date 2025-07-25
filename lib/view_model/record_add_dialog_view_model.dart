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
    print(state);
  }

  void setContent(String content) {
    state = state.copyWith(content: content);
    print(state);
  }

  void setAmount(int amount) {
    state = state.copyWith(amount: amount);
    print(state);
  }

  void resetState() {
    state = RecordAddDialogState();
    print(state);
  }
}
