import 'package:cafe/data/mock/mock_data.dart';
import 'package:cafe/presentation/core/constant/colors.dart';
import 'package:cafe/presentation/core/constant/sizes.dart';
import 'package:cafe/presentation/screens/home/widgets/header_widget.dart';
import 'package:cafe/presentation/widgets/custom_text_widget.dart';
import 'package:cafe/presentation/widgets/my_vertical_divider_text.dart';
import 'package:flutter/material.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Column(
            children: [
              const HeaderWidget(),
              const MyVerticalDividerText(data: "yangiliklar"),
              SizedBox(
                width: ConstSizes.width(100),
                height: ConstSizes.height(80),
                child: ListView.builder(
                  itemCount: MockData.news.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: ConstSizes.height(1)),
                      child: Card(
                        color: AppColors.secondaryColor,
                        child: Padding(
                          padding: EdgeInsets.all(ConstSizes.width(5)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: double.infinity,
                                height: 190,
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
                              MyText(
                                data: MockData.news[index].title,
                                size: ConstSizes.width(6),
                                fontWeight: FontWeight.w700,
                                bottom: ConstSizes.height(2),
                                top: ConstSizes.height(1),
                                color: AppColors.color91,
                              ),
                              MyText(data: MockData.news[index].subTitle, bottom: ConstSizes.height(1)),
                              Row(
                                children: [
                                  const Icon(Icons.calendar_today_outlined, size: 16,color: AppColors.color108,),
                                  MyText(
                                      data:
                                          MockData.news[index].data.toString(), left: ConstSizes.width(2), size: 16,),
                                ],
                              )
                            ],
                          ),
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
