import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get.dart';

import '../../../Controllers/Home/home_controller.dart';


class BuildBreathingChartWidget extends StatelessWidget {
  const BuildBreathingChartWidget({Key? key , required this.controller}) : super(key: key);


  final HomeController controller;

  @override
  Widget build(BuildContext context) {

    return AnimationConfiguration.synchronized(
      child: SlideAnimation(
        child: FadeInAnimation(
          duration: const Duration(milliseconds: 1500),
          child: Container(
            width: Get.width,
            height: Get.height * .25,
            color: Colors.red,
          ),
        ),
      ),
    );
  }

}
