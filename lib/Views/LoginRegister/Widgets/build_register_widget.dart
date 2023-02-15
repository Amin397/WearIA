import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healthble/Controllers/LoginRegister/login_register_controller.dart';

import '../../../Consts/measures.dart';
import '../../../Utils/widget_utils.dart';

class BuildRegisterWidget extends StatelessWidget {
  const BuildRegisterWidget({Key? key, required this.controller})
      : super(key: key);

  final LoginRegisterController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: Get.width * .15,
        vertical: Get.width * .1,
      ),
      height: Get.height * .65,
      width: Get.width,
      child: Column(
        children: [
          WidgetUtils.textField(
            width: Get.width,
            height: Get.height * .07,
            hint: 'Name',
            controller: controller.nameTextController,
            textStyle: const TextStyle(
              color: mainDarkColor,
              fontSize: 16.0,
            ),
          ),
          WidgetUtils.textField(
            width: Get.width,
            height: Get.height * .07,
            hint: 'Phone number / Email',
            controller: controller.phoneOrEmailController,
            textStyle: const TextStyle(
              color: mainDarkColor,
              fontSize: 16.0,
            ),
          ),
          WidgetUtils.textField(
            width: Get.width,
            height: Get.height * .07,
            hint: 'Password',
            obscureText: true,
            controller: controller.passwordController,
            textStyle: const TextStyle(
              color: mainDarkColor,
              fontSize: 16.0,
            ),
          ),
          WidgetUtils.textField(
            width: Get.width,
            height: Get.height * .07,
            hint: 'Confirm Password',
            obscureText: true,
            controller: controller.confirmPasswordController,
            textStyle: const TextStyle(
              color: mainDarkColor,
              fontSize: 16.0,
            ),
          ),
          SizedBox(
            height: Get.height * .05,
          ),
          InkWell(
            onTap: (){
              controller.action();
            },
            child: Container(
              width: Get.width,
              height: Get.height * .05,
              decoration: BoxDecoration(
                color: mainRedColor,
                borderRadius: radiusAll16,
                boxShadow: blackShadow(
                  offset: const Offset(0.0, 3.0),
                ),
              ),
              child: const Center(
                child: AutoSizeText(
                  'Sign Up',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: Get.width,
            height: Get.height * .05,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Do you have an account?',
                  style: TextStyle(
                    color: mainDarkColor,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    controller.signUp();
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
