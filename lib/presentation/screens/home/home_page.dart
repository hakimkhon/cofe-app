import 'package:cafe/data/model/category_model.dart';
import 'package:cafe/data/service/api_service.dart';
import 'package:cafe/presentation/core/constant/colors.dart';
import 'package:cafe/presentation/core/constant/sizes.dart';
import 'package:cafe/presentation/screens/home/widgets/burger_widget.dart';
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
String chooseProductID = "953ab5b3-c81f-422d-ba13-17496dc94dcf";

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Column(
            children: [
              const HeaderWidget(),
              SizedBox(
                width: ConstSizes.screenWidth(),
                height: ConstSizes.screenHight() -
                    ConstSizes.statusBarHight() -
                    ConstSizes.screenHight() * 0.06,
                child: ListView(
                  children: [
                    const KfcWidget(),
                    FutureBuilder(
                      future: CafeApiService.instance.getCategory(),
                      builder:
                          (contex, AsyncSnapshot<CategoryModel?> snapshot) {
                        if (snapshot.data != null) {
                          return GridView.builder(
                            controller:
                                ScrollController(), // Scrol bo'lmaslik uchun
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
                                  title: snapshot
                                          .data?.categories?[index].name ??
                                      "Burger",
                                  icon: snapshot.data?.categories?[index]
                                          .imageUrl ??
                                      "https://photos.axadjonovsardorbek.uz/cafe/burger.png",
                                  myIndex: index,
                                  productID:
                                      snapshot.data?.categories?[index].id ??
                                          "",
                                );
                                } else if (snapshot.data!.categories!.isEmpty) {
                                  return const Text("Malumot topilmadi");
                              } else {
                                return const Center(
                                  child: CircularProgressIndicator(),
                                );
                              }
                            },
                          );
                        
                        } else {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                      },
                    ),
                    BurgerWidget(id: chooseProductID),
                    const PopularFoodWidget(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget foods({
    required String title,
    required String icon,
    required String productID,
    required int myIndex,
  }) {
    return ZoomTapAnimation(
      onTap: () {
        chooseID = myIndex;
        chooseProductID = productID;
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
