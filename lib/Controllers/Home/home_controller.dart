import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{



  GlobalKey<ScaffoldState> drawerOpenerKey = GlobalKey();



  void openDrawer(){
    drawerOpenerKey.currentState!.openDrawer();
  }

  List<SalesData> data = [
    SalesData('5Ms', 35),
    SalesData('10Ms', 28),
    SalesData('15Ms', 34),
    SalesData('20Ms', 32),
    SalesData('25Ms', 40)
  ];


}

class SalesData {
  SalesData(this.year, this.sales);

  final String year;
  final double sales;
}


