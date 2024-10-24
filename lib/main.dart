import 'package:cafe/data/routes/cofe_route.dart';
import 'package:cafe/presentation/core/constant/colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
        useMaterial3: true,
      ),
      onGenerateRoute: CofeRoute.generateRoute,
      initialRoute: CofeRouteNames.register,
    );
  }
}