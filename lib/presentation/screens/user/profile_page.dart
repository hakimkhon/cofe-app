import 'package:cafe/presentation/core/constant/colors.dart';
import 'package:cafe/presentation/core/constant/sizes.dart';
import 'package:cafe/presentation/screens/home/widgets/header_widget.dart';
import 'package:cafe/presentation/widgets/custom_button.dart';
import 'package:cafe/presentation/widgets/custom_text_field.dart';
import 'package:cafe/presentation/widgets/custom_text_widget.dart';
import 'package:cafe/presentation/widgets/my_vertical_divider_text.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController phoneNumberController = TextEditingController();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: ListView(
            children: [
              const HeaderWidget(),
              const MyVerticalDividerText(data: "KHATAMOV NURIDDIN"),
              const MyVerticalDividerText(
                data: "ma'lumotlar",
                textSize: 21,
                top: 10,
              ),
              const MyText(
                data: "Ismingizni kiriting:",
                size: 14,
                left: 8,
                fontWeight: FontWeight.w300,
                color: AppColors.color108,
              ),
              CustomTextFieldWidget(
                hintText: "ismingiz...",
                controller: nameController,
              ),
              const MyText(
                data: "Telefon raqamingizni kiriting:",
                size: 14,
                left: 8,
                top: 10,
                fontWeight: FontWeight.w300,
                color: AppColors.color108,
              ),
              CustomTextFieldWidget(
                hintText: "Telefon raqamimgiz...",
                controller: phoneNumberController,
              ),
              Container(
                width: double.infinity,
                height: 44,
                margin: EdgeInsets.only(
                  top: ConstSizes.height(2),
                  bottom: ConstSizes.height(3),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.black.withOpacity(0.04),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.location_on_outlined),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        "ETAMIN IT SOLUTIONS",
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColors.color108,
                          // fontFamily: AppFonts.inriaSans,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              CustomButton(
                onTap: () {},
                text: "Ma’lumotlarni saqlash",
              ),
              const MyVerticalDividerText(
                data: "Buyurtmalar tarixi",
                textSize: 21,
                top: 40,
              ),
              SizedBox(
                width: ConstSizes.width(100),
                height: ConstSizes.height(400),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
