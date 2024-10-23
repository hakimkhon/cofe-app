import 'package:cafe/data/mock/mock_data.dart';
import 'package:cafe/data/routes/cafe_route.dart';
import 'package:cafe/presentation/core/constant/colors.dart';
import 'package:cafe/presentation/core/constant/sizes.dart';
import 'package:cafe/presentation/core/resource/assets.dart';
import 'package:cafe/presentation/screens/home/widgets/header_widget.dart';
import 'package:cafe/presentation/widgets/custom_text_widget.dart';
import 'package:cafe/presentation/widgets/my_vertical_divider_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class FilialsPage extends StatelessWidget {
  const FilialsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Column(
            children: [
              const HeaderWidget(),
              const MyVerticalDividerText(data: "filiallar"),
              SizedBox(
                width: double.infinity,
                height: ConstSizes.screenHight() -
                    ConstSizes.statusBarHight() -
                    ConstSizes.screenHight() * 0.13,
                child: ListView.builder(
                  itemCount: MockData.filials.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: ConstSizes.height(1)),
                      child: Card(
                        color: AppColors.secondaryColor,
                        child: Column(
                          children: [
                            Container(
                              width: double.infinity,
                              height: 150.h,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(16),
                                  topRight: Radius.circular(16),
                                ),
                                image: DecorationImage(
                                  image: AssetImage(ImageAssets.map),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 20,
                                horizontal: 16,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            margin:
                                                const EdgeInsets.only(right: 5),
                                            height: 36,
                                            width: 3,
                                            color: AppColors.color254,
                                          ),
                                          MyText(
                                            data: MockData
                                                .filials[index].sityName,
                                            size: 21,
                                            color: AppColors.color108,
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 8.0),
                                        child: Row(
                                          children: [
                                            const Icon(
                                                Icons.access_time_outlined),
                                            MyText(
                                              data: MockData
                                                  .filials[index].workingTime,
                                              color: AppColors.color108,
                                              size: 20,
                                              left: 6,
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  ZoomTapAnimation(
                                    onTap: () {
                                      Navigator.pushNamed(
                                        context,
                                        CafeRouteNames.detailFilial,
                                      );
                                    },
                                    child: Container(
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: AppColors.primaryColor,
                                      ),
                                      child: const Icon(
                                        Icons.chevron_right,
                                        color: AppColors.secondaryColor,
                                        size: 30,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
