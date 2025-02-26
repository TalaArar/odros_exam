import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutterweb_priv/controller/exam_controller.dart';
import 'package:flutterweb_priv/repository/exam_repository.dart';
import 'package:flutterweb_priv/utils/colors.dart';
import 'package:get/get.dart';

class ViewAllExamsScreen extends StatefulWidget {
  ViewAllExamsScreen({super.key});

  @override
  State<ViewAllExamsScreen> createState() => _ViewAllExamsScreenState();
}

class _ViewAllExamsScreenState extends State<ViewAllExamsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<ExamController>(
        init: ExamController(),
        builder: (controller) {
          return SingleChildScrollView(
            child: Column(
              children: [
                Center(
                  child: Text("جميع الاسئلة المدخلة"),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: controller.addexam.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15.0, vertical: 15),
                      child: SizedBox(
                        width: Get.width,
                        height: Get.height * 0.2,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(controller.addexam[index].examQuestionText
                                    .toString()),
                              ],
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text(controller.addexam[index].answerOne ??
                                        "")
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(controller.addexam[index].answerTwo ??
                                        "")
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                        controller.addexam[index].answerThree ??
                                            "")
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(controller.addexam[index].answerFour ??
                                        "")
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      fixedSize: Size(Get.width * 0.4, Get.height * 0.05),
                      backgroundColor: AppColors.blue),
                  onPressed: () async {

                    await ExamRepository().createExam(controller.addexam).then(
                      (value) {
                        if (value.status == true) {
                          Get.snackbar("تم اضافته بنجاح",
                            "");
                        } else {
                          Get.snackbar("فشل  ",
                              value.status.toString());
                        }
                      },
                    );
                  },
                  child: Text("حفظ"),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
