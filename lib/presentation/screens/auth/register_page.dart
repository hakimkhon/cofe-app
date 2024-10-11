import 'package:cafe/data/routes/cofe_route.dart';
import 'package:cafe/presentation/core/constant/colors.dart';
import 'package:cafe/presentation/core/resource/assets.dart';
import 'package:cafe/presentation/widgets/custom_button.dart';
import 'package:cafe/presentation/widgets/custom_text_field.dart';
import 'package:cafe/presentation/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';

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
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          color: AppColors.secondaryColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(IconAssets.logo),

              // enter date
              SizedBox(
                width: double.infinity,
                height: 150,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const MyText(
                      data: "Ma’lumotlaringizni kiriting",
                      size: 28,
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
                      size: 12,
                      fontWeight: FontWeight.w300,
                      color: AppColors.color108,
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
                  Navigator.pushNamed(context, CofeRouteNames.confirm);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
