
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutterweb_priv/model/add_question_model.dart';
import 'package:flutterweb_priv/model/createexam_model.dart';
import 'package:flutterweb_priv/model/item_model.dart';
import 'package:flutterweb_priv/model/level_model.dart';
import 'package:flutterweb_priv/repository/exam_repository.dart';
import 'package:get/get.dart';


class ExamController extends GetxController{

    RxInt selectedIndex=(-1).obs;
    RxInt selectedIndex1=(-1).obs;
    int selectedEducationType=0;
    String? selectedLevelValue;
    String? selectedItemsValue;
    String? selectedUnitValue;
    String? selectedSubjectValue;
    int? selectedLevelid;
    int? selectedItemsid;
    int? selectedUnitid;
    int? selectedSubjectid;
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
     int length=1;
      List<TextEditingController> question=[];
      List<TextEditingController> answer= [];
      String? isSelected;

     void fetchlevel()async{
      update();
      await ExamRepository().getlevels(0).then((value){
            level=value.payload??[];
          for (var element in level) {
          levelList.add(element.levelName!);
          log(levelList.toList().toString());
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

List<AddExamModel> addexam=[];
List<exam> examlist=[];
   @override
  void onInit() {
   fetchlevel();
   fetchItem();
    super.onInit();
  }

   
   addindex(){
     update();
     length=length+1;
     update;
   }

}

class exam{
  String? question;
  answer? answers;
  exam(this.question,this.answers);
}

class answer{
  String? answerone;
  String? answertwo;
  String? answerthree;
  String? answerfour;
  String? answercorrect;
  answer(this.answerone,this.answertwo,this.answerthree,this.answerfour,this.answercorrect);

}