import 'package:cafe/data/service/api_service.dart';
import 'package:cafe/presentation/core/constant/colors.dart';
import 'package:cafe/presentation/core/constant/sizes.dart';
import 'package:cafe/presentation/core/resource/assets.dart';
import 'package:cafe/presentation/widgets/custom_button.dart';
import 'package:cafe/presentation/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';

class ConfirmPage extends StatefulWidget {
  const ConfirmPage({super.key, required this.phoneNumber});
  final String phoneNumber;

  @override
  State<ConfirmPage> createState() => _ConfirmPageState();
}

String smsCod = "";
bool correctSmsCod = false;

class _ConfirmPageState extends State<ConfirmPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: SizedBox(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20.w, horizontal: 15.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(IconAssets.logo),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyText(
                      data: "SMS",
                      size: 24.sp,
                      color: AppColors.color91,
                    ),
                    MyText(
                      data: "Telefon raqamingizga kelgan SMS kodni kiriting",
                      size: 14.sp,
                      fontWeight: FontWeight.w300,
                      color: AppColors.color119,
                      bottom: 10.w,
                    ),
                    SizedBox(
                      width: ConstSizes.screenWidth(),
                      child: Pinput(
                        defaultPinTheme: PinTheme(
                          width: ConstSizes.screenWidth() * 0.12,
                          height: ConstSizes.screenWidth() * 0.14,
                          margin: EdgeInsets.symmetric(horizontal: 6.w),
                          textStyle: TextStyle(
                            fontSize: 22.sp,
                            color: AppColors.color89,
                            fontWeight: FontWeight.w600,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(color: AppColors.primaryColor),
                            borderRadius: BorderRadius.circular(8.w),
                          ),
                        ),
                        onChanged: (value) {
                          if (value.length != 6) {
                            setState(() {
                              correctSmsCod = false;
                              smsCod = "";
                            });
                          } else if (value.length == 6) {
                            setState(() {
                              correctSmsCod = true;
                              smsCod = value;
                            });
                          }
                        },
                        scrollPadding: const EdgeInsets.all(5),
                        length: 6,
                      ),
                    ),
                  ],
                ),
                CustomButton(
                  color: correctSmsCod ? AppColors.primaryColor : Colors.grey,
                  text: "Tasdiqlash",
                  onTap: () {
                    if (correctSmsCod) {
                      ApiService apiService = ApiService();
                      apiService.checkSMSCode(
                        phoneNumber: widget.phoneNumber,
                        smsCod: smsCod,
                      );
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
