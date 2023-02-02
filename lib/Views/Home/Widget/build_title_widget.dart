import 'package:auto_size_text/auto_size_text.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healthble/Consts/measures.dart';
import 'package:healthble/Controllers/Home/home_controller.dart';

class BuildTitleWidget extends StatelessWidget {
  const BuildTitleWidget({Key? key, required this.controller})
      : super(key: key);

  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * .13,
      width: Get.width,
      padding: paddingAll12,
      child: Row(
        children: [
          Flexible(
            flex: 5,
            child: SizedBox(
              height: double.maxFinite,
              width: double.maxFinite,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AutoSizeText(
                    'Hello',
                    style: TextStyle(
                      color: mainDarkColor,
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  AutoSizeText(
                    'SAMANE',
                    style: TextStyle(
                      color: mainRedColor,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Flexible(
            flex: 2,
            child: SizedBox(
              height: double.maxFinite,
              width: double.maxFinite,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AutoSizeText(
                    'Monday',
                    style: TextStyle(
                      color: mainDarkColor,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 6.0,
                  ),
                  AutoSizeText(
                    'oct20 ,2022',
                    style: TextStyle(
                      color: mainDarkColor,
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
