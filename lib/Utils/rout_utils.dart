import 'package:get/get.dart';
import 'package:healthble/Views/Profile/profile_screen.dart';
import '../Views/Home/home_screen.dart';
import '../Views/LoginRegister/login_register_screen.dart';
import '../Views/SingleActivity/single_activity_screen.dart';
import '../Views/Splash/splash_screen.dart';

class NameRouts {
  static const String splash = '/';
  static const String home = '/home';
  static const String profile = '/profile';
  static const String loginRegister = '/loginRegister';
  static const String singleActivity = '/singleActivity';
}

class PageRout {
  static List<GetPage> pages = [
    GetPage(
      name: NameRouts.splash,
      page: () => SplashScreen(),
      transition: Transition.topLevel,
      transitionDuration: const Duration(
        milliseconds: 800,
      ),
    ),
    GetPage(
      name: NameRouts.singleActivity,
      page: () => SingleActivityScreen(),
      transition: Transition.topLevel,
      transitionDuration: const Duration(
        milliseconds: 800,
      ),
    ),
    GetPage(
      name: NameRouts.home,
      page: () => HomeScreen(),
      transition: Transition.topLevel,
      transitionDuration: const Duration(
        milliseconds: 800,
      ),
    ),
    GetPage(
      name: NameRouts.profile,
      page: () => ProfileScreen(),
      transition: Transition.topLevel,
      transitionDuration: const Duration(
        milliseconds: 800,
      ),
    ),
    GetPage(
      name: NameRouts.loginRegister,
      page: () => LoginRegisterScreen(),
      transition: Transition.topLevel,
      transitionDuration: const Duration(
        milliseconds: 800,
      ),
    ),
  ];
}
