import 'package:cafe/data/mock/mock_data.dart';
import 'package:cafe/data/model/orders_model.dart';
import 'package:cafe/data/routes/cafe_route.dart';
import 'package:cafe/presentation/core/constant/colors.dart';
import 'package:cafe/presentation/core/constant/sizes.dart';
import 'package:cafe/presentation/widgets/custom_button.dart';
import 'package:cafe/presentation/widgets/custom_text_field.dart';
import 'package:cafe/presentation/widgets/custom_text_widget.dart';
import 'package:cafe/presentation/widgets/increment_amount_widget.dart';
import 'package:flutter/material.dart';

class BookingPage extends StatelessWidget {
  const BookingPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<OrdersModel> orders = MockData.orders;
    TextEditingController promoCodController = TextEditingController();
    return Scaffold(
      backgroundColor: const Color.fromARGB(248, 255, 255, 255),
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            left: ConstSizes.width(3),
            right: ConstSizes.width(3),
            bottom: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyText(
                data: "Buyurtma qilish",
                size: ConstSizes.width(5),
                color: AppColors.color91,
                fontWeight: FontWeight.w800,
                bottom: ConstSizes.height(1),
              ),
              SizedBox(
                width: ConstSizes.width(100),
                height: ConstSizes.height(70),
                child: ListView.builder(
                  itemCount: orders.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(top: ConstSizes.height(2)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            orders[index].image,
                            width: ConstSizes.width(10),
                            fit: BoxFit.fill,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: ConstSizes.width(2)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                MyText(
                                  data: orders[index].title,
                                  size: ConstSizes.width(4),
                                  fontWeight: FontWeight.w500,
                                ),
                                MyText(
                                  data: "${orders[index].price} so'm",
                                  size: ConstSizes.width(3),
                                  color: AppColors.color169,
                                ),
                              ],
                            ),
                          ),
                          const Spacer(),
                          const IncrementAmountWidget(),
                        ],
                      ),
                    );
                  },
                ),
              ),
              const Spacer(),
              SizedBox(
                width: ConstSizes.width(100),
                height: ConstSizes.height(7),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "192000 so'm",
                          style: TextStyle(
                              fontSize: 14,
                              color: AppColors.color108,
                              decoration: TextDecoration.lineThrough,
                              decorationColor: AppColors.color108),
                        ),
                        MyText(
                          data: "149 000 so'm",
                          size: 19,
                          color: AppColors.color89,
                          fontWeight: FontWeight.w500,
                        ),
                      ],
                    ),
                    const Text(
                      "40 daqiqa",
                      style: TextStyle(
                        fontSize: 18,
                        color: AppColors.color108,
                      ),
                    ),
                    SizedBox(
                      width: ConstSizes.width(35),
                      height: ConstSizes.height(4),
                      child: CustomTextFieldWidget(
                        leftPadding: 16,
                        verticalPadding: 0,
                        hindSize: 16,
                        textSize: 16,
                        hintText: "PROMO KOD",
                        controller: promoCodController,
                      ),
                    ),
                  ],
                ),
              ),
              CustomButton(
                onTap: () {
                  Navigator.pushNamed(context, CafeRouteNames.orderDelivery);
                },
                text: "Davom etish",
              )
            ],
          ),
        ),
      ),
    );
  }
}
