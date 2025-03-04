import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutterweb_priv/controller/exam_controller.dart';
import 'package:flutterweb_priv/repository/exam_repository.dart';
import 'package:flutterweb_priv/utils/colors.dart';
import 'package:flutterweb_priv/view/create_exam_view.dart';
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
                  child: Text("جميع الاسئلة المدخلة",style: TextStyle(fontSize: Get.width*0.03),),
                ),
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: controller.answerexam.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15.0, vertical: 15),
                        child: Column(
                          children: [
                            SizedBox(
                              width: Get.width,
                              height: Get.height * 0.2,
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(controller
                                          .answerexam[index].examQuestionText
                                          .toString(),style: TextStyle(
                                        fontSize: Get.width*0.025,
                                        fontWeight: FontWeight.w300
                                      ),),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(controller
                                                  .answerexam[index].answerOne ??
                                              "",style: TextStyle(
                                              fontSize: Get.width*0.02
                                          ),)
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(controller
                                                  .answerexam[index].answerTwo ??
                                              "",style: TextStyle(
                                              fontSize: Get.width*0.02
                                          ),)
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(controller
                                                  .answerexam[index].answerThree ??
                                              "",style: TextStyle(
                                              fontSize: Get.width*0.02
                                          ),)
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(controller
                                                  .answerexam[index].answerFour ??
                                              "",style: TextStyle(
                                              fontSize: Get.width*0.02
                                          ),)
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Divider()
                          ],
                        ),
                      );
                    },
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      fixedSize: Size(Get.width * 0.4, Get.height * 0.05),
                      backgroundColor: AppColors.blue),
                  onPressed: () async {
                    print(controller.answerexam.toList().toString());
                    await ExamRepository()
                        .createExam(
                            controller.selectedLevelid,
                            controller.selectedItemsid,
                            controller.selectedSubjectid,
                            controller.selectedUnitid,
                            controller.selectedLevelValue,
                            controller.selectedItemsValue,
                            controller.selectedUnitValue,
                            controller.selectedSubjectValue,
                            controller.answerexam)
                        .then(
                      (value) {
                        if (value.status == true) {
                          Get.snackbar(value.resultMessage.toString(), "");
                          // Get.to(const CreateExamView());
                        } else {
                          Get.snackbar("فشل", value.status.toString());
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
