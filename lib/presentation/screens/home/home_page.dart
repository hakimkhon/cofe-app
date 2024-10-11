import 'package:cafe/presentation/screens/home/widgets/header_widget.dart';
import 'package:cafe/presentation/screens/home/widgets/kfc_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Column(
            children: [
              HeaderWidget(),
              // PageView.builder(),
              KfcWidget(),
              Wrap(
                alignment: WrapAlignment.spaceBetween,
                children: [
                  for (int i = 0; i < 11; i++)
                  bolacha(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  bolacha() {
    return Container(
      margin: EdgeInsets.all(10),
      width: 180,
      height: 80,
      color: Colors.green,
    );
  }
}
