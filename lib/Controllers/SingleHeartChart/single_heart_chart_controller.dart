import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../Home/home_controller.dart';

class SingleHeartChartController extends GetxController{



  List<SalesData> data = [
    SalesData('5Ms', 8),
    SalesData('10Ms', 28),
    SalesData('15Ms', 3),
    SalesData('20Ms', 32),
    SalesData('25Ms', 21)
  ];


  late TooltipBehavior tooltip;



  @override
  void onInit() {
    tooltip = TooltipBehavior(
        enable: true,
        duration: 5.0

    );
    super.onInit();
  }
}