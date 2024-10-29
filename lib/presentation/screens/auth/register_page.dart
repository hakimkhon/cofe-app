// import 'package:cafe/data/routes/cafe_route.dart';
// import 'package:cafe/data/routes/navigator_service.dart';
import 'package:cafe/data/service/api_service.dart';
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
      body: SafeArea(
        bottom: false,
        child: SizedBox(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20.w, horizontal: 15.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(IconAssets.logo),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyText(
                      data: "Ma’lumotlaringizni kiriting",
                      size: 24.sp,
                      color: AppColors.color91,
                    ),
                    MyText(
                      data:
                          "Qulayligingiz uchun ma’lumotlaringizni saqlab qo’yamiz",
                      size: 14.sp,
                      fontWeight: FontWeight.w300,
                      color: AppColors.color119,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyText(
                          data: "Telefon raqamingizni kiriting:",
                          size: 12.sp,
                          fontWeight: FontWeight.w300,
                          color: AppColors.color108,
                          bottom: 4.w,
                          top: 6.w,
                        ),
                        CustomTextFieldWidget(
                          hintText: "Telefon raqamimgiz...",
                          controller: textEditingController,
                        ),
                      ],
                    ),
                  ],
                ),
                CustomButton(
                  text: "Tasdiqlash",
                  onTap: () {
                    ApiService apiService = ApiService();
                    apiService.sendSMSCode(
                      phoneNumber: textEditingController.text,
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
