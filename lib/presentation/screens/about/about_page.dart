import 'package:cafe/presentation/core/constant/colors.dart';
import 'package:cafe/presentation/core/resource/assets.dart';
import 'package:cafe/presentation/screens/home/widgets/header_widget.dart';
import 'package:cafe/presentation/widgets/custom_text_widget.dart';
import 'package:cafe/presentation/widgets/my_vertical_divider_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: ListView(
            children: [
              const HeaderWidget(),
              const MyVerticalDividerText(data: "biz haqimizda"),
              const MyVerticalDividerText(
                  data: "well food haqida", textSize: 21, top: 10, bottom: 4),
              const MyText(
                data:
                    "Bizning oshxona – bu salomatlik va mazalilik uyg‘unlashuvi. Har bir taomni sog‘lom mahsulotlardan tayyorlashni asosiy vazifa deb bilamiz. Mahsulotlarimiz yangi va ekologik toza bo‘lib, ularni sinchkovlik bilan tanlaymiz",
                size: 17,
                color: AppColors.color108,
                bottom: 10,
                top: 8,
              ),
              const MyText(
                data:
                    "Bizning oshxona – bu salomatlik va mazalilik uyg‘unlashuvi. Har bir taomni sog‘lom mahsulotlardan tayyorlashni asosiy vazifa deb bilamiz. Mahsulotlarimiz yangi va ekologik toza bo‘lib, ularni sinchkovlik bilan tanlaymiz",
                size: 17,
                color: AppColors.color108,
                bottom: 20,
                top: 8,
              ),
              const MyVerticalDividerText(
                  data: "raqamlarda", textSize: 21, top: 10, bottom: 4),
              mySpamText(
                  "Ofis manzili", "Namangan shahar, Qayqubod MFY, Fayzli 77"),
              mySpamText("Ish vaqti", "09:00 - 18:00"),
              mySpamText("Telefon raqam", "+998 90 776-07-05"),
              mySpamText("Email", "wellfood@gmail.com"),
              const MyVerticalDividerText(
                  data: "asoschi", textSize: 21, top: 10, bottom: 10),
              const MyText(
                data: "KHATAMOV NURIDDIN tomonidan 2024-yil asos solingan",
                color: AppColors.color108,
                size: 20,
                bottom: 20,
              ),
              Container(
                width: double.infinity,
                height: 420,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                    image: AssetImage(
                      ImageAssets.about,
                    ),
                    fit: BoxFit.fill
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  mySpamText(String key, String value) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 6.w),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: "$key: ",
              style: TextStyle(
                fontWeight: FontWeight.w300,
                color: AppColors.color108,
                fontSize: 15.sp,
              ),
            ),
            TextSpan(
              text: "$value ",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 15.sp,
                color: AppColors.color79,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
