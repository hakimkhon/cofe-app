import 'package:cafe/data/routes/cafe_route.dart';
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
          padding: const EdgeInsets.symmetric(vertical: 20),
          color: AppColors.secondaryColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(IconAssets.logo),
              TextButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    CafeRouteNames.home,
                    (predicate) => false,
                  );
                },
                child: const MyText(
                  data: "- Asosiy",
                  size: 26,
                  left: 16,
                  top: 16,
                  color: AppColors.color79,
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    CafeRouteNames.filials,
                    (predicate) => false,
                  );
                },
                child: const MyText(
                  data: "- Filiallar",
                  size: 26,
                  left: 16,
                  color: AppColors.color79,
                ),
              ),
              TextButton(
                onPressed: () {
                   Navigator.pushNamedAndRemoveUntil(
                    context,
                    CafeRouteNames.about,
                    (predicate) => false,
                  );
                },
                child: const MyText(
                  data: "- Biz haqimizda",
                  size: 26,
                  left: 16,
                  color: AppColors.color79,
                ),
              ),
              TextButton(
                onPressed: () {
                   Navigator.pushNamedAndRemoveUntil(
                    context,
                    CafeRouteNames.news,
                    (predicate) => false,
                  );
                },
                child: const MyText(
                  data: "- Yangiliklar",
                  size: 26,
                  left: 16,
                  color: AppColors.color79,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
