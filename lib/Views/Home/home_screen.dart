import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healthble/Consts/measures.dart';

import '../../Controllers/Home/home_controller.dart';
import 'Widget/build_activity_widget.dart';
import 'Widget/build_breathing_chart_widget.dart';
import 'Widget/build_connection_buttons_widget.dart';
import 'Widget/build_drawer_widget.dart';
import 'Widget/build_heart_bit_chart_widget.dart';
import 'Widget/build_heart_rate_chart_widget.dart';
import 'Widget/build_respiration_rate_chart_widget.dart';
import 'Widget/build_title_widget.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: controller.drawerOpenerKey,
      backgroundColor: bgColor,
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
                  // physics: const BouncingScrollPhysics(),
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
                        height: Get.height * .03,
                      ),
                      Container(
                        width: Get.width,
                        // height: Get.height * .88,
                        padding: paddingAll32,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(24.0),
                          ),
                          color: Colors.white,
                          boxShadow: blackShadow(
                            offset: const Offset(0.0, 3.0),
                          ),
                        ),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Heart Rate',
                                style: TextStyle(
                                  color: blackTextColor,
                                  fontSize: 20.0,
                                  shadows: blackShadow(),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(height: Get.height * .01,),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                '140 bpm',
                                style: TextStyle(
                                  color: mainRedColor,
                                  fontSize: 18.0,
                                  shadows: blackShadow(),
                                  // fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(height: Get.height * .01,),
                            BuildHeartRateChartWidget(
                              controller: controller,
                            ),
                            SizedBox(height: Get.height * .06,),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Respiration Rate',
                                style: TextStyle(
                                  color: blackTextColor,
                                  fontSize: 20.0,
                                  shadows: blackShadow(),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(height: Get.height * .01,),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                '98 bpm',
                                style: TextStyle(
                                  color: blueTextColor,
                                  fontSize: 18.0,
                                  shadows: blackShadow(),
                                  // fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(height: Get.height * .01,),
                            BuildRespirationRateChartWidget(
                              controller: controller,
                            ),
                            SizedBox(height: Get.height * .06,),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Activity',
                                style: TextStyle(
                                  color: blackTextColor,
                                  fontSize: 22.0,
                                  shadows: blackShadow(),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(height: Get.height * .02,),
                            BuildActivityWidget(
                              controller:controller,
                            ),
                          ],
                        ),
                      )
                      // SizedBox(
                      //   height: Get.height * .02,
                      // ),
                      // BuildMoreHealthDetailWidget(
                      //   controller: controller,
                      // ),
                      // SizedBox(
                      //   height: Get.height * .05,
                      // ),
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
