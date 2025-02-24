import 'dart:developer';

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutterweb_priv/controller/exam_controller.dart';
import 'package:flutterweb_priv/model/add_question_model.dart';
import 'package:flutterweb_priv/utils/colors.dart';
import 'package:flutterweb_priv/utils/customize_dropdown.dart';
import 'package:flutterweb_priv/view/view_all_exams_screen.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class CreateExamView extends StatefulWidget {
  const CreateExamView({super.key});

  @override
  State<CreateExamView> createState() => _CreateExamViewState();
}

class _CreateExamViewState extends State<CreateExamView> {
  TextEditingController levelEditingController = TextEditingController();
  TextEditingController itemsEditingController = TextEditingController();
  TextEditingController unitEditingController = TextEditingController();
  TextEditingController subjectEditingController = TextEditingController();
  TextEditingController questionController = TextEditingController();
  TextEditingController answer1Controller = TextEditingController();
  TextEditingController answer2Controller = TextEditingController();
  TextEditingController answer3Controller = TextEditingController();
  TextEditingController answer4Controller = TextEditingController();
  TextEditingController answerIsCorrectController = TextEditingController();
  TextEditingController subjectNameController = TextEditingController();

  @override
  void dispose() {
    levelEditingController.dispose();
    itemsEditingController.dispose();
    unitEditingController.dispose();
    subjectEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.white,
        body: GetBuilder<ExamController>(
          init: ExamController(),
          builder: (controller) {
            return SingleChildScrollView(
                child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 15),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'انشاء امتحان',
                            style: TextStyle(
                                fontSize: Get.width * 0.05,
                                fontWeight: FontWeight.w700,
                                color: AppColors.darkBlue),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              controller.itemList.isEmpty
                                  ? SizedBox()
                                  : CustomizeDropdownWidget(
                                      hint: Text(
                                        "اختر المادة",
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Theme.of(context).hintColor,
                                        ),
                                      ),
                                      items: controller.itemList,
                                      onChange: (value) {
                                        controller.selectedItemsValue = value;
                                        for (var level in controller.item) {
                                          if (controller.selectedItemsValue ==
                                              level.itemName) {
                                            controller.selectedItemsid =
                                                level.itemNo;
                                          }
                                        }
                                        controller.update();
                                      },
                                      hintText: "اختر المادة",
                                      searchController: itemsEditingController,
                                      value: controller.selectedItemsValue ??
                                          controller.item.first.itemName,
                                    ),
                              controller.level.isEmpty
                                  ? SizedBox()
                                  : CustomizeDropdownWidget(
                                      hint: Text(
                                        'اختر الصف',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Theme.of(context).hintColor,
                                        ),
                                      ),
                                      items: controller.levelList,
                                      onChange: (value) {
                                        controller.selectedLevelValue = value;
                                        for (var level in controller.level) {
                                          if (controller.selectedLevelValue ==
                                              level.levelName) {
                                            controller.selectedLevelid =
                                                level.levelSer;
                                          }
                                        }
                                        controller.update();
                                      },
                                      hintText: "اختر الصف",
                                      searchController: levelEditingController,
                                      value: controller.selectedLevelValue ??
                                          controller.level.first.levelName,
                                    ),
                            ],
                          ),
                          Gap(20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              controller.subjectList.isEmpty
                                  ? SizedBox()
                                  : CustomizeDropdownWidget(
                                      hint: Text(
                                        "اختر الدرس",
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Theme.of(context).hintColor,
                                        ),
                                      ),
                                      items: controller.subjectList,
                                      onChange: (value) {
                                        controller.selectedSubjectValue = value;

                                        for (var sub in controller.subjectPayload) {
                                          if (controller.selectedSubjectValue ==
                                              sub.subjectName) {
                                            controller.selectedSubjectid =
                                                sub.subjectNo;
                                          }
                                        }
                                        controller.update();
                                      },
                                      hintText: "اختر الدرس",
                                      searchController:
                                          subjectEditingController,
                                      value: controller.selectedSubjectValue ??
                                          controller.subjectList.first
                                              .toString(),
                                    ),
                              controller.unitsList.isEmpty
                                  ? SizedBox()
                                  : CustomizeDropdownWidget(
                                      hint: Text(
                                        "اختر الوحدة",
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Theme.of(context).hintColor,
                                        ),
                                      ),
                                      items: controller.unitsList,
                                      onChange: (value) {
                                        controller.selectedUnitValue = value;

                                        for (var uni in controller.unitPayload) {
                                          if (controller.selectedUnitValue ==
                                              uni.unitsName) {
                                            controller.selectedUnitid =
                                                uni.unitsNo;
                                          }
                                        }
                                        controller.update();
                                      },
                                      hintText: "اختر الوحدة",
                                      searchController: unitEditingController,
                                      value: controller.selectedUnitValue ??
                                          controller.unitsList.first
                                              .toString()),
                            ],
                          ),
                          const Gap(20),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 25),
                            child: Align(
                              alignment: Alignment.topRight,
                              child: SizedBox(
                                height: Get.height * (4 / 100),
                                width: Get.width * 0.5,
                                child: TextFormField(
                                  controller: subjectNameController,
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.grey.shade600),
                                        borderRadius: BorderRadius.circular(5)),
                                    hintText: 'ادخل اسم الدرس',
                                    hintStyle: const TextStyle(
                                      color: Colors.black26,
                                    ),
                                    hintTextDirection: TextDirection.rtl,
                                    contentPadding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 13),
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.grey.shade400),
                                        borderRadius: BorderRadius.circular(5)),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Gap(10),
                          Align(
                              alignment: Alignment.topRight,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 25.0),
                                child: Text("سؤال"),
                              )),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 25.0),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.topRight,
                                  child: SizedBox(
                                    height: Get.height * (4 / 100),
                                    width: Get.width * 0.8,
                                    child: TextFormField(
                                      controller: questionController,
                                      decoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.grey.shade400),
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        hintText: 'اكتب السؤال',
                                        hintTextDirection: TextDirection.rtl,
                                        hintStyle: const TextStyle(
                                          color: Colors.black26,
                                        ),
                                        contentPadding:
                                            const EdgeInsets.symmetric(
                                                horizontal: 10, vertical: 13),
                                        border: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.grey.shade400),
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                      ),
                                    ),
                                  ),
                                ),

                                Align(
                                    alignment: Alignment.topRight,
                                    child: Text("مستوى السؤال")),

                              Directionality(
                                textDirection: TextDirection.rtl,
                                child: Container(

                                  width: Get.width,
                                  height: Get.height*0.07,
                                  child:  ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    shrinkWrap: true,
                                    itemCount: controller.questiontypelist.length,
                                    itemBuilder: (context, index) {
                                      return InkWell(
                                        splashColor: Colors.transparent,
                                        highlightColor:Colors.transparent,
                                        focusColor:Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        onTap: () {
                                          controller.indexQuestion=index;
                                          controller.update();
                                          controller.selectedQuestionType=controller.questiontypelist[index];
                                          for(var question in controller.questiontypePayload){
                                            if(question.questionTypeName==controller.selectedQuestionType){
                                              controller.Selectedid=question.questionTypeNo;
                                            }
                                          }
                                          controller.update();
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.all(15),
                                          child: Container(
                                            width: Get.width*0.2,
                                            height: Get.height*0.1,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: controller.indexQuestion==index?Colors.green:Colors.black26,
                                                )
                                            ),
                                            child: Center(child: Text(controller.questiontypelist[index].toString(),style: TextStyle(
                                              color: Colors.black87,

                                            ),)),
                                          ),
                                        ),
                                      );
                                    },),
                                ),
                              ),

                                const Gap(10),
                                Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Align(
                                        alignment: Alignment.topRight,
                                        child: SizedBox(
                                          height: Get.height * (4 / 100),
                                          width: Get.width * 0.2,
                                          child: TextFormField(
                                            controller: answer1Controller,
                                            decoration: InputDecoration(
                                              enabledBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color:
                                                          Colors.grey.shade400),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              hintText: "الاجابة الاولى",
                                              hintStyle: const TextStyle(
                                                color: Colors.black26,
                                              ),
                                              hintTextDirection:
                                                  TextDirection.rtl,
                                              contentPadding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 10,
                                                      vertical: 13),
                                              border: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color:
                                                          Colors.grey.shade400),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                            ),
                                          ),
                                        ),
                                      ),
                                      const Gap(10),
                                      Align(
                                        alignment: Alignment.topRight,
                                        child: SizedBox(
                                          height: Get.height * (4 / 100),
                                          width: Get.width * 0.2,
                                          child: TextFormField(
                                            controller: answer2Controller,
                                            decoration: InputDecoration(
                                              enabledBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color:
                                                          Colors.grey.shade400),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              hintText: "الاجابة الثانية",
                                              hintStyle: const TextStyle(
                                                color: Colors.black26,
                                              ),
                                              hintTextDirection:
                                                  TextDirection.rtl,
                                              contentPadding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 10,
                                                      vertical: 13),
                                              border: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color:
                                                          Colors.grey.shade400),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                            ),
                                          ),
                                        ),
                                      ),
                                      const Gap(10),
                                      Align(
                                        alignment: Alignment.topRight,
                                        child: SizedBox(
                                          height: Get.height * (4 / 100),
                                          width: Get.width * 0.2,
                                          child: TextFormField(
                                            controller: answer3Controller,
                                            decoration: InputDecoration(
                                              enabledBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color:
                                                          Colors.grey.shade400),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              hintText: "الاجابة الثالثة",
                                              hintStyle: const TextStyle(
                                                color: Colors.black26,
                                              ),
                                              hintTextDirection:
                                                  TextDirection.rtl,
                                              contentPadding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 10,
                                                      vertical: 13),
                                              border: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color:
                                                          Colors.grey.shade400),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                            ),
                                          ),
                                        ),
                                      ),
                                      const Gap(10),
                                      Align(
                                        alignment: Alignment.topRight,
                                        child: SizedBox(
                                          height: Get.height * (4 / 100),
                                          width: Get.width * 0.2,
                                          child: TextFormField(
                                            controller: answer4Controller,
                                            decoration: InputDecoration(
                                              enabledBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color:
                                                          Colors.grey.shade400),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              hintText: "الاجابة الرابعة",
                                              hintStyle: const TextStyle(
                                                color: Colors.black26,
                                              ),
                                              hintTextDirection:
                                                  TextDirection.rtl,
                                              contentPadding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 10,
                                                      vertical: 13),
                                              border: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color:
                                                          Colors.grey.shade400),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                            ),
                                          ),
                                        ),
                                      ),
                                      const Gap(10),
                                      Align(
                                        alignment: Alignment.topRight,
                                        child: SizedBox(
                                          height: Get.height * (4 / 100),
                                          width: Get.width * 0.2,
                                          child: TextFormField(
                                            controller:
                                                answerIsCorrectController,
                                            decoration: InputDecoration(
                                              enabledBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color:
                                                          Colors.grey.shade400),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              hintText: 'الاجابة الصحيحة',
                                              hintStyle: const TextStyle(
                                                color: Colors.black26,
                                              ),
                                              hintTextDirection:
                                                  TextDirection.rtl,
                                              contentPadding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 10,
                                                      vertical: 13),
                                              border: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color:
                                                          Colors.grey.shade400),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ]),
                                const Gap(20),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                          ),
                                          fixedSize: Size(Get.width * 0.3,
                                              Get.height * 0.05),
                                          backgroundColor: AppColors.darkBlue),
                                      child: const Text("عرض الاسئلة"),
                                      onPressed: () {
                                        Get.to(ViewAllExamsScreen());
                                      },
                                    ),
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                          ),
                                          fixedSize: Size(Get.width * 0.3,
                                              Get.height * 0.05),
                                          backgroundColor: AppColors.blue),
                                      child: const Text("اضافة"),
                                      onPressed: () {
                                        controller.examlist.add(exam(
                                            questionController.text,
                                            answer(
                                                answer1Controller.text,
                                                answer2Controller.text,
                                                answer3Controller.text,
                                                answer4Controller.text,
                                                answerIsCorrectController
                                                    .text)));
                                        controller.update();
                                        Get.snackbar("تم اضافته بنجاح", "");
                                        Get.snackbar(
                                            controller.examlist.length
                                                .toString(),
                                            "");
                                        answer1Controller.clear();
                                        answer2Controller.clear();
                                        answer3Controller.clear();
                                        answer4Controller.clear();
                                        answerIsCorrectController.clear();
                                        questionController.clear();
                                        subjectNameController.clear();
                                        controller.update();
                                      },
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ])));
          },
        ));
  }
}
