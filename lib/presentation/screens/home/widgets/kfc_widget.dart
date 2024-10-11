import 'package:cafe/presentation/core/constant/colors.dart';
import 'package:cafe/presentation/core/resource/assets.dart';
import 'package:cafe/presentation/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';

class KfcWidget extends StatelessWidget {
  const KfcWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 190,
            alignment: Alignment.bottomLeft,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  ImageAssets.kfc_2,
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 190,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromRGBO(217, 217, 217, 0),
                  Color.fromRGBO(38, 38, 38, 0.67),
                  Color.fromRGBO(35, 35, 35, 0.78),
                ],
              ),
            ),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyText(
                  data: "KFC endilikda arzonlashti",
                  size: 20,
                  color: AppColors.secondaryColor,
                  fontWeight: FontWeight.w800,
                ),
                MyText(
                  data:
                      "Endi 1 kilogram KFC’ni atigi 30 ming so’mga harid qilishingiz mumkin!",
                  size: 15,
                  color: AppColors.secondaryColor,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
