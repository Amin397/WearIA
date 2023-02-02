import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{



  GlobalKey<ScaffoldState> drawerOpenerKey = GlobalKey();



  void openDrawer(){
    drawerOpenerKey.currentState!.openDrawer();
  }
}