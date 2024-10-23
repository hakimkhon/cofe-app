import 'package:cafe/presentation/screens/home/widgets/burger_widget.dart';
import 'package:cafe/presentation/screens/home/widgets/fast_food_widget.dart';
import 'package:cafe/presentation/screens/home/widgets/header_widget.dart';
import 'package:cafe/presentation/screens/home/widgets/kfc_widget.dart';
import 'package:cafe/presentation/screens/home/widgets/popular_food_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: ListView(
            children: const [
              HeaderWidget(),
              KfcWidget(),
              FastFoodWidget(),
              BurgerWidget(),
              PopularFoodWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
