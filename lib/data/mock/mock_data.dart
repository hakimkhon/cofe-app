import 'package:cafe/data/model/fast_food_model.dart';
import 'package:cafe/data/model/filials_model.dart';
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



  static List<FastFoodModel> fastFood = [
    FastFoodModel(
      title: "Burger",
      icon: IconAssets.burger,
      image: ImageAssets.burger,
      price: "24 000",
    ),
    FastFoodModel(
      title: "Donar",
      icon: IconAssets.donar,
      image: ImageAssets.donar,
      price: "19 000",
    ),
    FastFoodModel(
      title: "Garnir",
      icon: IconAssets.garnir,
      image: ImageAssets.garnir,
      price: "24 000",
    ),
    FastFoodModel(
      title: "Kombo",
      icon: IconAssets.kombo,
      image: ImageAssets.kombo,
      price: "18 000",
    ),
    FastFoodModel(
      title: "Lavash",
      icon: IconAssets.lavash,
      image: ImageAssets.lavash,
      price: "24 000",
    ),
    FastFoodModel(
      title: "Sendvich",
      icon: IconAssets.sendvich,
      image: ImageAssets.sendvich,
      price: "27 000",
    ),
    FastFoodModel(
      title: "Sous",
      icon: IconAssets.sous,
      image: ImageAssets.sous,
      price: "25 000",
    ),
    FastFoodModel(
      title: "Salat",
      icon: IconAssets.salat,
      image: ImageAssets.salatlar,
      price: "24 000",
    ),
    FastFoodModel(
      title: "Pitsa",
      icon: IconAssets.pitsa,
      image: ImageAssets.pitsa,
      price: "21 000",
    ),
    FastFoodModel(
      title: "Qo'shimcha",
      icon: IconAssets.qoshimcha,
      image: ImageAssets.qoshimcha,
      price: "23 000",
    ),
    FastFoodModel(
      title: "Ichimlik",
      icon: IconAssets.ichimlik,
      image: ImageAssets.ichimlik,
      price: "24 000",
    ),
  ];
}
