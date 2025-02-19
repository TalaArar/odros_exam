import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutterweb_priv/utils/colors.dart';
import 'package:flutterweb_priv/view/create_exam_view.dart';
import 'package:get/get.dart';
class MyHttpOverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(SecurityContext? context){
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
  }
}
void main() {
    HttpOverrides.global = MyHttpOverrides();
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
      debugShowCheckedModeBanner: false,
  
      home: const CreateExamView(),
    );
  }
}

