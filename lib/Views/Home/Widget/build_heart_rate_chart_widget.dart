import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healthble/Consts/measures.dart';
import 'package:healthble/Controllers/Home/home_controller.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class BuildHeartRateChartWidget extends StatelessWidget {
  const BuildHeartRateChartWidget({Key? key, required this.controller})
      : super(key: key);

  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: Get.height * .2,
      child: SfCartesianChart(
        primaryXAxis: CategoryAxis(),
        primaryYAxis: NumericAxis(
          minimum: 0,
          maximum: 40,
          interval: 10,
        ),
        tooltipBehavior: controller.tooltip,
        series: <ChartSeries<ChartData, String>>[
          AreaSeries<ChartData, String>(
              dataSource: controller.heartRateData,
              xValueMapper: (ChartData data, _) => data.x,
              yValueMapper: (ChartData data, _) => data.y,
              name: 'Gold',
              borderColor: Colors.red,
              gradient: LinearGradient(colors: [
                mainColor.withOpacity(.8),
                mainRedColor.withOpacity(.8)
              ]))
        ],
      ),
    );
  }
}
