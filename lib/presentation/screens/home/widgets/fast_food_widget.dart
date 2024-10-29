// import 'package:cafe/data/mock/mock_data.dart';
// import 'package:cafe/presentation/core/constant/colors.dart';
// import 'package:cafe/presentation/widgets/custom_text_widget.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:zoom_tap_animation/zoom_tap_animation.dart';

// class FastFoodWidget extends StatelessWidget {
//   const FastFoodWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: double.infinity,
//       child: GridView.builder(
//         controller: ScrollController(), // Scrol bo'lmaslik uchun
//         itemCount: MockData.fastFood.length,
//         shrinkWrap: true,
//         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 2,
//           crossAxisSpacing: 20,
//           mainAxisSpacing: 15,
//           childAspectRatio: 4.5,
//         ),
//         itemBuilder: (context, index) {
//           return ZoomTapAnimation(
//             onTap: () {
//               // selectID = index;
//               debugPrint("$index-index bosildi");
//             },
//             child: foods(
//               MockData.fastFood[index].title,
//               MockData.fastFood[index].icon,
              
//               index == 1
//                   ? AppColors.primaryColor
//                   : Colors.black.withOpacity(0.04),
//               index == 1 ? AppColors.secondaryColor : AppColors.color108,
//             ),
//           );
//         },
//       ),
//     );
//   }

//   foods(String title, String icon, Color color, Color textColor) {
//     return Container(
//       width: 120.w,
//       height: 10.w,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(16),
//         color: color,
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Image(
//             image: AssetImage(icon),
//             width: 18.sp,
//           ),
//           MyText(
//             data: title,
//             color: textColor,
//             size: 18.sp,
//             left: 4.w,
//           ),
//         ],
//       ),
//     );
//   }
// }

// // int selectID = 0;
