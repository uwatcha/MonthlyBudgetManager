import 'package:flutter/foundation.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'record_add_dialog_state.freezed.dart';

@freezed
abstract class RecordAddDialogState with _$RecordAddDialogState {
  const factory RecordAddDialogState({
    @Default(true) bool isExpenditureMode,
    @Default('') String content,
    @Default(-1) int amount
  }) = _RecordAddDialogState;
}