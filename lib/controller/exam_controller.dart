
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutterweb_priv/model/createexam_model.dart';
import 'package:flutterweb_priv/model/item_model.dart';
import 'package:flutterweb_priv/model/level_model.dart';
import 'package:flutterweb_priv/repository/exam_repository.dart';
import 'package:get/get.dart';


class ExamController extends GetxController{
   
    
    RxInt selectedIndex=(-1).obs;
    RxInt selectedIndex1=(-1).obs;
    int selectedEducationType=0;


     List<levelPayload> level =[];
     List<GetItemsPayload> item =[];
     List<String> levelList =[];
     List<String> itemList =[];
     List<CreateExamModel> createexam =[];
      String? chooseClass;
     String? chooseItem;
     String? chooseSubject;
     String? chooseUnit;
     List<String>? correct=[];
     
     final List< TextEditingController>? question1=[TextEditingController(),TextEditingController()];
      final List<TextEditingController> answer1= [TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController()];
     final List<TextEditingController> answer2= [TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController()];
     

     void fetchlevel()async{
      update();
      await ExamRepository().getlevels(0).then((value){
            level=value.payload??[];
          for (var element in level) {
          levelList.add(element.levelName!);
          }
          
            

      });
      update();
     }
     void fetchItem()async{
      update();
      await ExamRepository().getItems().then((value){
            item=value.payload??[];
          for (var element in item) {
          itemList.add(element.itemName!);
          }
          
            

      });
      update();
     }

     List<String> unit=[
      'الوحدةالاولى',
      'الوحدةالثانية',
      'الوحدةالثالثة',
      'الوحدةالرابعة',
      'الوحدةالخامسة',
      'الوحدةالسادسة',
      'الوحدةالسابعة',
      'الوحدةالثامنة',
      'الوحدةالتاسعة',
      'الوحدةالعاشرة',
    ];

    List<String> subject=[
      'الدرس الاول',
      'الدرس الثاني',
      'الدرس الثالث',
      'الدرس الرابع',
      'الدرس الخامسة',
      'الدرس السادس',
      'الدرس السابع',
      'الدرس الثامن',
      'الدرس التاسع',
      'الدرس العاشر',
      'الدرس الحادي عشر',
      'الدرس الثاني عشر',
      'الدرس الثالث عشر',
      'الدرس الرابع عشر',
      'الدرس الخامس عشر',
    ];

   void createExam()async{
      Map<String,dynamic> body={
              
    "EXAM_ID": 0,
    "LEVEL_SER": 0,
    "ITEM_SER": 0,
    "EXAM_CATEGORY_NO": 0,
    "ANSWER_ID": 0,
     "EXAM_QUESTION_TEXT": question1![0].text,
    "ANSWER_ONE": answer1[0].text,
    "ANSWER_TWO": answer1[1].text,
    "ANSWER_THREE": answer1[2].text,
    "ANSWER_FOUR": answer1[3].text,
    
    
      };
      
      log(body.toString());

    }

   @override
  void onInit() {
  //  fetchlevel();
  //  fetchItem();
    super.onInit();
  }

   

   

}