import 'package:flutter/foundation.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:monthly_budget_manager/model/record_model.dart';

part 'monthly_page_state.freezed.dart';

@freezed
abstract class MonthlyPageState with _$MonthlyPageState {
  const factory MonthlyPageState({
    required DateTime startDate,
    required DateTime endDate,
    required int startMoney,
    @Default([]) List<RecordModel> records, // TODO: セーブ機能作ったらrequiredにしてbuild()で情報を取得する
    /// 1日ごとに収支を管理し，グラフに渡す
    /// キーは日付（'yyyy-MM-dd'形式の文字列）
    /// 値はその日の収支合計
    @Default(<String, int>{}) Map<String, int> dailyAmounts,
  }) = _MonthlyPageState;
}