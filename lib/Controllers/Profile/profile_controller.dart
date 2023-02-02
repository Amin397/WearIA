import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ProfileController extends GetxController{


  TextEditingController phoneOrEmailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController ageTextController = TextEditingController();
  TextEditingController widthTextController = TextEditingController();
  TextEditingController heightTextController = TextEditingController();
  Rx<TextEditingController> genderTextController = TextEditingController().obs;

  void selectGender({required int value}) {
    if(value == 0){
      genderTextController.value.text = 'Male';
    }else{
      genderTextController.value.text = 'Female';
    }
  }

}