import 'package:cafe/data/model/products_model.dart';
import 'package:cafe/data/service/api_service.dart';
import 'package:cafe/presentation/core/constant/colors.dart';
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
              GridView.builder(
                controller: ScrollController(),
                itemCount: snapshot.data!.products.length,
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  crossAxisSpacing: 1,
                  mainAxisSpacing: 1,
                  childAspectRatio: 1,
                ),
                itemBuilder: (context, index) {
                  return Card(
                    color: AppColors.secondaryColor,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 30.w,
                        vertical: 12.w,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image(
                            image: NetworkImage(
                              snapshot.data?.products[index].imageUrl ??
                                  "imageUrl",
                            ),
                            fit: BoxFit.fill,
                            height: 100.h,
                          ),
                          MyText(
                            data: snapshot.data?.products[index].name ?? "name",
                            size: 28.sp,
                            color: AppColors.color43,
                          ),
                          MyText(
                            data: snapshot.data?.products[index].description ??
                                "description",
                            size: 18.sp,
                            color: AppColors.color169,
                            maxLines: 3,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Visibility(
                                visible: false,
                                child: Text(
                                  "1200 so'm ",
                                  style: TextStyle(
                                    decoration: TextDecoration.lineThrough,
                                    color: AppColors.color169,
                                    fontSize: 19.sp,
                                  ),
                                ),
                              ),
                              MyText(
                                data:
                                    "${snapshot.data?.products[index].price ?? "1"} so'm",
                                size: 22.sp,
                                color: AppColors.color169,
                                bottom: 5.w,
                              ),
                            ],
                          ),
                          CustomButton(onTap: () {}),
                        ],
                      ),
                    ),
                  );
                },
              ),
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