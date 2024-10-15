import 'package:cafe/presentation/core/constant/colors.dart';
import 'package:cafe/presentation/core/resource/assets.dart';
import 'package:cafe/presentation/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';

class BurgerMenu extends StatelessWidget {
  const BurgerMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondaryColor,
      body: SafeArea(
        bottom: false,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          color: AppColors.secondaryColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              
              Image.asset(IconAssets.logo),
              TextButton(onPressed: () {}, child: const MyText(data: "- Asosiy", size: 26, color: AppColors.color79,)),
              TextButton(onPressed: () {}, child: const MyText(data: "- Filiallar", size: 26, color: AppColors.color79,)),
              TextButton(onPressed: () {}, child: const MyText(data: "- Biz haqimizda", size: 26, color: AppColors.color79,)),
              TextButton(onPressed: () {}, child: const MyText(data: "- Yangiliklar", size: 26, color: AppColors.color79,)),
            ],
          ),
        ),
      ),
    );
  }
}
