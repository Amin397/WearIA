import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Consts/measures.dart';
import '../../Controllers/SingleActivity/single_activity_controller.dart';

class SingleActivityScreen extends StatelessWidget {
  SingleActivityScreen({Key? key}) : super(key: key);

  final SingleActivityController controller =
      Get.put(SingleActivityController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainDarkColor,
      body: Container(
        height: Get.height,
        width: Get.width,
        padding: paddingAll16,
        child: Column(
          children: [
            SizedBox(
              height: Get.height * .03,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: InkWell(
                customBorder: RoundedRectangleBorder(
                  borderRadius: radiusAll36,
                ),
                onTap: (){
                  Get.back();
                },
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.arrow_back_ios_outlined,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: paddingAll16,
                height: double.maxFinite,
                width: double.maxFinite,
                child: Column(
                  children: [
                    _buildDatePart(),
                    _buildStepsPart(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildDatePart() {
    return Align(
      alignment: Alignment.centerRight,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          AutoSizeText(
            'Monday',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 6.0,
          ),
          AutoSizeText(
            'oct20 ,2022',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStepsPart() {
    return Container();
  }
}
