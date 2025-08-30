import 'package:flutter/foundation.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'record_add_dialog_state.freezed.dart';

@freezed
abstract class RecordAddDialogState with _$RecordAddDialogState {
  const factory RecordAddDialogState({
    @Default(true) bool isExpenditureMode, // 支出と収入のどちらの入力モードになっているか．支出でtrue
    String? content, // 購入したものの名前 or 収入の名目
    int? amount // 入力された金額の値（ここでは負の値になることはない）
  }) = _RecordAddDialogState;
}