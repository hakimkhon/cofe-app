import 'package:cafe/presentation/core/constant/colors.dart';
import 'package:cafe/presentation/core/resource/assets.dart';
import 'package:cafe/presentation/screens/home/widgets/header_widget.dart';
import 'package:cafe/presentation/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';

class FilialsPage extends StatelessWidget {
  const FilialsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Column(
            children: [
              const HeaderWidget(),
              Padding(
                padding: const EdgeInsets.only(top: 40, bottom: 20),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 5),
                      height: 36,
                      width: 3,
                      color: AppColors.color254,
                    ),
                    const MyText(
                      data: "FILIALLAR",
                      size: 21,
                      color: AppColors.color108,
                    ),
                    Card(
                      child: Column(
                        children: [
                          Container(
                            width: double.infinity,
                            height: 400,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(16),
                                topRight: Radius.circular(16),
                              ),
                              image: DecorationImage(
                                  image: AssetImage(ImageAssets.map)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
