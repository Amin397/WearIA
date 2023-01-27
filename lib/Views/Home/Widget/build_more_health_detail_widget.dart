import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healthble/Controllers/Home/home_controller.dart';

import '../../../Consts/measures.dart';

class BuildMoreHealthDetailWidget extends StatelessWidget {
  const BuildMoreHealthDetailWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * .42,
      width: Get.width,
      padding: paddingAll12,
      child: Column(
        children: [
          Flexible(
            flex: 1,
            child: SizedBox(
              height: double.maxFinite,
              width: double.maxFinite,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: double.maxFinite,
                    width: Get.width * .21,
                    padding: paddingAll4,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.blue.withAlpha(130),
                          Colors.blue.withAlpha(130),
                          Colors.red.withAlpha(50),
                          Colors.red.withAlpha(200),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: radiusAll16,
                      boxShadow: shadow(),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Icon(
                          Icons.favorite_border,
                          color: Colors.white,
                          size: 35.0,
                        ),
                        AutoSizeText(
                          'Heart Rate',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          '98',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                          ),
                        )
                      ],
                    ),
                  ),
                  _buildItem(
                    icon: Icons.ac_unit_outlined,
                    title: 'Respiration Rate',
                    data: '97',
                  ),
                  _buildItem(
                    icon: Icons.do_not_step_rounded,
                    title: 'Steps',
                    data: '97',
                  ),
                  _buildItem(
                    icon: Icons.social_distance,
                    title: 'Distance',
                    data: '97',
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: Get.height * .02,
          ),
          Flexible(
            flex: 1,
            child: SizedBox(
              height: double.maxFinite,
              width: double.maxFinite,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildItem(
                    icon: Icons.speed,
                    title: 'Last Speed',
                    data: '97',
                  ),
                  _buildItem(
                    icon: Icons.local_fire_department_outlined,
                    title: 'Calories',
                    data: '97',
                  ),
                  _buildItem(
                    icon: Icons.corporate_fare_rounded,
                    title: 'Step Rate',
                    data: '97',
                  ),
                  _buildItem(
                    icon: Icons.ssid_chart,
                    title: 'Activity Level',
                    data: '97',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildItem({
    required IconData icon,
    required String title,
    required String data,
  }) {
    return Container(
      height: double.maxFinite,
      width: Get.width * .21,
      decoration: BoxDecoration(
        color: Colors.blue.withAlpha(150),
        borderRadius: radiusAll16,
        boxShadow: shadow(),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 35.0,
          ),
          AutoSizeText(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
          Text(
            data,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
            ),
          )
        ],
      ),
    );
  }
}
