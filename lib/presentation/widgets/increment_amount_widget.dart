import 'package:cafe/presentation/core/constant/colors.dart';
import 'package:cafe/presentation/core/constant/sizes.dart';
import 'package:cafe/presentation/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class IncrementAmountWidget extends StatefulWidget {
  const IncrementAmountWidget({super.key});
  // final Color btnCollor;

  @override
  State<IncrementAmountWidget> createState() => _IncrementAmountWidgetState();
}

class _IncrementAmountWidgetState extends State<IncrementAmountWidget> {
  int count = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ZoomTapAnimation(
          onTap: () {
            if (count > 0) {
              setState(() {
                count--;
              });
            }
          },
          child: Container(
            width: 50,
            height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13), color: Colors.white),
            child: Icon(
              Icons.remove,
              size: ConstSizes.width(5),
              color: AppColors.color108,
            ),
          ),
        ),
        MyText(
          data: count.toString(),
          left: 10,
          right: 10,
          color: AppColors.color108,
          size: ConstSizes.width(5),
        ),
        ZoomTapAnimation(
          onTap: () {
            if (count < 99) {
              setState(() {
                count++;
              });
            }
          },
          child: Container(
            width: 50,
            height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13), color: Colors.white),
            child: Icon(
              Icons.add,
              size: ConstSizes.width(5),
              color: AppColors.color108,
            ),
          ),
        ),
      ],
    );
  }
}
