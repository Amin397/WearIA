import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:healthble/Controllers/LoginRegister/login_register_controller.dart';

import '../../../Consts/measures.dart';
import '../../../Utils/widget_utils.dart';

class BuildLoginWidget extends StatelessWidget {
  const BuildLoginWidget({Key? key, required this.controller})
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
          Container(
            width: Get.width,
            height: Get.height * .05,
            decoration: BoxDecoration(
              borderRadius: radiusAll6,
              color: Colors.white,
              boxShadow: blackShadow(),
              border: Border.all(
                color: Colors.grey.shade700,
                width: 1.0,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/images/svg/googleLogo.svg'),
                SizedBox(width: 6.0,),
                Text('Sign in with Google'),
              ],
            ),
          ),
          SizedBox(height: Get.height * .03,),
          Row(
            children: [
              Expanded(
                child: Container(
                  width: double.maxFinite,
                  height: 1.0,
                  color: Colors.grey,
                ),
              ),
              const Text('  Or  '),
              Expanded(
                child: Container(
                  width: double.maxFinite,
                  height: 1.0,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          SizedBox(height: Get.height * .02,),
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
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {},
              child: const Text('Forgot Password?'),
            ),
          ),
          SizedBox(
            height: Get.height * .05,
          ),
          InkWell(
            onTap: () {
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
                  'Login',
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
                  'If you don\'t have an account ?',
                  style: TextStyle(
                    color: mainDarkColor,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    controller.signUp();
                  },
                  child: const Text(
                    'Sign up',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
