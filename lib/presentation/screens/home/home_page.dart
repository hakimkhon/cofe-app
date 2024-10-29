import 'package:cafe/data/mock/mock_data.dart';
import 'package:cafe/presentation/core/constant/colors.dart';
import 'package:cafe/presentation/screens/home/widgets/burger_widget.dart';
import 'package:cafe/presentation/screens/home/widgets/header_widget.dart';
import 'package:cafe/presentation/screens/home/widgets/kfc_widget.dart';
import 'package:cafe/presentation/screens/home/widgets/popular_food_widget.dart';
import 'package:cafe/presentation/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: ListView(
            children: [
              const HeaderWidget(),
              const KfcWidget(),
              SizedBox(
                width: double.infinity,
                child: GridView.builder(
                  controller: ScrollController(), // Scrol bo'lmaslik uchun
                  itemCount: MockData.fastFood.length,
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 15,
                    childAspectRatio: 4.5,
                  ),
                  itemBuilder: (context, index) {
                    // FastFoodModel fastFood = MockData.fastFood[index];
                    return foods(
                      MockData.fastFood[index].title,
                      MockData.fastFood[index].icon,
                      // index == 0
                      //     ? AppColors.primaryColor
                      //     : Colors.black.withOpacity(0.04),
                      // index == 0
                      AppColors.secondaryColor,
                      AppColors.color108,
                    );
                  },
                ),
              ),
              BurgerWidget(
                title: MockData.fastFood[4].title,
                image: MockData.fastFood[4].image,
                price: MockData.fastFood[4].price,
              ),
              const PopularFoodWidget(),
            ],
          ),
        ),
      ),
    );
  }

  foods(String title, String icon, Color color, Color textColor) {
    return Container(
      width: 120.w,
      height: 10.w,
      // margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: color,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: AssetImage(icon),
            width: 18.sp,
          ),
          MyText(
            data: title,
            color: textColor,
            size: 18.sp,
            left: 4.w,
          ),
        ],
      ),
    );
  }
}
