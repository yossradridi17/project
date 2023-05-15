import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../../Data/balance.dart';
import '../../../../Data/estimate_data.dart';
import '../../../../Data/estimate_det.dart';
import '../../colors.dart';

class WeeklyBalanceChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.7,
      child: BarChart(
        BarChartData(
          barGroups: getBarGroups(),
          borderData: FlBorderData(show: false),
          titlesData: FlTitlesData(
            leftTitles: AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                  showTitles: true, getTitlesWidget: getWeek, reservedSize: 38),
            ),
          ),
        ),
      ),
    );
  }
}

getBarGroups() {
  List<double> barChartDatas = List.filled(7, 0);
  for (var balance in balances) {
    int dayOfWeek = balance.date.weekday - 1;

    barChartDatas[dayOfWeek] += balance.amount;
  }

  double maxAmount = barChartDatas
      .reduce((value, element) => value > element ? value : element);
  int maxCountIndex = barChartDatas.indexOf(maxAmount);
  List<BarChartGroupData> barChartGroups = [];
  barChartDatas.asMap().forEach(
        (i, value) => barChartGroups.add(
          BarChartGroupData(
            x: i,
            barRods: [
              BarChartRodData(
                toY: value,
                color: i == maxCountIndex
                    ? Colors.deepPurple
                    : kInactiveChartColor,
                width: 16,
              )
            ],
          ),
        ),
      );
  return barChartGroups;
}

Widget getWeek(double value, TitleMeta meta) {
  const style = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 14,
  );
  Widget text;
  switch (value.toInt()) {
    case 0:
      text = const Text('M', style: style);
      break;
    case 1:
      text = const Text('T', style: style);
      break;
    case 2:
      text = const Text('W', style: style);
      break;
    case 3:
      text = const Text('T', style: style);
      break;
    case 4:
      text = const Text('F', style: style);
      break;
    case 5:
      text = const Text('S', style: style);
      break;
    case 6:
      text = const Text('S', style: style);
      break;
    default:
      text = const Text('', style: style);
      break;
  }
  return SideTitleWidget(
    axisSide: meta.axisSide,
    space: 16,
    child: text,
  );
}
