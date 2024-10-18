import 'package:cafe/data/model/fast_food_model.dart';
import 'package:cafe/data/model/filials_model.dart';
import 'package:cafe/data/model/news_model.dart';
import 'package:cafe/data/model/orders_model.dart';
import 'package:cafe/presentation/core/resource/assets.dart';

class MockData {
  static List<OrdersModel> orders = [
    OrdersModel(
      title: "Chizburger",
      price: 24000,
      image: IconAssets.burger,
      count: 1,
      status: "Yo'lda",
      dateTime: "16.10.2024",
    ),
    OrdersModel(
      title: "Garnir",
      price: 31000,
      image: IconAssets.garnir,
      count: 1,
      status: "Yo'lda",
      dateTime: "16.10.2024",
    ),
    OrdersModel(
      title: "Pitsa",
      price: 31000,
      image: IconAssets.pitsa,
      count: 1,
      status: "Yo'lda",
      dateTime: "16.10.2024",
    ),
    OrdersModel(
      title: "Donar",
      price: 31000,
      image: IconAssets.donar,
      count: 1,
      status: "Yo'lda",
      dateTime: "16.10.2024",
    ),
    OrdersModel(
      title: "Lavash",
      price: 31000,
      image: IconAssets.lavash,
      count: 1,
      status: "Yo'lda",
      dateTime: "16.10.2024",
    ),
  ];

  static List<FilialsModel> filials = [
    FilialsModel(
      map: ImageAssets.map,
      sityName: "Namangan shahar",
      workingTime: "09:00 - 15:00",
    ),
    FilialsModel(
      map: ImageAssets.map,
      sityName: "Namangan shahar",
      workingTime: "09:00 - 15:00",
    ),
    FilialsModel(
      map: ImageAssets.map,
      sityName: "Namangan shahar",
      workingTime: "09:00 - 15:00",
    ),
    FilialsModel(
      map: ImageAssets.map,
      sityName: "Namangan shahar",
      workingTime: "09:00 - 15:00",
    ),
  ];

  static List<NewsModel> news = [
    NewsModel(
      title: "KFC endilikda arzonlashti",
      subTitle:
          "Endi 1 kilogram KFC’ni atigi 30 ming so’mga harid qilishingiz mumkin!",
      image: ImageAssets.kfc_1,
      data: "05.10.2024",
    ),
    NewsModel(
      title: "KFC endilikda arzonladi",
      subTitle:
          "Endi 0.5 kilogram KFC’ni atigi 15 ming so’mga harid qilishingiz mumkin!",
      image: ImageAssets.kfc_2,
      data: "06.10.2024",
    ),
    NewsModel(
      title: "KFC endilikda arzonlashti",
      subTitle:
          "Endi 100 gram KFC’ni atigi 3 ming so’mga harid qilishingiz mumkin!",
      image: ImageAssets.kfc_3,
      data: "07.10.2024",
    ),
  ];

  static List<FastFoodModel> fastFood = [
    FastFoodModel(
      title: "Burger",
      icon: IconAssets.burger,
    ),
    FastFoodModel(
      title: "Donar",
      icon: IconAssets.donar,
    ),
    FastFoodModel(
      title: "Garnir",
      icon: IconAssets.garnir,
    ),
    FastFoodModel(
      title: "Kombo",
      icon: IconAssets.kombo,
    ),
    FastFoodModel(
      title: "Lavash",
      icon: IconAssets.lavash,
    ),
    FastFoodModel(
      title: "Sendvich",
      icon: IconAssets.sendvich,
    ),
    FastFoodModel(
      title: "Sous",
      icon: IconAssets.sous,
    ),
    FastFoodModel(
      title: "Salat",
      icon: IconAssets.salat,
    ),
    FastFoodModel(
      title: "Pitsa",
      icon: IconAssets.pitsa,
    ),
    FastFoodModel(
      title: "Qo'shimcha",
      icon: IconAssets.qoshimcha,
    ),
    FastFoodModel(
      title: "Ichimlik",
      icon: IconAssets.ichimlik,
    ),
  ];
}
