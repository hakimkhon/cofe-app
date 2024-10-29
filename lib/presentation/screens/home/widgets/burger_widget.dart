import 'package:cafe/presentation/core/constant/colors.dart';
import 'package:cafe/presentation/widgets/custom_button.dart';
import 'package:cafe/presentation/widgets/custom_text_widget.dart';
import 'package:cafe/presentation/widgets/increment_amount_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BurgerWidget extends StatelessWidget {
  const BurgerWidget({
    super.key,
    required this.title,
    required this.image,
    required this.price,
  });
  final String title;
  final String image;
  final String price;
  // final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 30.w, bottom: 20.w),
          child: Row(
            children: [
              Image(
                width: 32.w,
                fit: BoxFit.fill,
                image: AssetImage(image),
              ),
              Container(
                margin: EdgeInsets.only(left: 10.w, right: 5.w),
                height: 36.w,
                width: 3.w,
                color: AppColors.color254,
              ),
              MyText(
                data: title,
                size: 21.sp,
                color: AppColors.color108,
              ),
            ],
          ),
        ),
        Card(
          // shadowColor: const Color.fromRGBO(0, 0, 0, 0.05),
          color: AppColors.secondaryColor,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 30.w,
              vertical: 25.w,
            ),
            child: Column(
              children: [
                Image(
                  image: AssetImage(
                    image,
                  ),
                  fit: BoxFit.fill,
                  width: 170.w,
                ),
                MyText(
                  data: title,
                  size: 28.sp,
                  color: AppColors.color43,
                ),
                MyText(
                  data: "$price so'm",
                  size: 20.sp,
                  color: AppColors.color169,
                  bottom: 15.w,
                ),
                CustomButton(onTap: () {})
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Card(
          // shadowColor: const Color.fromRGBO(0, 0, 0, 0.05),
          color: AppColors.secondaryColor,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 30.w,
              vertical: 25.w,
            ),
            child: Column(
              children: [
                Image(
                  image: AssetImage(
                    image,
                  ),
                  fit: BoxFit.fill,
                  width: 170.w,
                ),
                MyText(
                  data: title,
                  size: 28.sp,
                  color: AppColors.color43,
                ),
                MyText(
                  data: "$price so'm",
                  size: 20.sp,
                  color: AppColors.color169,
                  bottom: 15.w,
                ),
                const IncrementAmountWidget(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
