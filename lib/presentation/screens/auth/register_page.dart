// import 'package:cafe/data/routes/cafe_route.dart';
// import 'package:cafe/data/routes/navigator_service.dart';
import 'package:cafe/data/service/api_service.dart';
import 'package:cafe/presentation/core/constant/colors.dart';
import 'package:cafe/presentation/core/resource/assets.dart';
import 'package:cafe/presentation/widgets/custom_button.dart';
import 'package:cafe/presentation/widgets/custom_text_field.dart';
import 'package:cafe/presentation/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  TextEditingController textEditingController = TextEditingController();

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
      data: "Ma’lumotlaringizni kiriting",
      size: 24.sp,
      color: AppColors.color91,
    );
  }

  Widget _subTitle() {
    return MyText(
      data: "Qulayligingiz uchun ma’lumotlaringizni saqlab qo’yamiz",
      size: 14.sp,
      fontWeight: FontWeight.w300,
      color: AppColors.color119,
    );
  }

  Widget _inputDate() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyText(
          data: "Telefon raqamingizni kiriting:",
          size: 12.sp,
          fontWeight: FontWeight.w300,
          color: AppColors.color108,
          bottom: 4.w,
          top: 6.w,
        ),
        CustomTextFieldWidget(
          hintText: "Telefon raqamimgiz...",
          controller: textEditingController,
        ),
      ],
    );
  }

  Widget _footer() {
    return CustomButton(
      text: "Tasdiqlash",
      onTap: () {
        ApiService apiService = ApiService();
           apiService.sendSMSCode(phoneNumber: textEditingController.text);
        
      },
    );
  }
}
