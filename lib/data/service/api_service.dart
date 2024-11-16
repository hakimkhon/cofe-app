import 'package:cafe/data/model/category_model.dart';
import 'package:cafe/data/model/filials_model.dart';
import 'package:cafe/data/model/news_model.dart';
import 'package:cafe/data/model/products_model.dart';
import 'package:cafe/data/routes/cafe_route.dart';
import 'package:cafe/data/routes/navigator_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';

class CafeApiService {
  final Dio _dio = Dio();
  static final CafeApiService _instance = CafeApiService._init();
  static CafeApiService get instance => _instance;
  CafeApiService._init();

  //   static final ApiService _instance = ApiService._init();
  // static ApiService get instance => _instance;
  // ApiService._init();

  CafeApiService() {
    _dio.options.baseUrl = "https://apis.axadjonovsardorbek.uz";
    _dio.options.connectTimeout = const Duration(seconds: 10);

    _dio.interceptors.add(InterceptorsWrapper(
      onError: (error, handler) {
        debugPrint("API'da error chiqdi!");
        if (error.response != null) {
          debugPrint("ERROR: Status code ${error.response?.statusCode}");
          debugPrint("ERROR: Response data ${error.response?.data}");
        } else {
          debugPrint("ERROR: Message${error.message}");
        }
        return handler.next(error);
      },
      onRequest: (options, handler) {
        debugPrint("API'ga request yuborildi");
        return handler.next(options);
      },
      onResponse: (response, handler) {
        debugPrint("API'dan res keldi!");
        return handler.next(response);
      },
    ));
  }

  Future<NewsModel?> getNews() async {
    try {
      Response res =
          await _dio.get("https://apis.axadjonovsardorbek.uz/news/list");
      NewsModel news = NewsModel.fromJson(res.data);
      debugPrint(res.data.toString());
      return news;
    } catch (e) {
      debugPrint("getNews Error: $e");
    }
    return null;
  }

  Future<FilialsModelNew?> getFilial() async {
    try {
      Response res = await _dio.get("https://apis.axadjonovsardorbek.uz/branches/list");
      FilialsModelNew branch = FilialsModelNew.fromJson(res.data);
      return branch;
    } catch (e) {
      debugPrint("getFilial Error: $e");
    }
    return null;
  }

  Future<Branch?> getFilialDetail({required String id}) async {
    try {
      Response res = await _dio.get("https://apis.axadjonovsardorbek.uz/branches/get?id=$id");
      Branch branch = Branch.fromJson(res.data);
      return branch;
    } catch (e) {
      debugPrint("getFilialDetail Error: $e");
    }
    return null;
  }
  
  Future<ProductsModel?> getProductList({required String id}) async {
    try {
      Response res = await _dio.get("https://apis.axadjonovsardorbek.uz/products/list?category_id=$id");
      ProductsModel products = ProductsModel.fromJson(res.data);
      return products;
    } catch (e) {
      debugPrint("getProductList Error: $e");
    }
    return null;
  }

  Future<CategoryModel?> getCategory() async {
    try {
      Response res = await _dio.get("https://apis.axadjonovsardorbek.uz/categories/list");
      CategoryModel branch = CategoryModel.fromJson(res.data);
      return branch;
    } catch (e) {
      debugPrint("getCategory Error: $e");
    }
    return null;
  }
}

//quyidagi class tizimga kirish uchun sms kodni tasdiqlash uchun
class ApiService {
  final Dio _dio = Dio();
  static final ApiService _instance = ApiService._init();
  static ApiService get instance => _instance;
  ApiService._init();

  ApiService() {
    _dio.options.baseUrl = "https://admin.axadjonovsardorbek.uz";
    _dio.options.connectTimeout = const Duration(seconds: 10);

    _dio.interceptors.add(InterceptorsWrapper(
      onError: (error, handler) {
        debugPrint("API'da error chiqdi!");
        if (error.response != null) {
          debugPrint("ERROR: Status code ${error.response?.statusCode}");
          debugPrint("ERROR: Response data ${error.response?.data}");
        } else {
          debugPrint("ERROR: Message${error.message}");
        }
        return handler.next(error);
      },
      onRequest: (options, handler) {
        debugPrint("API'ga request yuborildi");
        return handler.next(options);
      },
      onResponse: (response, handler) {
        debugPrint("API'dan res keldi!");
        return handler.next(response);
      },
    ));
  }

  Future<void> sendSMSCode({required String phoneNumber}) async {
    try {
      await _dio.post("/auth/sms/register/phone", data: {"phone": phoneNumber});
      NavigationService.instance.navigateMyScreen(
          routeName: CafeRouteNames.confirm, arguments: phoneNumber);
    } catch (e) {
      debugPrint("On catch ERROR: $e");
    }
  }

  Future<void> checkSMSCode({
    required String phoneNumber,
    required String smsCod,
  }) async {
    //POST
    try {
      await _dio.post("/auth/user/register", data: {
        "phone": phoneNumber,
        "confirmation_code": smsCod,
      });
      NavigationService.instance.navigateMyScreen(
        routeName: CafeRouteNames.home,
        arguments: phoneNumber,
      );
    } catch (e) {
      debugPrint("On catch ERROR: $e");
    }
  }
}
