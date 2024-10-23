import 'package:cafe/data/routes/cafe_route.dart';
import 'package:cafe/presentation/core/constant/colors.dart';
import 'package:cafe/presentation/core/resource/assets.dart';
import 'package:cafe/presentation/widgets/custom_button.dart';
import 'package:cafe/presentation/widgets/custom_text_field.dart';
import 'package:cafe/presentation/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController textEditingController = TextEditingController();
    return Scaffold(
      backgroundColor: AppColors.secondaryColor,
      body: SafeArea(
        bottom: false,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
          color: AppColors.secondaryColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(IconAssets.logo),

              // enter date
              SizedBox(
                width: double.infinity,
                height: 150.h,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyText(
                      data: "Ma’lumotlaringizni kiriting",
                      size: 28.sp,
                      color: AppColors.color91,
                    ),
                    const MyText(
                      data:
                          "Qulayligingiz uchun ma’lumotlaringizni saqlab qo’yamiz",
                      fontWeight: FontWeight.w300,
                      color: AppColors.color119,
                    ),
                    const Spacer(),
                    const MyText(
                      data: "Telefon raqamingizni kiriting:",
                      size: 14,
                      fontWeight: FontWeight.w300,
                      color: AppColors.color108,
                      bottom: 4,
                    ),
                    CustomTextFieldWidget(
                      hintText: "Telefon raqamimgiz...",
                      controller: textEditingController,
                    ),
                  ],
                ),
              ),
              CustomButton(
                text: "Yuborish",
                onTap: () {
                  Navigator.pushNamed(context, CafeRouteNames.confirm);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
