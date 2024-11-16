import 'package:cafe/data/model/products_model.dart';
import 'package:cafe/data/service/api_service.dart';
import 'package:cafe/presentation/core/constant/colors.dart';
import 'package:cafe/presentation/core/constant/sizes.dart';
import 'package:cafe/presentation/widgets/custom_button.dart';
import 'package:cafe/presentation/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BurgerWidget extends StatelessWidget {
  const BurgerWidget({
    super.key,
    required this.id,
  });
  final String id;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: CafeApiService.instance.getProductList(id: id),
      builder: (context, AsyncSnapshot<ProductsModel?> snapshot) {
        if (snapshot.hasData) {
          return Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 30.w, bottom: 20.w),
                child: Row(
                  children: [
                    Image(
                      width: 32.w,
                      fit: BoxFit.fill,
                      image: NetworkImage(
                        snapshot.data?.products[0].category.imageUrl ??
                            "https://photos.axadjonovsardorbek.uz/cafe/1546.jpg",
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10.w, right: 5.w),
                      height: 36.w,
                      width: 3.w,
                      color: AppColors.color254,
                    ),
                    MyText(
                      data:
                          snapshot.data?.products[0].category.name ?? "Burger",
                      size: 21.sp,
                      color: AppColors.color108,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: snapshot.data!.products.length != 1
                    ? ConstSizes.screenHight() * 0.42 * 2
                    : ConstSizes.screenHight() * 0.42,
                child: ListView.builder(
                  itemCount: snapshot.data!.products.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
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
                                  image: NetworkImage(
                                    snapshot.data?.products[index].imageUrl ??
                                        "https://photos.axadjonovsardorbek.uz/cafe/1546.jpg",
                                  ),
                                  fit: BoxFit.fill,
                                  width: 170.w,
                                ),
                                MyText(
                                  data: snapshot.data?.products[index].name ??
                                      "Burger",
                                  size: 28.sp,
                                  color: AppColors.color43,
                                ),
                                MyText(
                                  data:
                                      "${snapshot.data?.products[index].price ?? "1"} so'm",
                                  size: 20.sp,
                                  color: AppColors.color169,
                                  bottom: 15.w,
                                ),
                                CustomButton(onTap: () {})
                              ],
                            ),
                          ),
                        ),
                        20.verticalSpace,
                      ],
                    );
                  },
                ),
              ),

              // Card(
              //   // shadowColor: const Color.fromRGBO(0, 0, 0, 0.05),
              //   color: AppColors.secondaryColor,
              //   child: Padding(
              //     padding: EdgeInsets.symmetric(
              //       horizontal: 30.w,
              //       vertical: 25.w,
              //     ),
              //     child: Column(
              //       children: [
              //         Image(
              //           image: AssetImage(
              //             image,
              //           ),
              //           fit: BoxFit.fill,
              //           width: 170.w,
              //         ),
              //         MyText(
              //           data: title,
              //           size: 28.sp,
              //           color: AppColors.color43,
              //         ),
              //         MyText(
              //           data: "$price so'm",
              //           size: 20.sp,
              //           color: AppColors.color169,
              //           bottom: 15.w,
              //         ),
              //         const IncrementAmountWidget(),
              //       ],
              //     ),
              //   ),
              // ),
            ],
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}

/*



 */
