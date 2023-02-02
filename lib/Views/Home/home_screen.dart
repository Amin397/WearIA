import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healthble/Consts/measures.dart';

import '../../Controllers/Home/home_controller.dart';
import 'Widget/build_breathing_chart_widget.dart';
import 'Widget/build_connection_buttons_widget.dart';
import 'Widget/build_drawer_widget.dart';
import 'Widget/build_heart_bit_chart_widget.dart';
import 'Widget/build_more_health_detail_widget.dart';
import 'Widget/build_title_widget.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: controller.drawerOpenerKey,
      drawer: BuildDrawerWidget(
        controller: controller,
      ),
      body: SizedBox(
        height: Get.height,
        width: Get.width,
        child: Column(
          children: [
            SizedBox(
              height: Get.height * .03,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: IconButton(
                icon: const Icon(
                  Icons.menu,
                  color: mainDarkColor,
                ),
                onPressed: () {
                  controller.openDrawer();
                },
              ),
            ),
            SizedBox(
              height: Get.height * .01,
            ),
            Expanded(
              child: SizedBox(
                height: double.maxFinite,
                width: double.maxFinite,
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      BuildTitleWidget(
                        controller: controller,
                      ),
                      BuildHeartBitChartWidget(
                        controller: controller,
                      ),
                      SizedBox(
                        height: Get.height * .03,
                      ),
                      BuildBreathingChartWidget(
                        controller: controller,
                      ),
                      SizedBox(
                        height: Get.height * .03,
                      ),
                      BuildConnectionButtonsWidget(
                        controller: controller,
                      ),
                      SizedBox(
                        height: Get.height * .02,
                      ),
                      BuildMoreHealthDetailWidget(controller: controller),
                      SizedBox(
                        height: Get.height * .05,
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
