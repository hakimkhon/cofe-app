import 'package:cafe/presentation/core/constant/colors.dart';
import 'package:cafe/presentation/core/constant/sizes.dart';
import 'package:flutter/material.dart';

class CustomTextFieldWidget extends StatelessWidget {
  const CustomTextFieldWidget({
    super.key,
    required this.hintText,
    required this.controller,
    this.type = TextInputType.phone,
    this.icon = Icons.phone,
    this.verticalPadding = 12,
    this.leftPadding = 45,
    this.hindSize = 20,
    this.textSize = 20,
  });

  final String hintText;
  final TextInputType type;
  final TextEditingController controller;
  final IconData icon;
  final double verticalPadding;
  final double leftPadding;
  final double hindSize;
  final double textSize;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        TextField(
          controller: controller,
          keyboardType: type,
          style: TextStyle(fontSize: textSize),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: AppColors.color230,
              ),
            ),
            contentPadding: EdgeInsets.only(
              top: verticalPadding,
              bottom: verticalPadding,
              left: leftPadding,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: AppColors.primaryColor),
            ),
            hintText: hintText,
            hintStyle: TextStyle(
              fontSize: hindSize,
              color: AppColors.color108,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        Visibility(
          visible: leftPadding == 45,
          child: Positioned(
            top: ConstSizes.height(1.7),
            left: ConstSizes.width(2.8),
            child: Icon(
              icon,
              size: 22,
              color: AppColors.color108,
            ),
          ),
        ),
      ],
    );
  }
}
