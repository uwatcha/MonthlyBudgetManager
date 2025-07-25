import 'package:flutter/material.dart';
import 'package:monthly_budget_manager/model/record_model.dart';
import 'package:monthly_budget_manager/state/home_page_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_page_view_model.g.dart';

@Riverpod(keepAlive: true)
class HomePageViewModel extends _$HomePageViewModel {
  
  @override
  HomePageState build() {
    return HomePageState();
  }

  void addRecord(RecordModel record) {
    var newRecord = record.copyWith(date: DateTime.now());
    state = state.copyWith(records: [...state.records, newRecord]);
    debugPrint(state.records.toString());
  }
}