import 'package:cafe/data/routes/cafe_route.dart';
import 'package:cafe/data/routes/navigator_service.dart';
import 'package:cafe/presentation/core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(412, 837),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme:
                ColorScheme.fromSeed(seedColor: AppColors.secondaryColor),
            useMaterial3: true,
          ),
          // builder: (context, child) {
          //   return MediaQuery(data: MediaQuery.of(context), child: child)
          // },
          navigatorKey: NavigationService.instance.navigatorKey,
          onGenerateRoute: CafeRoute.generateRoute,
          initialRoute: CafeRouteNames.register,
        );
      },
    );
  }
}
