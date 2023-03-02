import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healthble/Controllers/SingleActivity/single_activity_controller.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../Consts/measures.dart';
import '../../../Controllers/Home/home_controller.dart';

class BuildActivityLevelActivityWidget extends StatelessWidget {
  const BuildActivityLevelActivityWidget({Key? key, required this.controller})
      : super(key: key);

  final SingleActivityController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: paddingAll24,
      width: Get.width,
      height: Get.height * .35,
      child: Column(
        children: [
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Activity Level',
              style: TextStyle(
                fontSize: 24.0,
                color: mainColor,
                fontWeight: FontWeight.bold,
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
                  minorGridLines: const MinorGridLines(
                    color: mainDarkColor,
                  ),
                ),
                tooltipBehavior: controller.speedTooltip,
                series: <ChartSeries<ChartData, String>>[
                  BarSeries<ChartData, String>(
                    dataSource: controller.activityLevelData,
                    xValueMapper: (ChartData data, _) => data.x,
                    yValueMapper: (ChartData data, _) => data.y,
                    name: 'Activity',
                    color: Colors.white,
                    borderRadius: const BorderRadius.horizontal(
                      right: Radius.circular(2.0),
                    ),
                    width: .4,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
