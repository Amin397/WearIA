import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healthble/Consts/measures.dart';
import 'package:healthble/Utils/widget_utils.dart';

import '../../Controllers/Profile/profile_controller.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);

  final ProfileController controller = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      resizeToAvoidBottomInset: false,
      body: SizedBox(
        height: Get.height,
        width: Get.width,
        child: Column(
          children: [
            SizedBox(
              height: Get.height * .04,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: IconButton(
                icon: const Icon(
                  Icons.arrow_back_ios_new,
                  color: mainDarkColor,
                ),
                onPressed: () {
                  Get.back();
                },
              ),
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: paddingSymmetricH30,
                child: Text(
                  'Profile',
                  style: TextStyle(
                    color: mainDarkColor,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: paddingAll24,
                padding: paddingAll24,
                height: double.maxFinite,
                width: double.maxFinite,
                child: Column(
                  children: [
                    Container(
                      height: Get.height * .2,
                      width: Get.height * .2,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        boxShadow: blackShadow(
                          offset: const Offset(-2.0, 3.0),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: Get.height * .02,
                    ),
                    const Text(
                      'KIMIA',
                      style: TextStyle(
                        color: mainRedColor,
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: Get.height * .07,
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Account',
                        style: TextStyle(
                          color: mainColor,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
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
                    SizedBox(
                      height: Get.height * .07,
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Health Data',
                        style: TextStyle(
                          color: mainColor,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: Get.width,
                      height: Get.height * .085,
                      child: Row(
                        children: [
                          Flexible(
                            flex: 1,
                            child: SizedBox(
                              height: double.maxFinite,
                              width: double.maxFinite,
                              child: PopupMenuButton<int>(
                                offset: const Offset(0, 50),
                                onSelected: (item) {},
                                child: Obx(
                                  () => WidgetUtils.textField(
                                    width: double.maxFinite,
                                    height: Get.height * .07,
                                    hint: 'Gender',
                                    enable: false,
                                    controller:
                                        controller.genderTextController.value,
                                    textStyle: const TextStyle(
                                      color: mainDarkColor,
                                      fontSize: 16.0,
                                    ),
                                  ),
                                ),
                                itemBuilder: (context) => [
                                  // _buildMuteItem(),
                                  PopupMenuItem<int>(
                                    onTap: () {
                                      controller.selectGender(
                                        value: 0,
                                      );
                                    },
                                    value: 0,
                                    child: Row(
                                      children: [
                                        const Icon(Icons.male),
                                        SizedBox(
                                          width: Get.width * .03,
                                        ),
                                        const Text('Male')
                                      ],
                                    ),
                                  ),
                                  PopupMenuItem<int>(
                                    onTap: () {
                                      controller.selectGender(
                                        value: 1,
                                      );
                                    },
                                    value: 1,
                                    child: Row(
                                      children: [
                                        const Icon(Icons.female),
                                        SizedBox(
                                          width: Get.width * .03,
                                        ),
                                        const Text(
                                          'Female',
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: Get.width * .1,
                          ),
                          Flexible(
                            flex: 1,
                            child: SizedBox(
                              height: double.maxFinite,
                              width: double.maxFinite,
                              child: WidgetUtils.textField(
                                width: double.maxFinite,
                                height: Get.height * .07,
                                hint: 'Age',
                                inputType: TextInputType.number,
                                obscureText: true,
                                controller: controller.ageTextController,
                                textStyle: const TextStyle(
                                  color: mainDarkColor,
                                  fontSize: 16.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: Get.width,
                      height: Get.height * .085,
                      child: Row(
                        children: [
                          Flexible(
                            flex: 1,
                            child: SizedBox(
                              height: double.maxFinite,
                              width: double.maxFinite,
                              child: WidgetUtils.textField(
                                width: double.maxFinite,
                                height: Get.height * .07,
                                hint: 'Height',
                                inputType: TextInputType.number,
                                controller: controller.heightTextController,
                                textStyle: const TextStyle(
                                  color: mainDarkColor,
                                  fontSize: 16.0,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: Get.width * .1,
                          ),
                          Flexible(
                            flex: 1,
                            child: SizedBox(
                              height: double.maxFinite,
                              width: double.maxFinite,
                              child: WidgetUtils.textField(
                                width: double.maxFinite,
                                height: Get.height * .07,
                                hint: 'Width',
                                inputType: TextInputType.number,
                                controller: controller.widthTextController,
                                textStyle: const TextStyle(
                                  color: mainDarkColor,
                                  fontSize: 16.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
