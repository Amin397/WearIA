import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get.dart';
import 'package:healthble/Consts/measures.dart';
import 'package:healthble/Controllers/Home/home_controller.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class BuildHeartBitChartWidget extends StatelessWidget {
  const BuildHeartBitChartWidget({Key? key, required this.controller})
      : super(key: key);

  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return AnimationConfiguration.synchronized(
      child: SlideAnimation(
        child: FadeInAnimation(
          duration: const Duration(milliseconds: 1000),
          child: Container(
              width: Get.width,
              height: Get.height * .25,
              margin: EdgeInsets.symmetric(
                horizontal: Get.width * .05,
                vertical: Get.height * .01,
              ),
              padding: paddingAll8,
              decoration: BoxDecoration(
                color: mainColor,
                borderRadius: radiusAll16,
                boxShadow: blackShadow(),
              ),
              child: GetBuilder(
                init: controller,
                id: 'heart',
                builder: (ctx) {
                  return SfCartesianChart(
                    primaryXAxis: CategoryAxis(),
                    // Chart title
                    // Enable legend
                    legend: Legend(isVisible: false),
                    // Enable tooltip
                    tooltipBehavior: TooltipBehavior(
                      enable: true,
                      animationDuration: 1,
                      duration: 1.0,
                    ),
                    series: <ChartSeries<SalesData, String>>[
                      LineSeries<SalesData, String>(
                        dataSource: controller.data,
                        xValueMapper: (SalesData sales, _) => sales.year,
                        yValueMapper: (SalesData sales, _) => sales.sales,
                        animationDelay: 1.0,
                        dataLabelSettings: DataLabelSettings(
                          isVisible: false,
                        ),
                      )
                    ],
                  );
                },
              )
            // child: LineChart(
            //   LineChartData(
            //     gridData: FlGridData(
            //       show: true,
            //       drawVerticalLine: true,
            //       horizontalInterval: 1,
            //       verticalInterval: 1,
            //       getDrawingHorizontalLine: (value) {
            //         return FlLine(
            //           color: Colors.cyan,
            //           strokeWidth: 1,
            //         );
            //       },
            //       getDrawingVerticalLine: (value) {
            //         return FlLine(
            //           color: Colors.blue,
            //           strokeWidth: 1,
            //         );
            //       },
            //     ),
            //     titlesData: FlTitlesData(
            //       show: true,
            //       rightTitles: AxisTitles(
            //         sideTitles: SideTitles(showTitles: false),
            //       ),
            //       topTitles: AxisTitles(
            //         sideTitles: SideTitles(showTitles: false),
            //       ),
            //       bottomTitles: AxisTitles(
            //         sideTitles: SideTitles(
            //           showTitles: true,
            //           reservedSize: 30,
            //           interval: 1,
            //           getTitlesWidget: controller.bottomTitleWidgets,
            //         ),
            //       ),
            //       leftTitles: AxisTitles(
            //         sideTitles: SideTitles(
            //           showTitles: true,
            //           interval: 1,
            //           getTitlesWidget: controller.leftTitleWidgets,
            //           reservedSize: 42,
            //         ),
            //       ),
            //     ),
            //     borderData: FlBorderData(
            //       show: true,
            //       border: Border.all(color: const Color(0xff37434d)),
            //     ),
            //     minX: 0,
            //     maxX: 11,
            //     minY: 0,
            //     maxY: 6,
            //     lineBarsData: [
            //       LineChartBarData(
            //         spots: const [
            //           FlSpot(0, 3),
            //           FlSpot(2.6, 2),
            //           FlSpot(4.9, 5),
            //           FlSpot(6.8, 3.1),
            //           FlSpot(8, 4),
            //           FlSpot(9.5, 3),
            //           FlSpot(11, 4),
            //         ],
            //         isCurved: true,
            //         // gradient: LinearGradient(
            //         //   colors: [
            //         //     mainColor,
            //         //     mainDarkColor
            //         //   ],
            //         // ),
            //         barWidth: 5,
            //         isStrokeCapRound: true,
            //         dotData: FlDotData(
            //           show: false,
            //         ),
            //         belowBarData: BarAreaData(
            //           show: false,
            //           gradient: LinearGradient(
            //             colors: [
            //               mainColor,
            //               mainDarkColor
            //             ],
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
          ),
        ),
      ),
    );
  }
}
