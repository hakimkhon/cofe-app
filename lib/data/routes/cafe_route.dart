import 'package:cafe/presentation/screens/about/about_page.dart';
import 'package:cafe/presentation/screens/auth/confirm_page.dart';
import 'package:cafe/presentation/screens/auth/register_page.dart';
import 'package:cafe/presentation/screens/bookings/booking_page.dart';
import 'package:cafe/presentation/screens/bookings/order_delivery_page.dart';
import 'package:cafe/presentation/screens/filials/detail_filial_page.dart';
import 'package:cafe/presentation/screens/filials/filials_page.dart';
import 'package:cafe/presentation/screens/home/home_page.dart';
import 'package:cafe/presentation/screens/menu/burger_menu.dart';
import 'package:cafe/presentation/screens/news/news_page.dart';
import 'package:cafe/presentation/screens/user/profile_page.dart';
import 'package:flutter/material.dart';

class CafeRouteNames {
  static const String home = '/home';
  static const String register = '/register';
  static const String confirm = '/confirm';
  static const String menu = '/menu';
  static const String about = '/about';
  static const String news = '/news';
  static const String filials = '/filials';
  static const String booking = '/booking';
  static const String orderDelivery = '/orderDelivery';
  static const String profile = '/profile';
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
      case CafeRouteNames.booking:
        return MaterialPageRoute(builder: (context) => const BookingPage());
      case CafeRouteNames.orderDelivery:
        return MaterialPageRoute(builder: (context) => const OrderDeliveryPage());
      case CafeRouteNames.news:
        return MaterialPageRoute(builder: (context) => const NewsPage());
      case CafeRouteNames.about:
        return MaterialPageRoute(builder: (context) => const AboutPage());
      case CafeRouteNames.filials:
        return MaterialPageRoute(builder: (context) => const FilialsPage());
      case CafeRouteNames.detailFilial:
        return MaterialPageRoute(builder: (context) => const DetailFilialPage());
      case CafeRouteNames.confirm:
        return MaterialPageRoute(builder: (context) => const ConfirmPage());
      case CafeRouteNames.profile:
        return MaterialPageRoute(builder: (context) => const ProfilePage());
      default:
        return MaterialPageRoute(builder: (context) => const HomePage());
    }
  }
}