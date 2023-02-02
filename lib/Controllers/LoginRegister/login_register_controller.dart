import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:healthble/Utils/rout_utils.dart';

class LoginRegisterController extends GetxController{
  RxBool isLogin = true.obs;

  TextEditingController phoneOrEmailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController nameTextController = TextEditingController();

  void signUp() {
    phoneOrEmailController.clear();
    nameTextController.clear();
    passwordController.clear();
    confirmPasswordController.clear();
    isLogin(!isLogin.value);
  }

  void action() {
    if(isLogin.isTrue){
      Get.offAllNamed(NameRouts.home);
    }
  }



}