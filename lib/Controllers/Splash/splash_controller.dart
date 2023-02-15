import 'package:get/get.dart';
import 'package:healthble/Utils/rout_utils.dart';

class SplashController extends GetxController{
  RxBool isStarted = false.obs;





  @override
  void onInit() {

    Future.delayed(const Duration(milliseconds: 500) , (){
      isStarted(true);
    });
    Future.delayed(const Duration(seconds: 3) , (){
      Get.offAllNamed(NameRouts.loginRegister);
    });
    super.onInit();
  }
}