import 'package:cafe/data/mock/mock_data.dart';
import 'package:cafe/data/routes/cafe_route.dart';
import 'package:cafe/presentation/core/constant/colors.dart';
import 'package:cafe/presentation/core/constant/sizes.dart';
import 'package:cafe/presentation/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class KfcWidget extends StatelessWidget {
  const KfcWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final pageController = PageController();
    return Container(
      width: double.infinity,
      height: 200.w,
      margin: EdgeInsets.symmetric(vertical: 6.w),
      child: Stack(
        children: [
          PageView.builder(
            controller: pageController,
            itemCount: MockData.news.length,
            itemBuilder: (context, index) {
              return ZoomTapAnimation(
                onTap: () {
                  Navigator.pushNamed(context, CafeRouteNames.news);
                },
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 180.w,
                      margin: EdgeInsets.symmetric(horizontal: 2.w),
                      alignment: Alignment.bottomLeft,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(
                            MockData.news[index].image,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 180.w,
                      margin: EdgeInsets.symmetric(horizontal: 2.w),
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color.fromRGBO(217, 217, 217, 0),
                            Color.fromRGBO(38, 38, 38, 0.67),
                            Color.fromRGBO(35, 35, 35, 0.78),
                          ],
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MyText(
                            data: MockData.news[index].title,
                            size: 20,
                            color: AppColors.secondaryColor,
                            fontWeight: FontWeight.w800,
                          ),
                          MyText(
                            data: MockData.news[index].subTitle,
                            size: 15,
                            color: AppColors.secondaryColor,
                            maxLines: 2,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
          Positioned(
            bottom: 2.w,
            left: ConstSizes.screenWidth() / 2 -
                6.w * MockData.news.length / 2 -
                10.w * MockData.news.length,
            child: SmoothPageIndicator(
              controller: pageController,
              count: MockData.news.length,
              effect: ExpandingDotsEffect(
                dotColor: AppColors.color254,
                activeDotColor: AppColors.primaryColor,
                // dotColor: const Color.fromRGBO(0, 0, 0, 0.05),
                // activeDotColor: const Color.fromRGBO(0, 0, 0, 0.07),
                dotHeight: 8.w,
                dotWidth: 10.w,
                spacing: 6.w,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
