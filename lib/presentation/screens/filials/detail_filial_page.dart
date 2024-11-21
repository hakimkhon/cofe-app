import 'package:cafe/data/model/filials_model.dart';
import 'package:cafe/data/service/api_service.dart';
import 'package:cafe/presentation/core/constant/colors.dart';
import 'package:cafe/presentation/core/constant/sizes.dart';
import 'package:cafe/presentation/screens/home/widgets/header_widget.dart';
import 'package:cafe/presentation/widgets/custom_text_widget.dart';
import 'package:cafe/presentation/widgets/map_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailFilialPage extends StatefulWidget {
  const DetailFilialPage({super.key, required this.id});
  final String id;

  @override
  State<DetailFilialPage> createState() => _DetailFilialPageState();
}

class _DetailFilialPageState extends State<DetailFilialPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 16.w, right: 16.w),
          child: FutureBuilder(
            future: CafeApiService.instance.getFilialDetail(id: widget.id),
            builder: (context, AsyncSnapshot<Branch?> snapshot) {
              if (snapshot.hasData) {
                return Column(
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
                            data: snapshot.data!.name!,
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
                            data: snapshot.data!.openingHours!,
                            color: AppColors.color108,
                            size: 14.sp,
                            left: 4.w,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: ConstSizes.screenWidth(),
                      height: ConstSizes.screenHight() -
                          ConstSizes.statusBarHight() -
                          ConstSizes.screenHight() * 0.17,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15.r),
                        child: MapPage(
                          latitude: snapshot.data!.location!.latitude!,
                          longitude: snapshot.data!.location!.longitude!,
                        ),
                      ),
                    )
                  ],
                );
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
