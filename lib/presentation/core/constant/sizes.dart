import 'package:cafe/data/routes/navigator_service.dart';
import 'package:flutter/material.dart';

class ConstSizes {
  // The purpose of dividing by 100 is to express it as a percentage
  static double height(double sizeHeight) {
    return MediaQuery.of(NavigationService.instance.navigatorKey.currentState!.context).size.height * sizeHeight / 100;
  }

  static double width(double sizeWidth) {
    return MediaQuery.of(NavigationService.instance.navigatorKey.currentState!.context).size.width * sizeWidth / 100;
  }
  static double screenHight() {
    return MediaQuery.of(NavigationService.instance.navigatorKey.currentState!.context).size.height;
  }
  static double screenWidth() {
    return MediaQuery.of(NavigationService.instance.navigatorKey.currentState!.context).size.width;
  }

  static double statusBarHight() {
    return MediaQuery.of(NavigationService.instance.navigatorKey.currentState!.context).padding.top;
  }
}

/**
    final appBar = AppBar(
      title: const Text(""),
      centerTitle: true,
      backgroundColor: AppColors.secondaryColor,
    );
    final appBarHight = appBar.preferredSize.height;
 */