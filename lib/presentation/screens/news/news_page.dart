import 'package:cafe/data/model/news_model.dart';
import 'package:cafe/data/service/api_service.dart';
import 'package:cafe/presentation/core/constant/colors.dart';
import 'package:cafe/presentation/core/constant/sizes.dart';
import 'package:cafe/presentation/screens/home/widgets/header_widget.dart';
import 'package:cafe/presentation/widgets/custom_text_widget.dart';
import 'package:cafe/presentation/widgets/my_vertical_divider_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
          child: Column(
            children: [
              const HeaderWidget(),
              const MyVerticalDividerText(data: "yangiliklar"),
              FutureBuilder(
                future: CafeApiService.instance.getNews(),
                builder: (contex, AsyncSnapshot<NewsModel?> snapshot) {
                  return SizedBox(
                    width: ConstSizes.width(100),
                    height: ConstSizes.height(80),
                    child: ListView.builder(
                      itemCount: snapshot.data?.news?.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: ConstSizes.height(1)),
                          child: Card(
                            color: AppColors.secondaryColor,
                            child: Padding(
                              padding: EdgeInsets.all(ConstSizes.width(5)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: double.infinity,
                                    height: 190.h,
                                    alignment: Alignment.bottomLeft,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: NetworkImage(snapshot
                                                .data?.news?[index].imageUrl ??
                                            "https://yuz.uz/imageproxy/1920x/https://yuz.uz/file/news/96432fba0254d5d672bc06f2e4ad611f.jpg"),
                                      ),
                                    ),
                                  ),
                                  MyText(
                                    data: snapshot.data?.news?[index].title ??
                                        "Title",
                                    size: ConstSizes.width(6),
                                    fontWeight: FontWeight.w700,
                                    bottom: ConstSizes.height(2),
                                    top: ConstSizes.height(1),
                                    color: AppColors.color91,
                                  ),
                                  MyText(
                                      data: snapshot
                                              .data?.news?[index].description ??
                                          "Description",
                                      bottom: ConstSizes.height(1)),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.calendar_today_outlined,
                                        size: 16,
                                        color: AppColors.color108,
                                      ),
                                      MyText(
                                        data: snapshot
                                                .data?.news?[index].createdAt ??
                                            "2024-10-26 10:16",
                                        left: ConstSizes.width(2),
                                        size: 16,
                                      ),
                                    ],
                                  )
                                ],
                              ),
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
