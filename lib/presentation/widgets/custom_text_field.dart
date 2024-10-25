import 'package:cafe/presentation/core/constant/colors.dart';
import 'package:cafe/presentation/core/constant/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFieldWidget extends StatelessWidget {
  const CustomTextFieldWidget({
    super.key,
    required this.hintText,
    required this.controller,
    this.type = TextInputType.phone,
    this.icon = Icons.phone,
    this.verticalPadding = 12,
    this.leftPadding = 40,
    this.hindSize = 18,
    this.textSize = 18,
    this.iconSize = 20,
    this.positionHight = 14,
  });

  final String hintText;
  final TextInputType type;
  final TextEditingController controller;
  final IconData icon;
  final double verticalPadding;
  final double leftPadding;
  final double hindSize;
  final double textSize;
  final double iconSize;
  final double positionHight;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        TextField(
          controller: controller,
          keyboardType: type,
          style: TextStyle(fontSize: textSize.sp),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: AppColors.color230,
              ),
            ),
            contentPadding: EdgeInsets.only(
              top: verticalPadding.w,
              bottom: verticalPadding.w,
              left: leftPadding.w,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: AppColors.primaryColor),
            ),
            hintText: hintText,
            hintStyle: TextStyle(
              fontSize: hindSize.sp,
              color: AppColors.color108,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        Visibility(
          visible: leftPadding == 40,
          child: Positioned(
            top: positionHight.w,
            left: ConstSizes.width(2.8),
            child: Icon(
              icon,
              size: iconSize.r,
              color: AppColors.color108,
            ),
          ),
        ),
      ],
    );
  }
}
