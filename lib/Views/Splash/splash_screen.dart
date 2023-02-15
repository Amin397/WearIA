import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../Consts/measures.dart';
import '../../Controllers/Splash/splash_controller.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);

  final SplashController controller = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFBBE9F6),
      body: SizedBox(
        height: Get.height,
        width: Get.width,
        child: Stack(
          children: [
            _buildCircle(),
            _buildCircle1(),
            _buildCircle2(),
            _buildLogo(),
            _buildText(),
            _buildLoading(),
          ],
        ),
      ),
    );
  }

  Widget _buildCircle() {
    return Positioned(
      top: -Get.height * .1,
      left: -Get.width * .1,
      child: Container(
        height: Get.height * .4,
        width: Get.height * .4,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: mainColor,
        ),
      ),
    );
  }

  Widget _buildCircle1() {
    return Positioned(
      bottom: -Get.height * .1,
      left: -Get.width * .4,
      child: Container(
        height: Get.height * .4,
        width: Get.height * .4,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: mainColor,
        ),
      ),
    );
  }

  Widget _buildCircle2() {
    return Positioned(
      bottom: -Get.height * .1,
      left: Get.width * .2,
      child: Container(
        height: Get.height * .25,
        width: Get.height * .25,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: mainColor,
        ),
      ),
    );
  }

  Widget _buildLogo() {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: paddingSymmetricV36,
        child: Image(
          image: const AssetImage(
            'assets/images/logo.png',
          ),
          height: Get.height * .3,
          width: Get.height * .3,
        ),
      ),
    );
  }

  Widget _buildLoading() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: paddingSymmetricV36,
        child: Lottie.asset(
          'assets/anims/Loading .json',
          height: Get.height * .2,
          width: Get.height * .2,
        ),
      ),
    );
  }

  Widget _buildText() {
    return Center(
      child: Obx(() => AnimatedContainer(
            width: Get.width,
            height: (controller.isStarted.isTrue) ? Get.height * .2 : 0.0,
            duration: const Duration(seconds: 1),
            child: Center(
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 1100),
                opacity: (controller.isStarted.isTrue) ? 1.0 : 0.0,
                child: const Text(
                  'Wearia',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 100.0,
                    shadows: [
                      BoxShadow(
                          color: Colors.black38,
                          spreadRadius: 10.0,
                          blurRadius: 10.0,
                          offset: Offset(0.0, 3.0)),
                    ],
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          )),
    );
  }
}
