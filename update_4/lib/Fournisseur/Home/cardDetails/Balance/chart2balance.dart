import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../../Data/balance.dart';
import '../../colors.dart';

class LineReportChartBalance extends StatelessWidget {
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
              spots: getSports(),
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

 List<FlSpot> getSports() {
  
  final balancesByDay = <int, List<double>>{};
  for (final balance in balances) {
    final dayOfWeek = balance.date.weekday;
    balancesByDay[dayOfWeek] ??= [];
    balancesByDay[dayOfWeek]!.add(balance.amount);
  }

  final flSpots = <FlSpot>[];
  for (var i = 1; i <= 7; i++) {
    final balancesForDay = balancesByDay[i] ?? [];
    final averageBalance = balancesForDay.reduce((a, b) => a + b) / balancesForDay.length;
    flSpots.add(FlSpot(i.toDouble() - 1, averageBalance));
  }

  return flSpots;
}
}