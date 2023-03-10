import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:healthble/Utils/rout_utils.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../Views/Home/Widget/ble_devices_modal.dart';
import '../../main.dart';

class HomeController extends GetxController {
  late ScrollController scrollController;
  RxBool isWhite = false.obs;

  late List<ChartData> heartRateData;
  late TooltipBehavior tooltip;

  final GlobalKey<ScaffoldState> drawerOpenerKey = GlobalKey();

  @override
  void onInit() {
    scrollController = ScrollController(initialScrollOffset: 0.0);
    scrollController.addListener(() {
      if (scrollController.position.pixels > 670.0) {
        isWhite(true);
      } else {
        isWhite(false);
      }
    });

    heartRateData = [
      ChartData('80', 12),
      ChartData('96', 15),
      ChartData('83', 30),
      ChartData('94', 6.4),
      ChartData('87', 14)
    ];
    tooltip = TooltipBehavior(
      enable: true,
      duration: 5.0

    );
    super.onInit();
  }

  void openDrawer({
    required BuildContext context,
  }) {
    drawerOpenerKey.currentState!.openDrawer();
    //   // Scaffold.of(context).openDrawer();
    //
  }

  List<SalesData> data = [
    SalesData('5Ms', 35),
    SalesData('10Ms', 28),
    SalesData('15Ms', 34),
    SalesData('20Ms', 32),
    SalesData('25Ms', 40)
  ];

  void openBleDevicesModal({
    required BuildContext context,
  }) async {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      enableDrag: false,
      isDismissible: false,
      isScrollControlled: true,
      builder: (BuildContext context) => BleDevicesModal(),
    );
  }

  void goToActivity() {
    Get.toNamed(NameRouts.singleActivity);
  }

  void goToSingleHeartBitChart() {

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]).then((value) {
      Future.delayed(const Duration(milliseconds: 200) , (){
        Get.toNamed(NameRouts.singleHeartChart);
      });
    });



  }

  void goToSingleBreathBitChart() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]).then((value) {
      Future.delayed(const Duration(milliseconds: 200) , (){
        Get.toNamed(NameRouts.singleBreathChart);
      });
    });

  }
}

class SalesData {
  SalesData(this.year, this.sales);

  final String year;
  final double sales;
}

class ChartData {
  ChartData(this.x, this.y);

  final String x;
  final double y;
}
