import 'package:flutter/material.dart';
import 'package:flutterweb_priv/utils/colors.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'ادرس خصوصي امتحانات',
      theme: ThemeData(
        primaryColor: AppColors.darkBlue,
        useMaterial3: false,
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

