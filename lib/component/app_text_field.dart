import 'package:flutter/material.dart';

class AppTextFiled extends StatelessWidget {
  const AppTextFiled(
      {super.key,
      required this.controller,
      this.textInputType = TextInputType.text,
      required this.hintText,
      this.obscureText = false,
      this.prefixIcon});

  final TextEditingController controller;
  final TextInputType textInputType;
  final String hintText;
  final bool obscureText;
  final IconData? prefixIcon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.start,
      controller: controller,
      keyboardType: textInputType,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(fontSize: 16),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(
            width: 1,
            style: BorderStyle.none,
          ),
        ),
        filled: true,
        contentPadding: const EdgeInsets.all(16),
        fillColor: Colors.grey[100],
        prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
      ),
    );
  }
}
