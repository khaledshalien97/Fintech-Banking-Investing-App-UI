import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class WeeklyChart extends StatelessWidget {
  const WeeklyChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: LineChart(
            LineChartData(
              minX: 0,
              maxX: 6,
              minY: 0,
              maxY: 500,
              gridData: const FlGridData(show: false),
              titlesData: FlTitlesData(
                topTitles: const AxisTitles(
                  sideTitles: SideTitles(showTitles: false),
                ),
                rightTitles: const AxisTitles(
                  sideTitles: SideTitles(showTitles: false),
                ),
                leftTitles: const AxisTitles(
                  sideTitles: SideTitles(showTitles: false),
                ),
                bottomTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    getTitlesWidget: (value, meta) {
                      const days = ['S', 'M', 'T', 'W', 'T', 'F', 'S'];
                      return Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Text(
                          days[value.toInt()],
                          style: const TextStyle(
                            color: Color(0xFF2D3340),
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                      );
                    },
                    interval: 1,
                  ),
                ),
              ),
              borderData: FlBorderData(show: false),
              lineBarsData: [
                // الخط الأسود المتقطع
                LineChartBarData(
                  spots: const [
                    FlSpot(0, 150),
                    FlSpot(1, 200),
                    FlSpot(2, 130),
                    FlSpot(3, 350),
                    FlSpot(4, 250),
                    FlSpot(5, 280),
                    FlSpot(6, 230),
                  ],
                  isCurved: true,
                  color: const Color(0xFF2D3340),
                  barWidth: 3,
                  isStrokeCapRound: true,
                  dashArray: [6, 6],
                  dotData: FlDotData(
                    show: true,
                    getDotPainter: (spot, _, __, ___) {
                      if (spot.x == 3) {
                    
                        return FlDotCirclePainter(
                          radius: 8,
                          color: const Color(0xFF2D3340),
                          strokeWidth: 0,
                        );
                      }
                      return FlDotCirclePainter(radius: 0);
                    },
                  ),
                ),

              
                LineChartBarData(
                  spots: const [
                    FlSpot(0, 180),
                    FlSpot(1, 260),
                    FlSpot(2, 120),
                    FlSpot(3, 300),
                    FlSpot(4, 350),
                    FlSpot(5, 400),
                    FlSpot(6, 370),
                  ],
                  isCurved: true,
                  color: const Color(0xFF36D7B7),
                  barWidth: 3,
                  dashArray: [6, 6],
                  isStrokeCapRound: true,
                  dotData: FlDotData(
                    show: true,
                    getDotPainter: (spot, _, __, ___) {
                      if (spot.x == 5) {
                        return FlDotCirclePainter(
                          radius: 8,
                          color: const Color(0xFF36D7B7),
                          strokeWidth: 0,
                        );
                      }
                      return FlDotCirclePainter(radius: 0);
                    },
                  ),
                ),
              ],
              lineTouchData: LineTouchData(enabled: false),
            ),
          ),
        ),
      ),
    );
  }
}
