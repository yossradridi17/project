import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import '../../../../Data/estimate_data.dart';
import '../../colors.dart';

class LineReportChartOrders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.2,
      child: LineChart(
        LineChartData(
          gridData: FlGridData(show: false),
          borderData: FlBorderData(show: false),
          titlesData: FlTitlesData(show: false),
          lineBarsData: [
            LineChartBarData(
              spots: getSpots(),
              isCurved: true,
              dotData: FlDotData(show: false),
              belowBarData: BarAreaData(show: false),
              color: Colors.deepPurple,
              barWidth: 4,
            ),
          ],
        ),
      ),
    );
  }

List<FlSpot> getSpots() {
  final estimateByDay = <int, List<double>>{};
  for (final estimate in estimates) {
    final dayOfWeek = estimate.info.date.weekday;
    estimateByDay[dayOfWeek] ??= [];
    estimateByDay[dayOfWeek]!.add(1);
  }

  final flSpots = <FlSpot>[];
  for (var i = 1; i <= 7; i++) {
    final estimateForDay = estimateByDay[i] ?? [];
    final sum = estimateForDay.reduce((a, b) => a + b);
    flSpots.add(FlSpot(i.toDouble() - 1, sum));
  }

  return flSpots;
}

}