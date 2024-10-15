import 'package:cafe/presentation/screens/home/widgets/burger_widget.dart';
import 'package:cafe/presentation/screens/home/widgets/fast_food_widget.dart';
import 'package:cafe/presentation/screens/home/widgets/header_widget.dart';
import 'package:cafe/presentation/screens/home/widgets/kfc_widget.dart';
import 'package:cafe/presentation/screens/home/widgets/popular_food_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white.withOpacity(0.04),
      body: SafeArea(
        
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
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
