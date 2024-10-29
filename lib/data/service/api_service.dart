import 'package:cafe/data/routes/cafe_route.dart';
import 'package:cafe/data/routes/navigator_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';

class ApiService {
  final Dio _dio = Dio();

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
