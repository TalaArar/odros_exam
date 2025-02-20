import 'package:flutter/material.dart';
import 'package:flutterweb_priv/controller/exam_controller.dart';
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
        return  SingleChildScrollView(
            child: Column(
              children: [
                Center(child: Text("جميع الاسئلة المدخلة"),),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: controller.examlist.length,
                  itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 15),
                    child: Container(
                      width: Get.width,
                      height: Get.height*0.2,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(controller.examlist[index].question.toString()),
                            ],
                          ),
                          Column(
                            children: [
                              Row(children: [
                                Text(controller.examlist[index].answers?.answerone??"")
                              ],),
                              Row(children: [
                                Text(controller.examlist[index].answers?.answertwo??"")
                              ],),
                              Row(children: [
                                Text(controller.examlist[index].answers?.answerthree??"")
                              ],),
                              Row(children: [
                                Text(controller.examlist[index].answers?.answerfour??"")
                              ],)
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },),
          ElevatedButton(
          style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
          borderRadius:
          BorderRadius.circular(12),
          ),
          fixedSize: Size(Get.width * 0.4,
          Get.height * 0.05),
          backgroundColor: AppColors.blue),onPressed: () {

          },
          child: Text("حفظ"),)
              ],
            ),
          );
        },

      ),
    );
  }
}
