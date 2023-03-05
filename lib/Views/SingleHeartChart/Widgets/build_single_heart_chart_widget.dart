import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healthble/Controllers/SingleHeartChart/single_heart_chart_controller.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../Consts/measures.dart';
import '../../../Controllers/Home/home_controller.dart';


class BuildSingleHeartChartWidget extends StatelessWidget {
  const BuildSingleHeartChartWidget({Key? key , required this.controller}) : super(key: key);


  final SingleHeartChartController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      height: Get.height * .6,
      child: SfCartesianChart(
        backgroundColor: Colors.white,
        primaryXAxis: CategoryAxis(),
        borderColor: Colors.white,
        plotAreaBorderColor: Colors.white,
        plotAreaBackgroundColor: Colors.white,
        primaryYAxis: NumericAxis(
          minimum: 0,
          maximum: 60,
          interval: 10,
          borderColor: Colors.white,
          majorGridLines: const MajorGridLines(
            color: mainRedColor,
          ),
          axisLine: const AxisLine(
            color: mainRedColor,
          ),
          minorGridLines: const MinorGridLines(
            color: mainRedColor,
          ),
        ),
        tooltipBehavior: controller.tooltip,
        series: <ChartSeries>[
          // Renders line chart
          LineSeries<SalesData, String>(
            dataSource: controller.data,
            xValueMapper: (SalesData sales, _) =>
            '${sales.year}h',
            yValueMapper: (SalesData sales, _) =>
            sales.sales,
            color: mainDarkColor,
            width: 2.5,
          ),
        ],
      ),
    );
  }
}
