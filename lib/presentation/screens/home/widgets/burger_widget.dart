import 'package:cafe/presentation/core/constant/colors.dart';
import 'package:cafe/presentation/core/resource/assets.dart';
import 'package:cafe/presentation/widgets/custom_button.dart';
import 'package:cafe/presentation/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';

class BurgerWidget extends StatelessWidget {
  const BurgerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Column(
        children: [
          Row(
            children: [
              const Image(
                width: 38,
                fit: BoxFit.fill,
                image: AssetImage(ImageAssets.burgercha),
              ),
              Container(
                margin: const EdgeInsets.only(left: 15, right: 5),
                height: 36,
                width: 3,
                color: AppColors.color254,
              ),
              const MyText(
                data: "Burger",
                size: 21,
                color: AppColors.color108,
              ),
            ],
          ),
          Card(
            // shadowColor: const Color.fromRGBO(0, 0, 0, 0.05),
            color: AppColors.secondaryColor,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30.0,
                vertical: 25,
              ),
              child: Column(
                children: [
                  const Image(
                    image: AssetImage(
                      ImageAssets.burger,
                    ),
                  ),
                  const MyText(
                    data: "Burger",
                    size: 28,
                    color: AppColors.color43,
                  ),
                  const MyText(
                    data: "24 000 so'm",
                    size: 20,
                    color: AppColors.color169,
                    bottom: 15,
                  ),
                  CustomButton(onTap: () {})
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
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30.0,
                vertical: 25,
              ),
              child: Column(
                children: [
                  const Image(
                    image: AssetImage(
                      ImageAssets.burger,
                    ),
                  ),
                  const MyText(
                    data: "Burger",
                    size: 28,
                    color: AppColors.color43,
                  ),
                  const MyText(
                    data: "24 000 so'm",
                    size: 20,
                    color: AppColors.color169,
                    bottom: 15,
                  ),
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
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
