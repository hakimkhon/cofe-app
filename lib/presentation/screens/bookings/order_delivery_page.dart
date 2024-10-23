import 'package:cafe/data/routes/cafe_route.dart';
import 'package:cafe/presentation/core/constant/colors.dart';
import 'package:cafe/presentation/core/constant/sizes.dart';
import 'package:cafe/presentation/core/resource/assets.dart';
import 'package:cafe/presentation/screens/bookings/custom_dialog_widget.dart';
import 'package:cafe/presentation/widgets/custom_button.dart';
import 'package:cafe/presentation/widgets/custom_text_field.dart';
import 'package:cafe/presentation/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderDeliveryPage extends StatelessWidget {
  const OrderDeliveryPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController phoneNumberController = TextEditingController();
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
                height: ConstSizes.height(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: ConstSizes.height(4.6),
                      child: CustomTextFieldWidget(
                        hintText: "Khatamov Nuriddin",
                        // verticalPadding: 5,
                        controller: nameController,
                        icon: Icons.person,
                        hindSize: 18,
                        textSize: 18,
                        iconSize: 20,
                        positionHight: 9,
                      ),
                    ),
                    SizedBox(
                      height: ConstSizes.height(4.6),
                      child: CustomTextFieldWidget(
                        hintText: "+998 90 776 07 05",
                        controller: phoneNumberController,
                        // verticalPadding: 5,
                        hindSize: 18,
                        textSize: 18,
                        iconSize: 20,
                        positionHight: 9,
                      ),
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
              MyText(
                data: "ETAMIN IT SOLUTIONS",
                size: 16,
                color: AppColors.color108,
                top: ConstSizes.height(1),
                bottom: ConstSizes.height(2),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: ConstSizes.width(45),
                    height: ConstSizes.height(4),
                    child: CustomButton(
                      onTap: () {},
                      text: "NAQT PUL",
                      color: AppColors.secondaryColor,
                      textColor: AppColors.color108,
                      borderColor: AppColors.color108,
                    ),
                  ),
                  SizedBox(
                    width: ConstSizes.width(45),
                    height: ConstSizes.height(4),
                    child: CustomButton(
                      onTap: () {},
                      text: "KARTA ORQALI",
                      color: AppColors.color254,
                      textColor: AppColors.secondaryColor,
                      borderColor: AppColors.color254,
                    ),
                  ),
                ],
              ),
              14.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyText(
                    data: "7777 7777 7777 7777 | NURIDDIN H.",
                    size: 12.sp,
                    color: AppColors.color108,
                  ),
                  SizedBox(
                    width: ConstSizes.screenWidth() * 0.35,
                    height: ConstSizes.screenWidth() * 0.08,
                    child: CustomButton(
                      onTap: () {
                        showDialog(
                          context: context,
                          
                          builder: (context) {
                            return const CustomDialogWidget();
                          },
                        );
                      },
                      text: "Karta qo’shish +",
                    ),
                  ),
                ],
              ),
              const Spacer(),
              CustomButton(
                onTap: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, CafeRouteNames.home, (setting) => false);
                },
                text: "Buyurtma berish",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
