import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:healthble/Consts/measures.dart';

import '../../Controllers/SingleHeartChart/single_heart_chart_controller.dart';
import 'Widgets/build_single_heart_chart_widget.dart';
import 'Widgets/build_single_heart_parameters_widget.dart';

class SingleHeartChartScreen extends StatelessWidget {
  SingleHeartChartScreen({Key? key}) : super(key: key);

  final SingleHeartChartController controller =
      Get.put(SingleHeartChartController());

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
                BuildSingleHeartChartWidget(
                  controller:controller,
                ),
                BuildSingleHeartParametersWidget(
                  controller:controller,
                ),
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
}
