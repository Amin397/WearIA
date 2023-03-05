import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healthble/Consts/measures.dart';
import 'package:healthble/Controllers/SingleBreathChart/single_breath_chart_controller.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../Controllers/Home/home_controller.dart';



class BuildSingleBreathChartWidget extends StatelessWidget {
  const BuildSingleBreathChartWidget({Key? key , required this.controller}) : super(key: key);


  final SingleBreathChartController controller;

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
            color: mainDarkColor,
          ),
          axisLine: const AxisLine(
            color: mainDarkColor,
          ),
          minorGridLines: const MinorGridLines(
            color: mainDarkColor,
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
