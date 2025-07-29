import 'package:flutter/foundation.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:monthly_budget_manager/model/record_model.dart';


part 'home_page_state.freezed.dart';

@freezed
abstract class HomePageState with _$HomePageState {
  const factory HomePageState({
    required DateTime startDate,
    required DateTime endDate,
    required int currentMoney,
    @Default([]) List<RecordModel> records, // TODO: セーブ機能作ったらrequiredにしてbuild()で情報を取得する
}) = _HomePageState;
}