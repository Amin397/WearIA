import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Consts/measures.dart';
import '../../Controllers/SingleActivity/single_activity_controller.dart';
import 'Widgets/build_activity_level_activity_widget.dart';
import 'Widgets/build_more_activity_data_widget.dart';
import 'Widgets/build_speed_activity_widget.dart';
import 'Widgets/build_steps_activity_widget.dart';

class SingleActivityScreen extends StatelessWidget {
  SingleActivityScreen({Key? key}) : super(key: key);

  final SingleActivityController controller =
      Get.put(SingleActivityController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainDarkColor,
      body: SizedBox(
        height: Get.height,
        width: Get.width,
        // padding: paddingAll16,
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
                onTap: () {
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
              child: SizedBox(
                height: double.maxFinite,
                width: double.maxFinite,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      _buildDatePart(),
                      SizedBox(
                        height: Get.height * .03,
                      ),
                      BuildStepsActivityWidget(
                        controller: controller,
                      ),
                      SizedBox(
                        height: Get.height * .07,
                      ),
                      BuildSpeedActivityWidget(
                        controller: controller,
                      ),
                      SizedBox(
                        height: Get.height * .07,
                      ),
                      BuildActivityLevelActivityWidget(
                        controller: controller,
                      ),
                      SizedBox(
                        height: Get.height * .07,
                      ),
                      BuildMoreActivityDataWidget(
                        controller: controller,
                      ),
                    ],
                  ),
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
      child: Container(
        padding: paddingAll8,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                AutoSizeText(
                  'Monday',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(Icons.keyboard_arrow_down , color: Colors.white,)
              ],
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
      ),
    );
  }
}
