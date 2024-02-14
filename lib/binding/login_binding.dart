import 'package:get/get.dart';
import 'package:sameple_flutter/login/login_controller.dart';

class LoginBiding extends Bindings {
  @override
  void dependencies() {
    Get.put(LoginController(userRepository: Get.find()));
  }
}
