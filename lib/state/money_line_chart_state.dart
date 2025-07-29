import 'package:fl_chart/fl_chart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'money_line_chart_state.freezed.dart';

@freezed
abstract class MoneyLineChartState  with _$MoneyLineChartState {
  const factory MoneyLineChartState({
    @Default([]) List<FlSpot> lineChartSpots
  }) = _MoneyLineChartState;
}