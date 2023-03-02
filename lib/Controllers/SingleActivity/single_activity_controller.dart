import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../Home/home_controller.dart';

class SingleActivityController extends GetxController{



  late List<ChartData> stepsData;
  late TooltipBehavior stepsTooltip;
  final List<SalesData> speedData = [
    SalesData(2, 12),
    SalesData(3, 28),
    SalesData(4, 34),
    SalesData(5, 20),
    SalesData(6, 40),
  ];
  late TooltipBehavior speedTooltip;
  late List<ChartData> activityLevelData;
  late TooltipBehavior activityLevelTooltip;



  @override
  void onInit() {


    activityLevelData = [
      ChartData('Rest', 6.4),
      ChartData('Walking', 30),
      ChartData('Jogging', 15),
      ChartData('Running', 22),
    ];

    activityLevelTooltip = TooltipBehavior(enable: true , animationDuration: 15);



    stepsData = [
      ChartData('9:00', 12),
      ChartData('10:00', 15),
      ChartData('12:00', 30),
      ChartData('14:00', 6.4),
      ChartData('17:00', 14)
    ];
    stepsTooltip = TooltipBehavior(enable: true , animationDuration: 15);
    speedTooltip = TooltipBehavior(enable: true , animationDuration: 15);
    super.onInit();
  }
}

class SalesData {
  SalesData(this.hour, this.sales);
  final int hour;
  final double sales;
}

