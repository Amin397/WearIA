import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healthble/Consts/measures.dart';

import '../../Controllers/LoginRegister/login_register_controller.dart';
import 'Widgets/build_login_widget.dart';
import 'Widgets/build_register_widget.dart';

class LoginRegisterScreen extends StatelessWidget {
  LoginRegisterScreen({Key? key}) : super(key: key);

  final LoginRegisterController controller = Get.put(LoginRegisterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: Get.height,
        width: Get.width,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            _buildCircle(),
            _buildCircle1(),
            _buildCircle2(),
            _buildLogo(),
            Obx(
              () => Align(
                alignment: Alignment.bottomCenter,
                child: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 400),
                  transitionBuilder: (widget, animation) => ScaleTransition(
                    scale: animation,
                    child: widget,
                  ),
                  child: (controller.isLogin.isTrue)
                      ? BuildLoginWidget(
                          controller: controller,
                        )
                      : BuildRegisterWidget(
                          controller: controller,
                        ),
                ),
              ),
            ),
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
      child: Container(
        margin: EdgeInsets.symmetric(
          vertical: Get.height * .1,
        ),
        height: Get.height * .25,
        width: Get.width * .5,
        child: Column(
          children: const [
            Expanded(
              child: SizedBox(
                height: double.maxFinite,
                width: double.maxFinite,
                child: Image(
                  image: AssetImage(
                    'assets/images/logo.png',
                  ),
                ),
              ),
            ),
            Text(
              'WearIA',
              style: TextStyle(
                color: mainDarkColor,
                fontSize: 45.0,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
