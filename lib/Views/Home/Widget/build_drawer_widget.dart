import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healthble/Consts/measures.dart';
import 'package:healthble/Controllers/Home/home_controller.dart';
import 'package:healthble/Utils/rout_utils.dart';

class BuildDrawerWidget extends StatelessWidget {
  const BuildDrawerWidget({Key? key, required this.controller})
      : super(key: key);

  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height,
      width: Get.width * .6,
      decoration: const BoxDecoration(
        color: mainColor,
        borderRadius: BorderRadius.horizontal(
          right: Radius.circular(12.0),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: Get.height * .03,
              horizontal: Get.width * .03,
            ),
            child: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: mainRedColor,
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: double.maxFinite,
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                vertical: Get.height * .05,
                horizontal: Get.width * .07,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildMenuText(
                    title: 'Profile',
                    function: () {
                      Get.back();
                      Get.toNamed(NameRouts.profile);
                    },
                  ),
                  _buildMenuText(
                    title: 'Help',
                    function: () {
                      Get.back();
                      // Get.toNamed(NameRouts.profile);
                    },
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildMenuText({
    required String title,
    required Function() function,
  }) {
    return InkWell(
      onTap: function,
      child: Container(
        margin: paddingSymmetricV16,
        width: double.maxFinite,
        padding: paddingSymmetricV4,
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
          ),
        ),
      ),
    );
  }
}
