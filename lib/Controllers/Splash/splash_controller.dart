import 'package:get/get.dart';
import 'package:healthble/Utils/rout_utils.dart';

class SplashController extends GetxController{




  @override
  void onInit() {
    Future.delayed(const Duration(seconds: 3) , (){
      Get.offAllNamed(NameRouts.loginRegister);
    });
    super.onInit();
  }
}