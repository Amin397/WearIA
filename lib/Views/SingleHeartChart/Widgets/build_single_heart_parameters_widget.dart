import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:healthble/Consts/measures.dart';
import 'package:healthble/Controllers/SingleHeartChart/single_heart_chart_controller.dart';

class BuildSingleHeartParametersWidget extends StatelessWidget {
  const BuildSingleHeartParametersWidget({Key? key, required this.controller})
      : super(key: key);

  final SingleHeartChartController controller;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: paddingAll12,
        height: double.maxFinite,
        width: double.maxFinite,
        child: Row(
          children: [
            SvgPicture.asset(
              'assets/images/svg/heart.svg',
              width: Get.height * .08,
              height: Get.height * .08,
            ),
            _buildMainPart(),
            _buildConnectionButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildMainPart() {
    return Expanded(
      child: Container(
        padding: paddingSymmetricH24,
        height: double.maxFinite,
        width: double.maxFinite,
        child: Column(
          children: [
            Flexible(
              flex: 1,
              child: SizedBox(
                height: double.maxFinite,
                width: double.maxFinite,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'HR (bpm):',
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      'SDNN (bpm):',
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      'SDSD (bpm):',
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      'SD2 (bpm):',
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: SizedBox(
                height: double.maxFinite,
                width: double.maxFinite,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'RR (bpm):',
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      'RMSSD (bpm):',
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      'SD1 (bpm):',
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      'Stress:',
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildConnectionButton() {
    return SizedBox(
      width: Get.width * .2,
      height: double.maxFinite,
      child: Column(
        children: [
          Flexible(
            flex: 1,
            child: Container(
              height: double.maxFinite,
              width: double.maxFinite,
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
          const SizedBox(
            height: 6.0,
          ),
          Flexible(
            flex: 1,
            child: Container(
              height: double.maxFinite,
              width: double.maxFinite,
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
          ),
        ],
      ),
    );
  }
}
