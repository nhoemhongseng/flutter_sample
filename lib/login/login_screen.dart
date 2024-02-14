import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sameple_flutter/component/app_button.dart';
import 'package:sameple_flutter/component/app_text_field.dart';
import 'package:sameple_flutter/constant/app_rout.dart';
import 'package:sameple_flutter/home/home_screen.dart';
import 'package:sameple_flutter/login/login_controller.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final LoginController _controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _renderBody(),
    );
  }

  Widget _renderBody() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.symmetric(vertical: 20),
            width: 120,
            height: 120,
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Colors.green),
            child: const Text(
              "YK",
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
          ),
          AppTextFiled(
            controller: _controller.userNameController,
            hintText: "Username",
            prefixIcon: Icons.person_3,
          ),
          const SizedBox(height: 10),
          AppTextFiled(
            controller: _controller.passwordController,
            hintText: "Password",
            obscureText: true,
            prefixIcon: Icons.verified,
          ),
          const SizedBox(height: 30),
          AppButton(
            title: "Login",
            onPressed: _controller.login,
          )
        ],
      ),
    );
  }
}
