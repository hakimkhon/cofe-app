import 'package:cafe/data/routes/cafe_route.dart';
import 'package:cafe/presentation/core/constant/colors.dart';
import 'package:cafe/presentation/core/constant/sizes.dart';
import 'package:cafe/presentation/core/resource/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          alignment: Alignment.bottomCenter,
          // color: Colors.green,
          height: ConstSizes.screenHight() * 0.06,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image(
                image: const AssetImage(IconAssets.headerLogo),
                width: 74.h,
                fit: BoxFit.fill,
              ),
              const Spacer(),
              Card(
                child: SizedBox(
                  width: 32.w,
                  height: 32.w,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, CafeRouteNames.booking);
                    },
                    icon: Icon(
                      Icons.shopping_cart_outlined,
                      size: 20.r,
                    ),
                  ),
                ),
              ),
              Card(
                child: SizedBox(
                  width: 32.w,
                  height: 32.w,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, CafeRouteNames.menu);
                    },
                    icon: Icon(
                      Icons.sort_outlined,
                      size: 20.r,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          right: 51.r,
          top: 7.r,
          child: CircleAvatar(
            radius: 7.r,
            backgroundColor: AppColors.primaryColor,
            child: Text(
              "2",
              style: TextStyle(
                  fontSize: 8.sp,
                  color: AppColors.secondaryColor,
                  fontWeight: FontWeight.w300),
            ),
          ),
        ),
      ],
    );
  }

  /**
   Positioned(
                  left: 14.r,
                  bottom: -5.r,
                  child: CircleAvatar(
                    radius: 7.r,
                    backgroundColor: AppColors.primaryColor,
                    child: Text(
                      "2",
                      style: TextStyle(
                          fontSize: 8.sp,
                          color: AppColors.secondaryColor,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                ),
   */
}
