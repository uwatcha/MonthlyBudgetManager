import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:monthly_budget_manager/view_model/money_line_chart_view_model.dart';

class MoneyLineChart extends ConsumerWidget {
  const MoneyLineChart({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: EdgeInsets.all(14.0),
      width: 1000,
      height: 350,
      child: LineChart(
        LineChartData(
          minX: 0,
          maxX: 30,
          minY: 0,
          maxY: 10000,
          titlesData: FlTitlesData(
            bottomTitles: AxisTitles(
              axisNameWidget: Text('(日)'),
              sideTitles: SideTitles(
                showTitles: true,
                getTitlesWidget: (value, meta) {
                  return ref.read(moneyLineChartViewModelProvider.notifier).getLeftTitleWidget(value, meta);
                },
              ),
            ),
            leftTitles: AxisTitles(
              axisNameWidget: Text('千円'),
              sideTitles: SideTitles(
                showTitles: true,
                getTitlesWidget: (value, meta) {
                  return Text('${(value / 1000).toInt()}');
                },
              ),
            ),
            rightTitles: AxisTitles(),
            topTitles: AxisTitles(),
          ),
          lineBarsData: [
            LineChartBarData(
                spots: ref.watch(moneyLineChartViewModelProvider).lineChartSpots),
          ],
        ),
      ),
    );
  }
}
