import 'package:cafe/presentation/core/constant/colors.dart';
import 'package:flutter/material.dart';

class CustomTextFieldWidget extends StatelessWidget {
  const CustomTextFieldWidget({
    super.key,
    required this.hintText,
    required this.controller,
    this.type = TextInputType.phone,
  });

  final String hintText;
  final TextInputType type;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: type,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: AppColors.color230,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: AppColors.primaryColor
          ),
        ),
        hintText: hintText,
        hintStyle: const TextStyle(
          fontSize: 17,
          color: AppColors.color108,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
