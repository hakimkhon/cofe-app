import 'package:cafe/data/mock/mock_data.dart';
import 'package:cafe/presentation/core/constant/colors.dart';
import 'package:cafe/presentation/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class FastFoodWidget extends StatelessWidget {
  const FastFoodWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Wrap(
        alignment: WrapAlignment.spaceBetween,
        children: [
          for (int i = 0; i < MockData.fastFood.length; i++)
            ZoomTapAnimation(
              child: foods(
                MockData.fastFood[i].title,
                MockData.fastFood[i].icon,
                i == 0 ? AppColors.primaryColor : Colors.black.withOpacity(0.04),
                i == 0 ? AppColors.secondaryColor : AppColors.color108,
              ),
            ),
        ],
      ),
    );
  }
  foods(String title, String icon, Color color, Color textColor) {
    return Container(
      width: 200,
      height: 42,
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
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
