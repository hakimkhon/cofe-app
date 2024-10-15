import 'package:cafe/data/routes/cafe_route.dart';
import 'package:cafe/presentation/core/constant/colors.dart';
import 'package:cafe/presentation/core/resource/assets.dart';
import 'package:cafe/presentation/widgets/custom_button.dart';
import 'package:cafe/presentation/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';

class ConfirmPage extends StatelessWidget {
  const ConfirmPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController smsCodController1 = TextEditingController();
    TextEditingController smsCodController2 = TextEditingController();
    TextEditingController smsCodController3 = TextEditingController();
    TextEditingController smsCodController4 = TextEditingController();
    TextEditingController smsCodController5 = TextEditingController();

    return Scaffold(
      backgroundColor: AppColors.secondaryColor,
      body: SafeArea(
        bottom: false,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          color: AppColors.secondaryColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(IconAssets.logo),

              // enter date
              SizedBox(
                width: double.infinity,
                height: 150,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const MyText(
                      data: "SMS",
                      size: 28,
                      color: AppColors.color91,
                    ),
                    const MyText(
                      data: "Telefon raqamingizga kelgan SMS kodni kiriting",
                      fontWeight: FontWeight.w300,
                      color: AppColors.color119,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        textFieldCode(
                          smsCodController1,
                        ),
                        textFieldCode(
                          smsCodController2,
                        ),
                        textFieldCode(
                          smsCodController3,
                        ),
                        textFieldCode(
                          smsCodController4,
                        ),
                        textFieldCode(
                          smsCodController5,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              CustomButton(
                text: "Tasdiqlash",
                onTap: () {
                  Navigator.pushNamed(context, CafeRouteNames.home);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  textFieldCode(TextEditingController controller) {
    return SizedBox(
      width: 50,
      child: TextField(
        textAlign: TextAlign.center,
        controller: controller,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: AppColors.color230,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: AppColors.primaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
