import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healthble/Controllers/Home/home_controller.dart';



class BuildHeartBitChartWidget extends StatelessWidget {
  const BuildHeartBitChartWidget({Key? key , required this.controller}) : super(key: key);


  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: Get.height * .25,
      color: Colors.red,
    );
  }
}
