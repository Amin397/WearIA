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
    return SizedBox(
      height: Get.height * .05,
      width: Get.width * .8,
      child: Row(
        children: [
          Flexible(
            flex: 1,
            child: Container(
              height: double.maxFinite,
              width: double.maxFinite,
              decoration: BoxDecoration(
                borderRadius: radiusAll36,
                border: Border.all(
                  color: mainColor,
                  width: 2.0,
                ),
              ),
              child: const Center(
                child: AutoSizeText(
                  'Connect',
                  style: TextStyle(
                    color: mainColor,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: Get.width * .05,
          ),
          Flexible(
            flex: 1,
            child: Container(
              height: double.maxFinite,
              width: double.maxFinite,
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
          ),
        ],
      ),
    );
  }
}
