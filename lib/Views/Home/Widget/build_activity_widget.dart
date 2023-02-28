import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healthble/Controllers/Home/home_controller.dart';

import '../../../Consts/measures.dart';

class BuildActivityWidget extends StatelessWidget {
  const BuildActivityWidget({Key? key, required this.controller})
      : super(key: key);

  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      child: Column(
        children: [
          _buildStepsPart(),
          SizedBox(
            height: Get.height * .02,
          ),
          _buildSpeedPart(),
          SizedBox(
            height: Get.height * .02,
          ),
          _buildStepRatePart()
        ],
      ),
    );
  }

  Widget _buildStepsPart() {
    return InkWell(
      onTap: (){
        controller.goToActivity();
      },
      child: Container(
        width: Get.width,
        height: Get.height * .1,
        decoration: BoxDecoration(
          color: mainColor,
          borderRadius: radiusAll16,
          boxShadow: blackShadow(),
        ),
        child: Row(
          children: [
            _buildStepItems(
              title: 'Steps',
              value: '10.23',
            ),
            Container(
              width: 1.0,
              height: double.maxFinite,
              margin: paddingSymmetricV8,
              color: Colors.white,
            ),
            _buildStepItems(
              title: 'Distance',
              value: '3.34 m',
            ),
            Container(
              width: 1.0,
              height: double.maxFinite,
              margin: paddingSymmetricV8,
              color: Colors.white,
            ),
            _buildStepItems(
              title: 'Calories',
              value: '350 kcal',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStepItems({
    required String title,
    required String value,
  }) {
    return Flexible(
      flex: 1,
      child: SizedBox(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AutoSizeText(
              title,
              maxLines: 1,
              maxFontSize: 20.0,
              minFontSize: 12.0,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                letterSpacing: .5,
              ),
            ),
            SizedBox(
              height: Get.height * .02,
            ),
            AutoSizeText(
              value,
              maxLines: 1,
              maxFontSize: 20.0,
              minFontSize: 12.0,
              style: const TextStyle(
                color: blueTextColor,
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                letterSpacing: .5,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSpeedPart() {
    return InkWell(
      onTap: (){
        controller.goToActivity();
      },
      child: SizedBox(
        width: Get.width,
        height: Get.height * .1,
        child: Row(
          children: [
            _buildSpeedItem(
              title: 'Last Speed',
              value: '56 km/h',
              boxColor: mainDarkColor,
              valueColor: mainColor,
            ),
            SizedBox(
              width: Get.width * .05,
            ),
            _buildSpeedItem(
              title: 'Activity Level',
              value: 'Rest',
              boxColor: mainRedColor,
              valueColor: mainDarkColor,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSpeedItem({
    required String title,
    required String value,
    required Color boxColor,
    required Color valueColor,
  }) {
    return Flexible(
      flex: 1,
      child: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        decoration: BoxDecoration(
          color: boxColor,
          borderRadius: radiusAll16,
          boxShadow: blackShadow(),
        ),
        padding: paddingAll12,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AutoSizeText(
              title,
              maxLines: 1,
              maxFontSize: 20.0,
              minFontSize: 12.0,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                letterSpacing: .5,
              ),
            ),
            SizedBox(
              height: Get.height * .02,
            ),
            AutoSizeText(
              value,
              maxLines: 1,
              maxFontSize: 20.0,
              minFontSize: 12.0,
              style: TextStyle(
                color: valueColor,
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                letterSpacing: .5,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStepRatePart() {
    return InkWell(
      onTap: (){
        controller.goToActivity();
      },
      child: Container(
        height: Get.height * .1,
        width: Get.width,
        decoration: BoxDecoration(
          color: blueTextColor,
          borderRadius: radiusAll16,
          boxShadow: blackShadow(),
        ),
        padding: paddingAll12,
        child: Row(
          children: [
            Flexible(
              flex: 1,
              child: SizedBox(
                height: double.maxFinite,
                width: double.maxFinite,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const AutoSizeText(
                      'Step Rate',
                      maxLines: 1,
                      maxFontSize: 20.0,
                      minFontSize: 12.0,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: .5,
                      ),
                    ),
                    SizedBox(
                      height: Get.height * .01,
                    ),
                    const AutoSizeText(
                      '2',
                      maxLines: 1,
                      maxFontSize: 20.0,
                      minFontSize: 12.0,
                      style: TextStyle(
                        color: mainRedColor,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: .5,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: Get.width * .02,
            ),
            _buildStepCart(),
          ],
        ),
      ),
    );
  }

  Widget _buildStepCart() {
    return Flexible(
      flex: 2,
      child: SizedBox(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: double.maxFinite,
              height: Get.height * .015,
              decoration: BoxDecoration(
                borderRadius: radiusAll16,
                color: Colors.white,
              ),
              child: Stack(
                children: [
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 500),
                    height: double.maxFinite,
                    width: Get.width * .2,
                    decoration: BoxDecoration(
                      borderRadius: radiusAll16,
                      color: mainRedColor,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8.0,),
            SizedBox(
              width: double.maxFinite,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  AutoSizeText(
                    '0',
                    maxLines: 1,
                    maxFontSize: 20.0,
                    minFontSize: 12.0,
                    style: TextStyle(
                      color: mainRedColor,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: .5,
                    ),
                  ),
                  AutoSizeText(
                    '3',
                    maxLines: 1,
                    maxFontSize: 20.0,
                    minFontSize: 12.0,
                    style: TextStyle(
                      color: mainRedColor,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: .5,
                    ),
                  ),
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
