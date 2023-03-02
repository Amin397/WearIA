import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healthble/Controllers/SingleActivity/single_activity_controller.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../Consts/measures.dart';
import '../../../Controllers/Home/home_controller.dart';

class BuildStepsActivityWidget extends StatelessWidget {
  const BuildStepsActivityWidget({Key? key, required this.controller})
      : super(key: key);

  final SingleActivityController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: paddingAll24,
      width: Get.width,
      height: Get.height * .4,
      child: Column(
        children: [
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Steps',
              style: TextStyle(
                fontSize: 24.0,
                color: mainColor,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.0,
              ),
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              '12.23',
              style: TextStyle(
                fontSize: 18.0,
                color: mainRedColor,
                letterSpacing: 1.0,
              ),
            ),
          ),
          SizedBox(
            height: Get.height * .01,
          ),
          Expanded(
            child: SizedBox(
              height: double.maxFinite,
              width: double.maxFinite,
              child: SfCartesianChart(
                backgroundColor: mainDarkColor,
                plotAreaBackgroundColor: mainDarkColor,
                borderColor: mainDarkColor,
                plotAreaBorderColor: mainDarkColor,
                primaryXAxis: CategoryAxis(),
                primaryYAxis: NumericAxis(
                  minimum: 0,
                  maximum: 60,
                  interval: 15,
                  borderColor: mainDarkColor,
                  majorGridLines: const MajorGridLines(
                    color: mainDarkColor,
                  ),
                  axisLine: const AxisLine(
                    color: Colors.white,
                  ),
                ),
                tooltipBehavior: controller.stepsTooltip,
                series: <ChartSeries<ChartData, String>>[
                  ColumnSeries<ChartData, String>(
                    dataSource: controller.stepsData,
                    xValueMapper: (ChartData data, _) => data.x,
                    yValueMapper: (ChartData data, _) => data.y,
                    name: 'Gold',
                    color: Colors.white,
                    width: .3,
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(4.0),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
