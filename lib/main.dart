

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Utils/rout_utils.dart';
import 'Views/Splash/splash_screen.dart';




void main()async{


  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: PageRout.pages,
      initialRoute: NameRouts.splash,
      home: SplashScreen(),
    ),
  );



}