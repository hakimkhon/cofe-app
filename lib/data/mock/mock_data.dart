import 'package:cafe/data/model/fast_food_model.dart';
import 'package:cafe/data/model/news_model.dart';
import 'package:cafe/presentation/core/resource/assets.dart';

class MockData {
  static List<NewsModel> news = [
    NewsModel(
      title: "KFC endilikda arzonlashti",
      subTitle:
          "Endi 1 kilogram KFC’ni atigi 30 ming so’mga harid qilishingiz mumkin!",
      image: ImageAssets.kfc_1,
      data: DateTime(06, 10, 2024),
    ),
    NewsModel(
      title: "KFC endilikda arzonlashti yana",
      subTitle:
          "Endi 0.5 kilogram KFC’ni atigi 15 ming so’mga harid qilishingiz mumkin!",
      image: ImageAssets.kfc_2,
      data: DateTime(06, 10, 2024),
    ),
    NewsModel(
      title: "KFC endilikda arzonlashti",
      subTitle:
          "Endi 100 gram KFC’ni atigi 3 ming so’mga harid qilishingiz mumkin!",
      image: ImageAssets.kfc_3,
      data: DateTime(06, 10, 2024),
    ),
  ];

  static List<FastFoodModel> fastFood = [
    FastFoodModel(
      title: "Burger",
      icon: "assets/icons/burgercha.png",
    ),
    FastFoodModel(
      title: "Donar",
      icon: "assets/icons/donar.png",
    ),
    FastFoodModel(
      title: "Garnir",
      icon: "assets/icons/garnir.png",
    ),
    FastFoodModel(
      title: "Kombo",
      icon: "assets/icons/kombo.png",
    ),
    FastFoodModel(
      title: "Lavash",
      icon: "assets/icons/lavash.png",
    ),
    FastFoodModel(
      title: "Sendvich",
      icon: "assets/icons/sendvich.png",
    ),
    FastFoodModel(
      title: "Sous",
      icon: "assets/icons/sous.png",
    ),
    FastFoodModel(
      title: "Salat",
      icon: "assets/icons/salat.png",
    ),
    FastFoodModel(
      title: "Pitsa",
      icon: "assets/icons/pitsa.png",
    ),
    FastFoodModel(
      title: "Qo'shimcha",
      icon: "assets/icons/qo'shimcha.png",
    ),
    FastFoodModel(
      title: "Ichimlik",
      icon: "assets/icons/ichimlik.png",
    ),
  ];
}
