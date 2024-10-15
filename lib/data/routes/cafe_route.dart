import 'package:cafe/presentation/screens/auth/confirm_page.dart';
import 'package:cafe/presentation/screens/auth/register_page.dart';
import 'package:cafe/presentation/screens/filials/detail_filial_page.dart';
import 'package:cafe/presentation/screens/filials/filials_page.dart';
import 'package:cafe/presentation/screens/home/home_page.dart';
import 'package:cafe/presentation/screens/menu/burger_menu.dart';
import 'package:flutter/material.dart';

class CafeRouteNames {
  static const String home = '/home';
  static const String register = '/register';
  static const String confirm = '/confirm';
  static const String menu = '/menu';
  static const String filials = '/filials';
  static const String detailFilial = '/detailFilial';
}

class CafeRoute {

  static final CafeRoute _instance = CafeRoute._init();
  static CafeRoute get instance => _instance;
  CafeRoute._init();

  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case CafeRouteNames.home:
        return MaterialPageRoute(builder: (context) => const HomePage());
      case CafeRouteNames.register:
        return MaterialPageRoute(builder: (context) => const RegisterPage());
      case CafeRouteNames.menu:
        return MaterialPageRoute(builder: (context) => const BurgerMenu());
      case CafeRouteNames.filials:
        return MaterialPageRoute(builder: (context) => const FilialsPage());
      case CafeRouteNames.detailFilial:
        return MaterialPageRoute(builder: (context) => const DetailFilialPage());
      case CafeRouteNames.confirm:
        return MaterialPageRoute(builder: (context) => const ConfirmPage());
      default:
        return MaterialPageRoute(builder: (context) => const HomePage());
    }
  }
}