import 'package:cafe/presentation/core/constant/colors.dart';
import 'package:cafe/presentation/core/constant/sizes.dart';
import 'package:flutter/material.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

//bu button savatga qo'shish button uchun munjallangan, boshqa vazifalarni bajarish uchun text va bosganda nima qilishni berib ketish kerak
class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onTap,
    this.text = "",
    this.borderRadius = 12,
    this.color = AppColors.primaryColor,
    this.borderColor = AppColors.primaryColor,
    this.textColor = AppColors.secondaryColor,
  });
  final String text;
  final Function onTap;
  final Color color;
  final Color textColor;
  final Color borderColor;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return ZoomTapAnimation(
      onTap: () {
        onTap();
      },
      child: Container(
        width: double.infinity,
        height: ConstSizes.height(5),
        decoration: BoxDecoration(
          border: Border.all(color: borderColor),
          borderRadius: BorderRadius.circular(borderRadius),
          color: color,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: FittedBox(
                fit: BoxFit.fitWidth,
                child: Text(
                  text == "" ? "Savatga qo’shish" : text,
                  style: TextStyle(
                    fontSize: ConstSizes.width(4),
                    color: textColor,
                  ),
                ),
              ),
            ),
            Visibility(
              visible: text == "",
              child: Icon(
                Icons.shopping_cart_outlined,
                color: AppColors.secondaryColor,
                size: ConstSizes.width(4),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
