import 'package:flutter/foundation.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:monthly_budget_manager/model/record_model.dart';

part 'record_add_dialog_state.freezed.dart';

@freezed
abstract class RecordAddDialogState with _$RecordAddDialogState {
  const factory RecordAddDialogState({
    @Default(true) bool isExpenditureMode,
    required RecordModel record,
  }) = _RecordAddDialogState;
}