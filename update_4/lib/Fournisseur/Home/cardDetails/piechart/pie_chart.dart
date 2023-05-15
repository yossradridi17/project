import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import '../../../../Data/product.dart';
import 'indicator.dart';

class PieChartSample2 extends StatefulWidget {

  const PieChartSample2({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => PieChart2State();
}

class PieChart2State extends State<PieChartSample2> {
  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.3,
      child: Row(
        children: <Widget>[
          const SizedBox(
            height: 18,
          ),
          Expanded(
            child: AspectRatio(
              aspectRatio: 1,
              child: PieChart(
                PieChartData(
                  pieTouchData: PieTouchData(
                    touchCallback: (FlTouchEvent event, pieTouchResponse) {
                      setState(() {
                        if (!event.isInterestedForInteractions ||
                            pieTouchResponse == null ||
                            pieTouchResponse.touchedSection == null) {
                          touchedIndex = -1;
                          return;
                        }
                        touchedIndex =
                            pieTouchResponse.touchedSection!.touchedSectionIndex;
                      });
                    },
                  ),
                  borderData: FlBorderData(
                    show: false,
                  ),
                  sectionsSpace: 0,
                  centerSpaceRadius: 40,
                  sections: showingSections(),
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              for (final category in _getCategories(products))
                Indicator(
                  color: _getCategoryColor(category),
                  text: category,
                  isSquare: true,
                ),
              SizedBox(
                height: 18,
              ),
            ],
          ),
          const SizedBox(
            width: 28,
          ),
        ],
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    final Map<String, double> quantitiesByCategory = {};

    for (final product in products) {
      quantitiesByCategory.update(
          product.category.title, (value) => value + product.quantity,
          ifAbsent: () => product.quantity.toDouble());
    }

    return List.generate(quantitiesByCategory.length, (i) {
      final isTouched = i == touchedIndex;
      final category = quantitiesByCategory.keys.elementAt(i);
      final quantity = quantitiesByCategory[category]!;
      final percent = quantity / products.fold<double>(
          0, (previousValue, product) => previousValue + product.quantity) *
          100;
      final fontSize = isTouched ? 25.0 : 16.0;
      final radius = isTouched ? 60.0 : 50.0;
      const shadows = [Shadow(color: Colors.black, blurRadius: 2)];
      return PieChartSectionData(
        color: _getCategoryColor(category),
        value: percent,
        title: '${percent.toStringAsFixed(2)}%',
        radius: radius,
        titleStyle: TextStyle(
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
          color: Colors.black,
          shadows: shadows,
        ),
      );
    });
  }

  Set<String> _getCategories(List<Product> products) {
    return products.map((e) => e.category.title).toSet();
  }

  Color _getCategoryColor(String category) {
    switch (category) {
      case 'Men':
        return Colors.green;
      case 'Women':
        return Colors.yellow;
      case

'Pets':
return Colors.red;
default:
return Colors.grey;
}
}
}




