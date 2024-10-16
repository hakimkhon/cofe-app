import 'package:cafe/presentation/core/constant/colors.dart';
import 'package:cafe/presentation/core/resource/assets.dart';
import 'package:cafe/presentation/widgets/custom_button.dart';
import 'package:cafe/presentation/widgets/custom_text_widget.dart';
import 'package:cafe/presentation/widgets/my_vertical_divider_text.dart';
import 'package:flutter/material.dart';

class PopularFoodWidget extends StatelessWidget {
  const PopularFoodWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const MyVerticalDividerText(
          data: "ommabop",
        ),
        Card(
          // shadowColor: const Color.fromRGBO(0, 0, 0, 0.05),
          color: AppColors.secondaryColor,
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            height: 220,
            child: Row(
              children: [
                const Image(
                  height: 220,
                  image: AssetImage(
                    ImageAssets.chizburger,
                  ),
                  fit: BoxFit.fill,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const MyText(
                          data: "Chizburger",
                          size: 28,
                          color: AppColors.color108,
                        ),
                        const MyText(
                          data:
                              "Mol go'shti kotleti, pomidor, aysberg, pishloq, tuzlangan bodring, piyoz, xantal, ketchup, mayonez",
                          size: 14,
                          top: 8,
                          color: AppColors.color169,
                        ),
                        const Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.remove),
                            ),
                            const MyText(
                              data: "1",
                              left: 10,
                              right: 10,
                              color: AppColors.color108,
                              size: 20,
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.add),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Card(
          // shadowColor: const Color.fromRGBO(0, 0, 0, 0.05),
          color: AppColors.secondaryColor,
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            height: 220,
            child: Row(
              children: [
                const Image(
                  height: 220,
                  image: AssetImage(
                    ImageAssets.chizburger,
                  ),
                  fit: BoxFit.fitHeight,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const MyText(
                          data: "Chizburger",
                          size: 28,
                          color: AppColors.color108,
                        ),
                        const MyText(
                          data:
                              "Mol go'shti kotleti, pomidor, aysberg, pishloq, tuzlangan bodring, piyoz, xantal, ketchup, mayonez",
                          size: 14,
                          top: 8,
                          color: AppColors.color169,
                        ),
                        const Spacer(),
                        CustomButton(onTap: () {})
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
