import 'package:cafe/data/mock/mock_data.dart';
import 'package:cafe/presentation/core/constant/colors.dart';
import 'package:cafe/presentation/core/constant/sizes.dart';
import 'package:cafe/presentation/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FastFoodWidget extends StatelessWidget {
  const FastFoodWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 400.w,
      child: GridView.count(
        primary: false,
        mainAxisSpacing: 40,
        crossAxisSpacing: 50,
        crossAxisCount: 2,
        padding: EdgeInsets.zero,
        children: List.generate(
          MockData.fastFood.length,
          (index) {
            return foods(
              MockData.fastFood[index].title,
              MockData.fastFood[index].icon,
              index == 0
                  ? AppColors.primaryColor
                  : Colors.black.withOpacity(0.04),
              index == 0 ? AppColors.secondaryColor : AppColors.color108,
            );
          },
        ),
      ),
    );
  }

  foods(String title, String icon, Color color, Color textColor) {
    return Container(
      width: 200,
      height: 10,
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
            width: ConstSizes.width(5),
          ),
          MyText(
            data: title,
            color: textColor,
            size: ConstSizes.width(4),
            left: 4,
          ),
        ],
      ),
    );
  }
}
