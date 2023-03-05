import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../Consts/measures.dart';
import '../../Controllers/SingleBreathChart/single_breath_chart_controller.dart';
import 'Widgets/build_single_breath_chart_widget.dart';



class SingleBreathChartScreen extends StatelessWidget {
  SingleBreathChartScreen({Key? key}) : super(key: key);


  final SingleBreathChartController controller = Get.put(SingleBreathChartController());

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        SystemChrome.setPreferredOrientations([
          DeviceOrientation.portraitDown,
          DeviceOrientation.portraitUp,
        ]);

        Future.delayed(const Duration(milliseconds: 300), () {
          Get.back();
        });

        return false;
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SizedBox(
          height: Get.height,
          width: Get.width,
          child: SafeArea(
            child: Column(
              children: [
                _buildAppBar(),
                BuildSingleBreathChartWidget(
                  controller:controller,
                ),
                _buildSingleHeartParametersWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildAppBar() {
    return Padding(
      padding: paddingSymmetricH12,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: mainDarkColor,
            ),
            onPressed: () {
              SystemChrome.setPreferredOrientations([
                DeviceOrientation.portraitDown,
                DeviceOrientation.portraitUp,
              ]);

              Future.delayed(
                const Duration(milliseconds: 300),
                    () {
                  Get.back();
                },
              );
            },
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.share_outlined,
                  color: Color(0XFF2F66BD),
                ),
              ),
              const SizedBox(
                width: 8.0,
              ),
              InkWell(
                onTap: () {},
                child: SvgPicture.asset(
                  'assets/images/svg/pdf.svg',
                  height: Get.height * .07,
                  width: Get.height * .07,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildSingleHeartParametersWidget() {
    return Expanded(
      child: Container(
        padding: paddingAll12,
        height: double.maxFinite,
        width: double.maxFinite,
        child: Row(
          children: [
            SvgPicture.asset(
              'assets/images/svg/breath.svg',
              width: Get.height * .08,
              height: Get.height * .08,
            ),
            Expanded(
              child: SizedBox(
                height: double.maxFinite,
                width: double.maxFinite,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      customBorder: RoundedRectangleBorder(
                        borderRadius: radiusAll36,
                      ),
                      onTap: () {
                        controller.openBleDevicesModal(
                        );
                      },
                      child: Container(
                        height: Get.height * .07,
                        width: Get.width * .2,
                        decoration: BoxDecoration(
                          boxShadow: whiteShadow(),
                          borderRadius: radiusAll36,
                          color: const Color(0XFF2F66BD),
                          border: Border.all(
                            color: const Color(0XFF2F66BD),
                            width: 1.0,
                          ),
                        ),
                        child: const Center(
                          child: AutoSizeText(
                            'Connect',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: Get.width * .01,
                    ),
                    Container(
                      height: Get.height * .07,
                      width: Get.width * .2,
                      decoration: BoxDecoration(
                        borderRadius: radiusAll36,
                        color: mainRedColor,
                      ),
                      child: const Center(
                        child: AutoSizeText(
                          'Disconnect',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
            // _buildMainPart(),
            // _buildConnectionButton(),
          ],
        ),
      ),
    );
  }


}
