import 'package:cricket_player_tracking/domain/entities/player.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import '../../core/utils/date_formatter.dart';

class PerformanceChart extends StatelessWidget {
  final List<PerformanceRecord> performanceRecords;

  const PerformanceChart({
    Key? key,
    required this.performanceRecords,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Sort records by date
    final sortedRecords = List<PerformanceRecord>.from(performanceRecords)
      ..sort((a, b) => a.date.compareTo(b.date));

    if (sortedRecords.isEmpty) {
      return const Center(
        child: Text('No performance data available'),
      );
    }

    return LineChart(
      LineChartData(
        gridData: FlGridData(show: true),
        titlesData: FlTitlesData(
          leftTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              reservedSize: 40,
            ),
          ),
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              getTitlesWidget: (value, meta) {
                if (value.toInt() >= sortedRecords.length) return const Text('');
                return Text(
                  DateFormatter.formatDate(
                    sortedRecords[value.toInt()].date,
                  ),
                  style: const TextStyle(fontSize: 10),
                );
              },
              reservedSize: 30,
            ),
          ),
        ),
        borderData: FlBorderData(show: true),
        lineBarsData: [
          LineChartBarData(
            spots: List.generate(
              sortedRecords.length,
                  (index) => FlSpot(
                index.toDouble(),
                double.parse(sortedRecords[index].runs.toString()),
              ),
            ),
            isCurved: true,
            color: Theme.of(context).colorScheme.primary,
            barWidth: 3,
            dotData: FlDotData(show: true),
          ),
        ],
      ),
    );
  }
}