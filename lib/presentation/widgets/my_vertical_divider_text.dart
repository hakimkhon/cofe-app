import 'package:cafe/presentation/core/constant/colors.dart';
import 'package:cafe/presentation/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';

class MyVerticalDividerText extends StatelessWidget {
  const MyVerticalDividerText({
    super.key,
    required this.data,
    this.bottom = 10,
    this.top = 30,
    this.textSize = 26,
  });
  final double top;
  final double bottom;
  final String data;
  final double textSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: top, bottom: bottom),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 5),
            height: 36,
            width: 3,
            color: AppColors.color254,
          ),
          MyText(
            data: data.toUpperCase(),
            size: textSize,
            color: AppColors.color108,
          ),
        ],
      ),
    );
  }
}
