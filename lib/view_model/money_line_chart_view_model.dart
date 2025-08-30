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
    final DateTime startDate = ref.watch(homePageViewModelProvider).startDate;
    final DateTime currentDate = startDate.add(Duration(days: value.toInt()));
    return Text('${currentDate.month}/${currentDate.day}');
  }

  void updateLineChartSpots() {
    HomePageState homePageState = ref.watch(homePageViewModelProvider);
    final DateFormat formatter = DateFormat(DATE_FORMAT_PATTERN);
    double lastSpotY = homePageState.startMoney.toDouble();
    List<FlSpot> newSpots = homePageState.dailyAmounts.entries.map<FlSpot>(
      (e) {
        DateTime date = formatter.parse(e.key);
        double x = date.difference(homePageState.startDate).inDays.toDouble();
        double currentY = lastSpotY + e.value;
        double y = (currentY).toDouble();
        lastSpotY = currentY;
        debugPrint('Spot: ($x, $y)');
        return FlSpot(x, y);
      },
    ).toList();
    state = state.copyWith(lineChartSpots: newSpots);
  }
}
