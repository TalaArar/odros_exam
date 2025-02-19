
import 'dart:developer';

import 'package:custom_searchable_dropdown/custom_searchable_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutterweb_priv/controller/exam_controller.dart';
import 'package:flutterweb_priv/utils/colors.dart';
import 'package:get/get.dart';

class CreateExamView extends GetView<ExamController> {
  const CreateExamView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.darkBlue,

      body: GetBuilder<ExamController>(
        init: ExamController(),
        builder: (controller) {
        return      
        Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
        child: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) =>  Column(
          
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          
            children: [
          
              const Text('انشاء امتحان'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
          
                children: [
              Container(
              height: Get.height*(5.2/100),
          width: Get.width*0.4,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              border: Border.all(color: Colors.grey,width: 2)
          
          ),
          
          child:CustomSearchableDropDown(
            
                                  items: controller.levelList,
                                  label: 'اختر الصف',
                                  labelStyle:const TextStyle(color: Colors.black),
                                  
                                  labelAlign:TextAlign.center,
                                  suffixIcon: const Padding(
                                    padding: EdgeInsets.all(2.0),
                                    child: Icon(
                                      Icons.keyboard_arrow_down,
                                      color: Colors.black,
                                    ),
                                  ),
                                  dropDownMenuItems: controller.levelList,
                                  onChanged: (value) {
                                    controller.chooseClass=value;
          
                                    
                                    
                                  },
                                )
          
              ),
          
                 Container(
              height: Get.height*(5.2/100),
          width: Get.width*0.4,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              border: Border.all(color: Colors.grey,width: 2)
          
          ),
          
          child:CustomSearchableDropDown(
            labelStyle:const TextStyle(color: Colors.black),
                                  items: controller.itemList,
                                  label: 'اختر المادة',
                                  
                                  labelAlign:TextAlign.center,
                                  suffixIcon: const Padding(
                                    padding: EdgeInsets.all(2.0),
                                    child: Icon(
                                      Icons.keyboard_arrow_down,
                                      color: Colors.black,
                                    ),
                                  ),
                                  dropDownMenuItems: controller.itemList,
                                  onChanged: (value) {
                                    controller.chooseItem=value;
                                  },
                                )
          
              ),
          
          
          
                ],
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                   Container(
              height: Get.height*(5.2/100),
          width: Get.width*0.4,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              border: Border.all(color: Colors.grey,width: 2)
          
          ),
          
          child:CustomSearchableDropDown(
            labelStyle:const TextStyle(color: Colors.black),
                                  items: controller.subject,
                                  label: 'اختر الدرس',
                                  
                                  labelAlign:TextAlign.center,
                                  suffixIcon: const Padding(
                                    padding: EdgeInsets.all(2.0),
                                    child: Icon(
                                      Icons.keyboard_arrow_down,
                                      color: Colors.black,
                                    ),
                                  ),
                                  dropDownMenuItems: controller.subject,
                                  onChanged: (value) {
                                    controller.chooseSubject=value;
                                  },
                                )
          
              ),
                   Container(
              height: Get.height*(5.2/100),
          width: Get.width*0.4,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              border: Border.all(color: Colors.grey,width: 2)
          
          ),
          
          child:CustomSearchableDropDown(
            labelStyle:const TextStyle(color: Colors.black),
                                  items: controller.unit,
                                  label: 'اختر الوحدة',
                                  
                                  labelAlign:TextAlign.center,
                                  suffixIcon: const Padding(
                                    padding: EdgeInsets.all(2.0),
                                    child: Icon(
                                      Icons.keyboard_arrow_down,
                                      color: Colors.black,
                                    ),
                                  ),
                                  dropDownMenuItems: controller.unit,
                                  onChanged: (value) {
                                    controller.chooseUnit=value;
                                  },
                                )
          
              ),
          
          
          
                ],
              ),
          
              Align(
                alignment: Alignment.topRight,
                child: SizedBox(
                  height: Get.height*(4/100),
                  width: Get.width*0.8,
                  child: TextFormField(
                
                controller: controller.question1![0],
                    decoration: InputDecoration(
                      
                      hintTextDirection:TextDirection.rtl,
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade400),
                          borderRadius: BorderRadius.circular(10)),
                      hintText: 'اكتب السؤال',
                      hintStyle: const TextStyle(color: Colors.black26,),
                      contentPadding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 13),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade400),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ),
              ),
          
             Column(
              
              children: List.generate(4, (index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                      height: Get.height*(4/100),
                      width: Get.width*0.2,
                      child: TextFormField(
                          
                          controller: controller.answer1[index],
                        decoration: InputDecoration(
                           hintTextDirection:TextDirection.rtl,
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey.shade400),
                              borderRadius: BorderRadius.circular(10)),
                          hintText: 'الاجابة',
                          hintStyle: const TextStyle(color: Colors.black26,),
                          contentPadding:
                          const EdgeInsets.symmetric(horizontal: 10, vertical: 13),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey.shade400),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                    ),
                    Obx(
                   ()=> Checkbox(value: controller.selectedIndex.value==index, onChanged: (value) {
                            if(value!){
                              controller.selectedIndex.value=index;
                              controller.correct![0]=controller.answer1[index].text;
                              
                            }
                  
                     },),
                   )
                    ],
                  ),
                );
              },),
             ),
              Align(
                alignment: Alignment.bottomRight,
          
                child: SizedBox(
                  height: Get.height*(4/100),
                  width: Get.width*0.8,
                  child: TextFormField(
                
                controller: controller.question1![1],
                    decoration: InputDecoration(
                       hintTextDirection:TextDirection.rtl,
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade400),
                          borderRadius: BorderRadius.circular(10)),
                      hintText: 'اكتب السؤال',
                      hintStyle: const TextStyle(color: Colors.black26,),
                      contentPadding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 13),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade400),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ),
              ),
              Column(
              children: List.generate(4, (index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                      height: Get.height*(4/100),
                      width: Get.width*0.2,
                      child: TextFormField(
                          
                          controller: controller.answer2[index],
                        decoration: InputDecoration(
                           hintTextDirection:TextDirection.rtl,
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey.shade400),
                              borderRadius: BorderRadius.circular(10)),
                          hintText: 'الاجابة',
                          hintStyle: const TextStyle(color: Colors.black26,),
                          contentPadding:
                          const EdgeInsets.symmetric(horizontal: 10, vertical: 13),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey.shade400),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                    ),
                     Obx(
                   ()=> Checkbox(value: controller.selectedIndex1.value==index, onChanged: (value) {
                            if(value!){
                              controller.selectedIndex1.value=index;
          
                             
                            }
                  
                     },),
                   )
                    ],
                  ),
                );
              },),
             ),
             ElevatedButton(
               style: ElevatedButton.styleFrom(
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(12), 
                   ),
                 fixedSize: Size(Get.width*0.7, Get.height*0.07),
                 backgroundColor: AppColors.darkBlue
               ),
               child: const Text("حفظ"),
               onPressed: () {
                controller.createExam();
                
                
                
                
          
             },
          
             )
            ],
          ),
        ),
      );
  
  
      },)
      
      
 
  
    );
  }
}


