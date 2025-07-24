import 'package:flutter/foundation.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'record_add_panel_state.freezed.dart';

@freezed
abstract class RecordAddPanelState with _$RecordAddPanelState {
  const factory RecordAddPanelState({
    @Default(true) bool isModeExpenditure,
  }) = _RecordAddPanelState;
}