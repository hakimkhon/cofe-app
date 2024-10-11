import 'package:cafe/presentation/screens/auth/confirm_page.dart';
import 'package:cafe/presentation/screens/auth/register_page.dart';
import 'package:cafe/presentation/screens/home/home_page.dart';
import 'package:flutter/material.dart';

class CofeRouteNames {
  static const String home = '/home';
  static const String register = '/register';
  static const String confirm = '/confirm';

}

class CofeRoute {

  static final CofeRoute _instance = CofeRoute._init();
  static CofeRoute get instance => _instance;
  CofeRoute._init();

  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case CofeRouteNames.home:
        return MaterialPageRoute(builder: (context) => const HomePage());
      case CofeRouteNames.register:
        return MaterialPageRoute(builder: (context) => const RegisterPage());
      case CofeRouteNames.confirm:
        return MaterialPageRoute(builder: (context) => const ConfirmPage());
      default:
        return MaterialPageRoute(builder: (context) => const HomePage());
    }
  }
}