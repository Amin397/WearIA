import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../Views/Home/Widget/ble_devices_modal.dart';
import '../Home/home_controller.dart';

class SingleBreathChartController extends GetxController{





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



  void openBleDevicesModal() async {
    showModalBottomSheet(
      context: Get.context!,
      backgroundColor: Colors.transparent,
      enableDrag: false,
      isDismissible: false,
      isScrollControlled: true,
      builder: (BuildContext context) => BleDevicesModal(),
    );
  }








}