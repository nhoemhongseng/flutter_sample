import 'package:get/get.dart';
import 'package:sameple_flutter/binding/home_binding.dart';
import 'package:sameple_flutter/binding/login_binding.dart';
import 'package:sameple_flutter/home/home_screen.dart';

import '../login/login_screen.dart';

class AppRout {
  static String loginRout = "/login";
  static String homeRout = "/home";

  static List<GetPage> appPage = [
    GetPage(
        name: loginRout,
        page: () => const LoginScreen(),
        binding: LoginBiding()),
    GetPage(
      name: homeRout,
      page: () => const HomeScreen(),
      binding: HomeBinding(),
    )
  ];
}
