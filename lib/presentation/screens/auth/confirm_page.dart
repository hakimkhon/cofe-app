import 'package:cafe/data/routes/cafe_route.dart';
import 'package:cafe/data/routes/navigator_service.dart';
import 'package:cafe/presentation/core/constant/colors.dart';
import 'package:cafe/presentation/core/constant/sizes.dart';
import 'package:cafe/presentation/core/resource/assets.dart';
import 'package:cafe/presentation/widgets/custom_button.dart';
import 'package:cafe/presentation/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';

class ConfirmPage extends StatefulWidget {
  const ConfirmPage({super.key, required this.phoneNumber,});
  final String phoneNumber;

  @override
  State<ConfirmPage> createState() => _ConfirmPageState();
}

bool correctSmsCod = false;
bool ok = false;

class _ConfirmPageState extends State<ConfirmPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildUI(),
    );
  }

  Widget _buildUI() {
    return SafeArea(
      bottom: false,
      child: SizedBox(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20.w, horizontal: 15.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _header(),
              _body(),
              _footer(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _header() {
    return Image.asset(IconAssets.logo);
  }

  Widget _body() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _title(),
        _subTitle(),
        _inputDate(),
      ],
    );
  }

  Widget _title() {
    return MyText(
      data: "SMS",
      size: 24.sp,
      color: AppColors.color91,
    );
  }

  Widget _subTitle() {
    return MyText(
      data: "Telefon raqamingizga kelgan SMS kodni kiriting",
      size: 14.sp,
      fontWeight: FontWeight.w300,
      color: AppColors.color119,
      bottom: 10.w,
    );
  }

  Widget _inputDate() {
    return SizedBox(
      width: ConstSizes.screenWidth(),
      child: Form(
        // key: formKey,
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
          // validator: (value) {
          //   if (validPin == value) {
          //     ok = true;
          //   }
          //   if (validPin != value) {
          //     ok = false;
          //   }
          //   return value == validPin ? null : "No to'g'ri kod kiritildi";
          // },
          onChanged: (value) {
            if (value.length != 6) {
              setState(() {
                correctSmsCod = false;
              });
            } else if (value.length == 6) {
              setState(() {
                correctSmsCod = true;
              });
            }
          },
          scrollPadding: const EdgeInsets.all(5),
          length: 6,
        ),
      ),
    );
  }

  Widget _footer() {
    return CustomButton(
      color: correctSmsCod ? AppColors.primaryColor : Colors.grey,
      text: "Tasdiqlash",
      onTap: () {
        if (ok) {
          Navigator.pushNamed(
            NavigationService.instance.navigatorKey.currentState!.context,
            CafeRouteNames.home,
          );
        }
      },
    );
  }
}
