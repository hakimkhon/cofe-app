import 'package:cafe/presentation/core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

//bu button savatga qo'shish button uchun munjallangan, boshqa vazifalarni bajarish uchun text va bosganda nima qilishni berib ketish kerak
class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.text = "",
    required this.onTap,
  });
  final String text;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return ZoomTapAnimation(
      onTap: () {
        onTap();
      },
      child: Container(
        width: double.infinity,
        height: 44,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: AppColors.primaryColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                text == "" ? "Savatga qo’shish" : text,
                style: const TextStyle(
                  fontSize: 16,
                  color: AppColors.secondaryColor,
                  // fontFamily: AppFonts.inriaSans,
                ),
              ),
            ),
            Visibility(
              visible: text == "",
              child: const Icon(
                Icons.shopping_cart_outlined,
                color: AppColors.secondaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
