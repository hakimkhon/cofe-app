import 'package:cafe/data/routes/cafe_route.dart';
import 'package:cafe/data/routes/navigator_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';

class ApiService {
  Dio dio = Dio();

  ApiService() {
    
    dio.options.baseUrl = "https://admin.axadjonovsardorbek.uz";
    dio.options.connectTimeout = const Duration(seconds: 10);

    dio.interceptors.add(InterceptorsWrapper(
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
      await dio.post("/auth/sms/register/phone", data: {"phone": phoneNumber});
      NavigationService.instance.navigateMyScreen(
          routeName: CafeRouteNames.confirm, arguments: phoneNumber);
    } catch (e) {
      debugPrint("On catch ERROR: $e");
    }
  }
}
