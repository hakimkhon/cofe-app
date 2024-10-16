import 'package:cafe/data/mock/mock_data.dart';
import 'package:cafe/presentation/core/constant/colors.dart';
import 'package:cafe/presentation/core/resource/assets.dart';
import 'package:cafe/presentation/screens/home/widgets/header_widget.dart';
import 'package:cafe/presentation/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';

class DetailFilialPage extends StatelessWidget {
  const DetailFilialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 16,
          ),
          child: Column(
            children: [
              const HeaderWidget(),
              Padding(
                padding: const EdgeInsets.only(
                  top: 40,
                  bottom: 8,
                ),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 5),
                      height: 36,
                      width: 3,
                      color: AppColors.color254,
                    ),
                    MyText(
                      data: MockData.filials[0].sityName,
                      size: 21,
                      color: AppColors.color108,
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  const Icon(Icons.access_time_outlined),
                  MyText(
                    data: MockData.filials[0].workingTime,
                    color: AppColors.color108,
                    size: 20,
                    left: 6,
                  ),
                ],
              ),
              Container(
                width: double.infinity,
                height: 700,
                margin: const EdgeInsets.only(top: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: const DecorationImage(
                    image: AssetImage(
                      ImageAssets.detailFilial,
                    ),
                    fit: BoxFit.fill
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
