import 'package:cafe/data/mock/mock_data.dart';
import 'package:cafe/presentation/core/constant/colors.dart';
import 'package:cafe/presentation/screens/home/widgets/header_widget.dart';
import 'package:cafe/presentation/screens/home/widgets/kfc_widget.dart';
import 'package:cafe/presentation/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Column(
            children: [
              const HeaderWidget(),
              // PageView.builder(),
              const KfcWidget(),
              SizedBox(
                width: double.infinity,
                child: Wrap(
                  alignment: WrapAlignment.spaceBetween,
                  children: [
                    for (int i = 0; i < 11; i++)
                      ZoomTapAnimation(
                        child: foods(
                          MockData.fastFood[i].title,
                          MockData.fastFood[i].icon,
                          i == 0 ? AppColors.primaryColor : AppColors.color246,
                          i == 0
                              ? AppColors.secondaryColor
                              : AppColors.color108,
                        ),
                      )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  foods(String title, String icon, Color color, Color textColor) {
    return Container(
      width: 180,
      height: 40,
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: color,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: AssetImage(icon),
            width: 30,
          ),
          MyText(
            data: title,
            color: textColor,
            size: 18,
          ),
        ],
      ),
    );
  }
}
