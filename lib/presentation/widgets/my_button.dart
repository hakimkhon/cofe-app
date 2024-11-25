import 'package:cafe/presentation/core/constant/colors.dart';
import 'package:cafe/presentation/core/constant/sizes.dart';
import 'package:cafe/presentation/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

//bu button savatga qo'shish button uchun munjallangan, boshqa vazifalarni bajarish uchun text va bosganda nima qilishni berib ketish kerak
class MyButton extends StatefulWidget {
  const MyButton({
    super.key,
    this.text = "",
    this.borderRadius = 12,
    this.color = AppColors.primaryColor,
    this.borderColor = AppColors.primaryColor,
    this.textColor = AppColors.secondaryColor,
  });
  final String text;
  final Color color;
  final Color textColor;
  final Color borderColor;
  final double borderRadius;

  @override
  State<MyButton> createState() => _MyButtonState();
}

bool isnimadir = true;
int count = 1;

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Visibility(
          visible: isnimadir,
          child: ZoomTapAnimation(
            onTap: () {
              // widget.onTap!();
              setState(() {
                isnimadir = false;
              });
            },
            child: Container(
              width: double.infinity,
              height: ConstSizes.height(5),
              decoration: BoxDecoration(
                border: Border.all(color: widget.borderColor),
                borderRadius: BorderRadius.circular(widget.borderRadius).r,
                color: widget.color,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                        widget.text == "" ? "Savatga qo’shish" : widget.text,
                        style: TextStyle(
                          fontSize: ConstSizes.width(4),
                          color: widget.textColor,
                        ),
                      ),
                    ),
                  ),
                  Visibility(
                    visible: widget.text == "",
                    child: Icon(
                      Icons.shopping_cart_outlined,
                      color: AppColors.secondaryColor,
                      size: ConstSizes.width(4),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Visibility(
          visible: !isnimadir,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ZoomTapAnimation(
                onTap: () {
                  if (count > 0) {
                    setState(() {
                      count--;
                      if (count == 0) {
                        isnimadir = true;
                        count = 1;
                      }
                    });
                  }
                },
                child: Container(
                  width: 50,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      color: Colors.white),
                  child: Icon(
                    Icons.remove,
                    size: 24.sp,
                    color: AppColors.color108,
                  ),
                ),
              ),
              MyText(
                data: count.toString(),
                left: 10,
                right: 10,
                color: AppColors.color108,
                size: ConstSizes.width(5),
              ),
              ZoomTapAnimation(
                onTap: () {
                  if (count < 99) {
                    setState(() {
                      count++;
                    });
                  }
                },
                child: Container(
                  width: 50,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      color: Colors.white),
                  child: Icon(
                    Icons.add,
                    size: 24.sp,
                    color: AppColors.color108,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
