import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healthble/Controllers/SingleActivity/single_activity_controller.dart';

import '../../../Consts/measures.dart';

class BuildMoreActivityDataWidget extends StatelessWidget {
  const BuildMoreActivityDataWidget({Key? key, required this.controller})
      : super(key: key);

  final SingleActivityController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      // height: Get.height * .6,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: blackShadow(),
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(24.0),
        ),
      ),
      padding: paddingAll18,
      child: Column(
        children: [
          _buildDistanceAndCaloriesPart(),
          SizedBox(
            height: Get.height * .1,
          ),
          _buildDescriptionPart(),
          SizedBox(
            height: Get.height * .05,
          ),
        ],
      ),
    );
  }

  Widget _buildDistanceAndCaloriesPart() {
    return SizedBox(
      width: Get.width * .9,
      height: Get.height * .06,
      child: Row(
        children: [
          _buildDataItem(
            title: 'Distance',
            value: '3.34 km',
          ),
          _buildDataItem(
            title: 'Time',
            value: '1 h',
          ),
          _buildDataItem(
            title: 'Calories',
            value: '350',
          ),
        ],
      ),
    );
  }

  Widget _buildDataItem({
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
              maxFontSize: 20.0,
              minFontSize: 10.0,
              maxLines: 1,
              style: const TextStyle(
                color: mainRedColor,
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
                letterSpacing: .5,
              ),
            ),
            const Spacer(),
            AutoSizeText(
              value,
              maxFontSize: 20.0,
              minFontSize: 10.0,
              maxLines: 1,
              style: const TextStyle(
                color: blueTextColor,
                fontSize: 16.0,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDescriptionPart() {
    return SizedBox(
      width: Get.width,
      // height: Get.height * .2,
      child: const Text(
        'In publishing and graphic design,  Lorem ipsum is  a  placeholder  text  commonly used to demonstrate the visual form of a document or a typeface  without  relying on meaningful content.',
        style: TextStyle(
          color: blueTextColor,
          fontSize: 16.0,
        ),

      ),
    );
  }
}
