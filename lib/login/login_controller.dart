import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sameple_flutter/constant/app_rout.dart';
import 'package:sameple_flutter/repository/user_repository.dart';

class LoginController extends GetxController {
  final userNameController = TextEditingController(text: "super admin");
  final passwordController = TextEditingController(text: "123");

  final UserRepository userRepository;

  LoginController({required this.userRepository});

  void login() async {
    if (userNameController.text.isEmpty || passwordController.text.isEmpty) {
      Get.showSnackbar(const GetSnackBar(
        message: "Username or Password is required",
      ));
      return;
    }

    try {
      final res = await userRepository.login(
          userNameController.text, passwordController.text);
      if (res.data != null) {
        Get.offAndToNamed(AppRout.homeRout);
      }
    } on DioException catch (e) {
      Get.showSnackbar(GetSnackBar(
        message: e.message ?? "Something went wrong",
      ));
    }
  }
}
