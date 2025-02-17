import 'package:flutter/material.dart';
import 'package:flutterweb_priv/binding/exam_binding.dart';
import 'package:flutterweb_priv/helper/route/routes.dart';
import 'package:flutterweb_priv/utils/colors.dart';
import 'package:flutterweb_priv/view/create_exam_view.dart';
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
      debugShowCheckedModeBanner: false,
      // getPages: pages,
      initialBinding: ExamBinding(),
      home: const CreateExamView(),
    );
  }
}

