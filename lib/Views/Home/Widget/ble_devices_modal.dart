import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healthble/Consts/measures.dart';
import 'package:healthble/Controllers/Home/home_controller.dart';

class BleDevicesModal extends StatelessWidget {
  const BleDevicesModal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * .95,
      width: Get.width,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(16.0),
        ),
      ),
      child: Column(
        children: [
          Container(
            width: Get.width,
            height: Get.height * .07,
            padding: paddingSymmetricH16,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Devices',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: mainDarkColor,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: const Icon(
                    Icons.clear,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: Get.height * .02,
          ),
          Expanded(
            child: Container(
              height: double.maxFinite,
              width: Get.width,
              // child: ListView.builder,
            ),
          )
        ],
      ),
    );
  }
}
