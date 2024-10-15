import 'package:cafe/data/routes/cofe_route.dart';
import 'package:cafe/presentation/core/constant/colors.dart';
import 'package:cafe/presentation/core/resource/assets.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Image(
          image: AssetImage(IconAssets.logo),
          width: 120,
        ),
        const Spacer(),
        const Stack(
          children: [
            Card(
              child: SizedBox(
                width: 40,
                height: 40,
                child: Icon(
                  Icons.shopping_cart_outlined,
                  size: 20,
                ),
              ),
            ),
            Positioned(
              left: 16,
              top: -1,
              child: CircleAvatar(
                radius: 8,
                backgroundColor: AppColors.primaryColor,
                child: Text(
                  "2",
                  style: TextStyle(
                    fontSize: 10,
                    color: AppColors.secondaryColor,
                  ),
                ),
              ),
            ),
          ],
        ),
        Card(
          child: SizedBox(
            width: 40,
            height: 40,
            child: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, CofeRouteNames.menu);
              },
              icon: const Icon(
                Icons.sort_outlined,
                size: 20,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
