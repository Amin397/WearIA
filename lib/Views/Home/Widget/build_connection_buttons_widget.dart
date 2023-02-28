import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healthble/Consts/measures.dart';

import '../../../Controllers/Home/home_controller.dart';

class BuildConnectionButtonsWidget extends StatelessWidget {
  const BuildConnectionButtonsWidget({Key? key, required this.controller})
      : super(key: key);

  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: paddingSymmetricH12,
      height: Get.height * .045,
      width: Get.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          InkWell(
            customBorder: RoundedRectangleBorder(
              borderRadius: radiusAll36,
            ),
            onTap: () {
              controller.openBleDevicesModal(
                context: context,
              );
            },
            child: Container(
              height: double.maxFinite,
              width: Get.width * .3,
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
            width: Get.width * .03,
          ),
          Container(
            height: double.maxFinite,
            width: Get.width * .3,
            decoration: BoxDecoration(
              borderRadius: radiusAll36,
              border: Border.all(
                color: Colors.red.withOpacity(.5),
                width: 2.0,
              ),
            ),
            child: Center(
              child: AutoSizeText(
                'Disconnect',
                style: TextStyle(
                  color: Colors.red.withOpacity(.5),
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
