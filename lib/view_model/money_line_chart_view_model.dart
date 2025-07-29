import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:monthly_budget_manager/constant/constant.dart';
import 'package:monthly_budget_manager/state/home_page_state.dart';
import 'package:monthly_budget_manager/state/money_line_chart_state.dart';
import 'package:monthly_budget_manager/view_model/home_page_view_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'money_line_chart_view_model.g.dart';

@Riverpod(keepAlive: true)
class MoneyLineChartViewModel extends _$MoneyLineChartViewModel {
  @override
  MoneyLineChartState build() {
    return MoneyLineChartState();
  }

  Widget getLeftTitleWidget(double value, TitleMeta meta) {
    return Text('tmp');
  }

  void updateLineChartSpots() {
    HomePageState homePageState = ref.watch(homePageViewModelProvider);
    final DateFormat formatter = DateFormat(DATE_FORMAT_PATTERN);
    Map<String, int> dailyAmounts = {};
    for (var record in homePageState.records) {
      String recordDateString = formatter.format(record.date);
      dailyAmounts.update(recordDateString, (value) => value + record.amount,
          ifAbsent: () => record.amount);
    }
    List<FlSpot> newSpots = dailyAmounts.entries.map<FlSpot>(
      (e) {
        DateTime date = formatter.parse(e.key);
        double x = date.difference(homePageState.startDate).inDays.toDouble();
        double y = (homePageState.currentMoney + e.value).toDouble();
        debugPrint('Spot: ($x, $y)');
        return FlSpot(x, y);
      },
    ).toList();
    state = state.copyWith(lineChartSpots: newSpots);
  }
}
