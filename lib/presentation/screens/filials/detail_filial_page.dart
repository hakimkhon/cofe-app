import 'package:cafe/data/mock/mock_data.dart';
import 'package:cafe/presentation/core/constant/colors.dart';
import 'package:cafe/presentation/core/constant/sizes.dart';
import 'package:cafe/presentation/core/resource/assets.dart';
import 'package:cafe/presentation/screens/home/widgets/header_widget.dart';
import 'package:cafe/presentation/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailFilialPage extends StatelessWidget {
  const DetailFilialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 0),
          child: Column(
            children: [
              const HeaderWidget(),
              Container(
                alignment: Alignment.bottomCenter,
                height: ConstSizes.screenHight() * 0.08,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 5.w),
                      height: 28.w,
                      width: 2.w,
                      color: AppColors.color254,
                    ),
                    MyText(
                      data: MockData.filials[0].sityName,
                      size: 24.sp,
                      color: AppColors.color108,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: ConstSizes.screenHight() * 0.03,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.access_time_outlined, size: 16.sp),
                    MyText(
                      data: MockData.filials[0].workingTime,
                      color: AppColors.color108,
                      size: 14.sp,
                      left: 4.w,
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: ConstSizes.screenHight() -
                    ConstSizes.statusBarHight() -
                    ConstSizes.screenHight() * 0.19,
                margin: EdgeInsets.only(top: 10.w),
                decoration: BoxDecoration(
                  color: Colors.amberAccent,
                  borderRadius: BorderRadius.circular(15),
                  image: const DecorationImage(
                    image: AssetImage(
                      ImageAssets.detailFilial,
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
