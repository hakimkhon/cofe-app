import 'package:cafe/data/routes/cafe_route.dart';
import 'package:cafe/presentation/core/constant/colors.dart';
import 'package:cafe/presentation/core/constant/sizes.dart';
import 'package:cafe/presentation/core/resource/assets.dart';
import 'package:cafe/presentation/widgets/custom_button.dart';
import 'package:cafe/presentation/widgets/custom_text_field.dart';
import 'package:cafe/presentation/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';

class OrderDeliveryPage extends StatelessWidget {
  const OrderDeliveryPage({super.key});

  @override
  Widget build(BuildContext context) {
    // List<OrdersModel> orders = MockData.orders;
    TextEditingController nameController = TextEditingController();
    TextEditingController phoneNumberController = TextEditingController();
    // TextEditingController phoneNumberController = TextEditingController();
    return Scaffold(
      backgroundColor: const Color.fromARGB(248, 255, 255, 255),
      // appBar: AppBar(),
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
                bottom: ConstSizes.height(2),
              ),
              SizedBox(
                width: ConstSizes.width(100),
                height: ConstSizes.height(11),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomTextFieldWidget(
                      hintText: "Khatamov Nuriddin",
                      verticalPadding: 5,
                      controller: nameController,
                      icon: Icons.person,
                      hindSize: 20,
                      textSize: 20,
                    ),
                    CustomTextFieldWidget(
                      hintText: "+998 90 776 07 05",
                      controller: phoneNumberController,
                      verticalPadding: 5,
                      hindSize: 20,
                      textSize: 20,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: ConstSizes.height(2)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: ConstSizes.width(45),
                      child: CustomButton(
                        onTap: () {},
                        text: "Yetkazib berish",
                      ),
                    ),
                    SizedBox(
                      width: ConstSizes.width(45),
                      child: CustomButton(
                        onTap: () {},
                        text: "Borib olish",
                        color: AppColors.secondaryColor,
                        textColor: AppColors.color108,
                        borderColor: AppColors.color108,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: ConstSizes.width(100),
                height: ConstSizes.height(30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: const DecorationImage(
                    image: AssetImage(
                      ImageAssets.buyurtma,
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const Spacer(),
              CustomButton(
                onTap: () {
                  Navigator.pushNamed(context, CafeRouteNames.orderDelivery);
                },
                text: "Buyurtma berish",
              )
            ],
          ),
        ),
      ),
    );
  }
}
