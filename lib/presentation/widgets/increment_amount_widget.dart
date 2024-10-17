import 'package:cafe/presentation/core/constant/colors.dart';
import 'package:cafe/presentation/core/constant/sizes.dart';
import 'package:cafe/presentation/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';

class IncrementAmountWidget extends StatefulWidget {
  const IncrementAmountWidget({super.key});

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
        IconButton(
          onPressed: () {
            if (count > 0) {
              count--;
              setState(() {});
            }
          },
          icon: Icon(
            Icons.remove,
            size: ConstSizes.width(5),
          ),
        ),
        MyText(
          data: count.toString(),
          left: 10,
          right: 10,
          color: AppColors.color108,
          size: ConstSizes.width(5),
        ),
        IconButton(
          onPressed: () {
            if (count < 99) {
              setState(() {
                count++;
              });
            }
          },
          icon: Icon(
            Icons.add,
            size: ConstSizes.width(5),
          ),
        ),
      ],
    );
  }
}
