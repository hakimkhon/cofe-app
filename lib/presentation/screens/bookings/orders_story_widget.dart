import 'package:cafe/data/mock/mock_data.dart';
import 'package:cafe/data/model/orders_model.dart';
import 'package:cafe/presentation/core/constant/colors.dart';
import 'package:cafe/presentation/core/constant/sizes.dart';
import 'package:cafe/presentation/widgets/custom_button.dart';
import 'package:cafe/presentation/widgets/custom_text_widget.dart';
import 'package:cafe/presentation/widgets/my_vertical_divider_text.dart';
import 'package:flutter/material.dart';

class OrdersStoryWidget extends StatelessWidget {
  const OrdersStoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<OrdersModel> orders = MockData.orders;
    return Column(
      children: [
        const MyVerticalDividerText(
          data: "Buyurtmalar tarixi",
          textSize: 21,
          top: 60,
          bottom: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: ConstSizes.width(45),
              child: CustomButton(
                onTap: () {},
                text: "Aktiv buyurtmalar",
                borderRadius: 10,
              ),
            ),
            SizedBox(
              width: ConstSizes.width(45),
              child: CustomButton(
                onTap: () {},
                text: "Hammasi",
                borderRadius: 10,
                color: AppColors.secondaryColor,
                textColor: AppColors.color108,
                borderColor: AppColors.color108,
              ),
            ),
          ],
        ),
        for (int i = 0; i < orders.length; i++)
          Padding(
            padding: EdgeInsets.only(top: ConstSizes.height(2)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyText(
                  data: orders[i].dateTime,
                  size: ConstSizes.width(4),
                  right: ConstSizes.width(2),
                ),
                Image.asset(
                  orders[i].image,
                  width: ConstSizes.width(10),
                  fit: BoxFit.fill,
                ),
                Padding(
                  padding: EdgeInsets.only(left: ConstSizes.width(2)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MyText(
                        data: orders[i].title,
                        size: ConstSizes.width(4),
                        fontWeight: FontWeight.w500,
                      ),
                      MyText(
                        data: "${orders[i].price} so'm",
                        size: ConstSizes.width(3),
                        color: AppColors.color169,
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                MyText(
                  data: "${orders[i].count} dona",
                  size: ConstSizes.width(3.5),
                  right: ConstSizes.width(2),
                ),
                MyText(
                  data: orders[i].status,
                  color: const Color.fromRGBO(26, 222, 0, 1),
                  size: ConstSizes.width(3.5),
                ),
              ],
            ),
          )
      ],
    );
  }
}
