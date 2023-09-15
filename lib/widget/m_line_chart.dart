import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:pdsystem/db/data_model.dart';
import 'dart:math' as math;

class MyLineChart extends StatelessWidget {
  const MyLineChart({
    super.key,
    required this.datas,
    required this.unit,
  });
  final List<DataModel> datas;
  final String unit;

  @override
  Widget build(BuildContext context) {
    final values = datas.map((e) => e.value).toList();
    final maxValue = values.reduce(math.max);
    final minValue = values.reduce(math.min);
    final tween = maxValue - minValue;
    return LineChart(
      LineChartData(
          clipData: FlClipData.all(),
          gridData: FlGridData(
            show: true,
            drawHorizontalLine: true,
            drawVerticalLine: true,
            getDrawingHorizontalLine: (value) {
              return FlLine(
                color: const Color(0xff37434d),
                strokeWidth: 1,
              );
            },
            getDrawingVerticalLine: (value) {
              return FlLine(
                color: const Color(0xff37434d),
                strokeWidth: 1,
              );
            },
          ),
          titlesData: FlTitlesData(
            show: true,
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 22,
                getTitlesWidget: (value, meta) {
                  return Text(
                    value.toInt().toString(),
                    style: const TextStyle(
                      color: Color(0xff68737d),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  );
                },
                interval: 3,
              ),
            ),
            leftTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 22,
                getTitlesWidget: (value, meta) {
                  String text;
                  if (value > 10000) {
                    value = value / 1000;
                    text = value.toInt().toString();
                  } else {
                    text = value.toInt().toString();
                  }
                  return Text(
                    text,
                    style: const TextStyle(
                      color: Color(0xff67727d),
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  );
                },
                interval: tween > 100
                    ? 1000
                    : tween > 30
                        ? 4
                        : tween > 20
                            ? 3
                            : tween > 10
                                ? 2
                                : 1,
              ),
            ),
            topTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: false,
              ),
            ),
            rightTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: false,
              ),
            ),
          ),
          borderData: FlBorderData(
            show: true,
            border: const Border(
              left: BorderSide(color: Color(0xff37434d), width: 1),
              bottom: BorderSide(color: Color(0xff37434d), width: 1),
              top: BorderSide.none,
              right: BorderSide.none,
            ),
          ),
          maxX: 23,
          minX: 0,
          maxY: maxValue.toInt() + 1.toDouble(),
          minY: maxValue < 3
              ? minValue.toInt() - 1.toDouble()
              : minValue.toInt() + 1.toDouble(),
          lineBarsData: [
            LineChartBarData(
              isCurved: true,
              color: const Color(0xff8cbebb),
              barWidth: 3,
              dotData: FlDotData(
                show: false,
              ),
              belowBarData: BarAreaData(
                show: false,
              ),
              spots:
                  datas.map((data) => FlSpot(data.time, data.value)).toList(),
            ),
          ]),
    );
  }
}
