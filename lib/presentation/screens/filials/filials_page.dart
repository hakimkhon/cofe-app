import 'package:cafe/data/model/filials_model.dart';
import 'package:cafe/data/routes/cafe_route.dart';
import 'package:cafe/data/service/api_service.dart';
import 'package:cafe/presentation/core/constant/colors.dart';
import 'package:cafe/presentation/core/constant/sizes.dart';
import 'package:cafe/presentation/screens/home/widgets/header_widget.dart';
import 'package:cafe/presentation/widgets/custom_text_widget.dart';
import 'package:cafe/presentation/widgets/map_page.dart';
import 'package:cafe/presentation/widgets/my_vertical_divider_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class FilialsPage extends StatelessWidget {
  const FilialsPage({super.key});
//AIzaSyAon8iH3cLkGKGynMrnPtkNDHdp-xI3u-0
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 16.w, right: 16.w),
          child: Column(
            children: [
              const HeaderWidget(), //0.06
              const MyVerticalDividerText(data: "filiallar"), //0.07
              FutureBuilder(
                future: CafeApiService.instance.getFilial(),
                builder: (context, AsyncSnapshot<FilialsModelNew?> snapshot) {
                  return SizedBox(
                    width: double.infinity,
                    height: ConstSizes.screenHight() -
                        ConstSizes.statusBarHight() -
                        ConstSizes.screenHight() * 0.13,
                    child: ListView.builder(
                      itemCount: snapshot.data?.branches?.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding:
                              EdgeInsets.only(bottom: ConstSizes.height(2)),
                          child: Card(
                            color: AppColors.secondaryColor,
                            child: Column(
                              children: [
                                SizedBox(
                                  width: double.infinity,
                                  height: 150.h,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(15.r),
                                      topLeft: Radius.circular(15.r),
                                    ),
                                    child: MapPage(
                                      latitude: snapshot.data!.branches![index]
                                          .location!.latitude!,
                                      longitude: snapshot.data!.branches![index]
                                          .location!.longitude!,
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
                                                margin: const EdgeInsets.only(
                                                  right: 5,
                                                ),
                                                height: 36,
                                                width: 3,
                                                color: AppColors.color254,
                                              ),
                                              MyText(
                                                data: snapshot
                                                        .data
                                                        ?.branches?[index]
                                                        .name ??
                                                    "Namangan Shaxar",
                                                size: 21,
                                                color: AppColors.color108,
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                              vertical: 8.0,
                                            ),
                                            child: Row(
                                              children: [
                                                const Icon(
                                                    Icons.access_time_outlined,),
                                                MyText(
                                                  data: snapshot
                                                          .data
                                                          ?.branches?[index]
                                                          .openingHours ??
                                                      "00:00 - 23:59",
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
                                            arguments: snapshot.data
                                                    ?.branches?[index].id ??
                                                "",
                                          );
                                        },
                                        child: Container(
                                          width: 50,
                                          height: 50,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10.r),
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
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
