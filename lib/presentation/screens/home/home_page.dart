import 'package:cafe/data/model/category_model.dart';
import 'package:cafe/data/service/api_service.dart';
import 'package:cafe/presentation/core/constant/colors.dart';
import 'package:cafe/presentation/screens/home/widgets/header_widget.dart';
import 'package:cafe/presentation/screens/home/widgets/kfc_widget.dart';
import 'package:cafe/presentation/screens/home/widgets/popular_food_widget.dart';
import 'package:cafe/presentation/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

int chooseID = 0;

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
              FutureBuilder(
                future: CafeApiService.instance.getCategory(),
                builder: (contex, AsyncSnapshot<CategoryModel?> snapshot) {
                  return SizedBox(
                    width: double.infinity,
                    child: GridView.builder(
                      controller: ScrollController(), // Scrol bo'lmaslik uchun
                      itemCount: snapshot.data!.categories!.length,
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 15,
                        childAspectRatio: 4.5,
                      ),
                      itemBuilder: (context, index) {
                        if (snapshot.data != null) {
                          return foods(
                            title: snapshot.data?.categories?[index].name ??
                                "Burger",
                            icon: snapshot.data?.categories?[index].imageUrl ??
                                "https://photos.axadjonovsardorbek.uz/cafe/burger.png",
                            myIndex: index,
                          );
                        } else {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                      },
                    ),
                  );
                },
              ),
              // BurgerWidget(
              //   title: MockData.fastFood[chooseID].title,
              //   image: MockData.fastFood[chooseID].image,
              //   price: MockData.fastFood[chooseID].price,
              // ),
              const PopularFoodWidget(),
            ],
          ),
        ),
      ),
    );
  }

  Widget foods({
    required String title,
    required String icon,
    required int myIndex,
  }) {
    return ZoomTapAnimation(
      onTap: () {
        chooseID = myIndex;
        setState(() {});
      },
      child: Container(
        width: 120.w,
        height: 10.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: myIndex == chooseID
              ? AppColors.primaryColor
              : AppColors.secondaryColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: NetworkImage(icon),
              width: 18.sp,
            ),
            MyText(
              data: title,
              color: myIndex == chooseID
                  ? AppColors.secondaryColor
                  : AppColors.color108,
              size: 18.sp,
              left: 4.w,
            ),
          ],
        ),
      ),
    );
  }
}
