
import 'package:get/get.dart';
import '../Views/Home/home_screen.dart';
import '../Views/Splash/splash_screen.dart';

class NameRouts{
  static const String splash = '/';
  static const String home = '/home';
}

class PageRout {
  static List<GetPage> pages = [

    GetPage(
      name: NameRouts.splash,
      page: () => SplashScreen(),
      transition: Transition.size,
    ),
    GetPage(
      name: NameRouts.home,
      page: () => HomeScreen(),
      transition: Transition.size,
    ),
  ];
}