import 'dart:developer';

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutterweb_priv/controller/exam_controller.dart';
import 'package:flutterweb_priv/utils/colors.dart';
import 'package:flutterweb_priv/utils/customize_dropdown.dart';
import 'package:get/get.dart';

class CreateExamView extends StatefulWidget {
  const CreateExamView({super.key});

  @override
  State<CreateExamView> createState() => _CreateExamViewState();
}

class _CreateExamViewState extends State<CreateExamView> {
  final TextEditingController levelEditingController = TextEditingController();
  final TextEditingController itemsEditingController = TextEditingController();
  final TextEditingController unitEditingController = TextEditingController();
  final TextEditingController subjectEditingController =TextEditingController();

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
        backgroundColor: AppColors.darkBlue,
        body: GetBuilder<ExamController>(
          init: ExamController(),
          builder: (controller) {
            return SingleChildScrollView(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('انشاء امتحان'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CustomizeDropdownWidget(
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
                            controller.update();
                          },
                          hintText: "اختر المادة",
                          searchController: itemsEditingController,
                          value: controller.selectedLevelValue,
                        ),
                        CustomizeDropdownWidget(
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
                            Get.snackbar(
                                "${controller.selectedLevelValue}", "");
                            controller.update();
                          },
                          hintText: "اختر الصف",
                          searchController: levelEditingController,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CustomizeDropdownWidget(
                          hint: Text(
                            "اختر الدرس",
                            style: TextStyle(
                              fontSize: 14,
                              color: Theme.of(context).hintColor,
                            ),
                          ),
                          items: controller.subject,
                          onChange: (value) {
                            controller.selectedSubjectValue = value;
                            controller.update();
                          },
                          hintText: "اختر الدرس",
                          searchController: subjectEditingController,
                          value: controller.selectedSubjectValue,
                        ),
                        CustomizeDropdownWidget(
                          hint: Text(
                            "اختر الوحدة",
                            style: TextStyle(
                              fontSize: 14,
                              color: Theme.of(context).hintColor,
                            ),
                          ),
                          items: controller.unit,
                          onChange: (value) {
                            controller.selectedUnitValue = value;
                            controller.update();
                          },
                          hintText: "اختر الوحدة",
                          searchController: unitEditingController,
                          value: controller.selectedUnitValue,
                        ),
                      ],
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: controller.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.topRight,
                                child: SizedBox(
                                  height: Get.height * (4 / 100),
                                  width: Get.width * 0.8,
                                  child: TextFormField(
                                    controller: controller.question1![index],
                                    decoration: InputDecoration(

                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.grey.shade400),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      hintText: 'اكتب السؤال',
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
                                              BorderRadius.circular(10)),
                                    ),
                                  ),
                                ),
                              ),
                              Column(
                                children: List.generate(
                                  4,
                                  (index) {
                                    return Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8, vertical: 8),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          SizedBox(
                                            height: Get.height * (4 / 100),
                                            width: Get.width * 0.2,
                                            child: TextFormField(
                                              controller:
                                                  controller.answer1[index],
                                              decoration: InputDecoration(
                                                hintTextDirection:
                                                    TextDirection.rtl,
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color: Colors
                                                                .grey.shade400),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10)),
                                                hintText: 'الاجابة',
                                                hintStyle: const TextStyle(
                                                  color: Colors.black26,
                                                ),
                                                contentPadding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 10,
                                                        vertical: 13),
                                                border: OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color: Colors
                                                            .grey.shade400),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              fixedSize:
                                  Size(Get.width * 0.6, Get.height * 0.07),
                              backgroundColor: AppColors.darkBlue),
                          child: const Text("اضافة سؤال"),
                          onPressed: () {
                            controller.addindex();
                          },
                        )
                      ],
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          fixedSize: Size(Get.width * 0.7, Get.height * 0.07),
                          backgroundColor: AppColors.darkBlue),
                      child: const Text("حفظ"),
                      onPressed: () {
                        controller.createExam();
                      },
                    )
                  ],
                ),
              ),
            );
          },
        ));
  }
}
