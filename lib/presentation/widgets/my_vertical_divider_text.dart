import 'package:cafe/presentation/core/constant/colors.dart';
import 'package:cafe/presentation/core/constant/sizes.dart';
import 'package:cafe/presentation/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyVerticalDividerText extends StatelessWidget {
  const MyVerticalDividerText({
    super.key,
    required this.data,
    this.bottom = 0,
    this.top = 0,
    this.textSize = 26,
  });
  final double top;
  final double bottom;
  final String data;
  final double textSize;
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: top, bottom: bottom),
      child: Container(
        alignment: Alignment.bottomCenter,
        // color: Colors.blue,
        height: ConstSizes.screenHight()*0.07,
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(right: 5.w),
              height: 36,
              width: 3,
              color: AppColors.color254,
            ),
            MyText(
              data: data.toUpperCase(),
              size: textSize.sp,
              color: AppColors.color108,
            ),
          ],
        ),
      ),
    );
  }
}
