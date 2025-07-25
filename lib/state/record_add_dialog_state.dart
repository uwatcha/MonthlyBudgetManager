import 'package:flutter/foundation.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'record_add_dialog_state.freezed.dart';

@freezed
abstract class RecordAddDialogState with _$RecordAddDialogState {
  const factory RecordAddDialogState({
    @Default(true) bool isExpenditureMode,
    String? content,
    int? amount
  }) = _RecordAddDialogState;
}