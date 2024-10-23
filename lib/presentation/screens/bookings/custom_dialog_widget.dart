import 'package:cafe/presentation/core/constant/colors.dart';
import 'package:cafe/presentation/core/constant/sizes.dart';
import 'package:cafe/presentation/widgets/custom_button.dart';
import 'package:cafe/presentation/widgets/custom_text_field.dart';
import 'package:cafe/presentation/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDialogWidget extends StatelessWidget {
  const CustomDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController cardNumberController = TextEditingController();
    TextEditingController cardValidityController = TextEditingController();
    TextEditingController cardHolderController = TextEditingController();
    TextEditingController cvvController = TextEditingController();
    return Dialog(
      insetPadding: EdgeInsets.zero,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 15.w, vertical: 24.w),
        height: 320.w,
        width: ConstSizes.screenWidth() * 0.9,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyText(
              data: "Karta qo'shish",
              color: AppColors.color89,
              size: 22.sp,
              fontWeight: FontWeight.bold,
              bottom: 10.w,
            ),
            CustomTextFieldWidget(
              leftPadding: 8.w,
              hintText: "Karta raqam",
              controller: cardNumberController,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: ConstSizes.screenWidth() * 0.58,
                    child: CustomTextFieldWidget(
                      leftPadding: 8.w,
                      hintText: "Amal qilish muddati",
                      controller: cardValidityController,
                    ),
                  ),
                  SizedBox(
                    width: ConstSizes.screenWidth() * 0.3,
                    child: CustomTextFieldWidget(
                      leftPadding: 8.w,
                      hintText: "CVV",
                      controller: cvvController,
                    ),
                  ),
                ],
              ),
            ),
            CustomTextFieldWidget(
              leftPadding: 8.w,
              hintText: "Karta egasi ismi",
              controller: cardHolderController,
              
            ),
            const Spacer(),
            CustomButton(
              onTap: () {
                Navigator.pop(context);
              },
              text: "Saqlash",
            ),
          ],
        ),
      ),
    );
  }
}
