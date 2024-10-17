import 'package:cafe/presentation/core/constant/colors.dart';
import 'package:cafe/presentation/core/constant/sizes.dart';
import 'package:cafe/presentation/core/resource/assets.dart';
import 'package:cafe/presentation/widgets/custom_button.dart';
import 'package:cafe/presentation/widgets/custom_text_widget.dart';
import 'package:cafe/presentation/widgets/increment_amount_widget.dart';
import 'package:cafe/presentation/widgets/my_vertical_divider_text.dart';
import 'package:flutter/material.dart';

class PopularFoodWidget extends StatelessWidget {
  const PopularFoodWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyVerticalDividerText(
          data: "ommabop",
          top: ConstSizes.height(4),
          bottom: ConstSizes.height(2),
        ),
        customCard(
          "Chizburger",
          "Mol go'shti kotleti, pomidor, aysberg, pishloq, tuzlangan bodring, piyoz, xantal, ketchup, mayonez",
          ImageAssets.chizburger,
          const IncrementAmountWidget(),
        ),
        const SizedBox(
          height: 20,
        ),
        customCard(
          "Chizburger",
          "Mol go'shti kotleti, pomidor, aysberg, pishloq, tuzlangan bodring, piyoz, xantal, ketchup, mayonez",
          ImageAssets.chizburger,
          CustomButton(onTap: () {}),
        ),
      ],
    );
  }

  customCard(String title, String subTitle, String image, Widget footer) {
    return Card(
      color: AppColors.secondaryColor,
      child: Container(
        width: ConstSizes.width(100),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(ConstSizes.width(5)),
        ),
        height: ConstSizes.height(25),
        child: Row(
          children: [
            Image(
              height: ConstSizes.height(25),
              image: AssetImage(
                image,
              ),
              fit: BoxFit.fill,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyText(
                      data: title,
                      size: ConstSizes.width(6),
                      color: AppColors.color108,
                    ),
                    MyText(
                      data: subTitle,
                      size: ConstSizes.width(3.5),
                      top: 8,
                      color: AppColors.color169,
                    ),
                    const Spacer(),
                    footer,
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
