
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutterweb_priv/model/add_question_model.dart';
import 'package:flutterweb_priv/model/createexam_model.dart';
import 'package:flutterweb_priv/model/get_quetiontype_model.dart';
import 'package:flutterweb_priv/model/get_subject_model.dart';
import 'package:flutterweb_priv/model/get_units_model.dart';
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
   bool selectedtype=false;
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
      String? isSelected;
    List<UnitsPayload> unitPayload =[];
    List<SubjectPayload> subjectPayload =[];
    List<QuestionTypePayload> questiontypePayload=[];
    List<String> unitsList =[];
    List<String>  subjectList =[];
    List<String> questiontypelist=[];
    String? selectedQuestionType;
    int? Selectedid;
    int? indexQuestion;
    List<AnswerExamModel> answerexam=[];
      fetchlevel()async{
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
      fetchItem()async{
      update();
      await ExamRepository().getItems().then((value){
            item=value.payload??[];
          for (var element in item) {
          itemList.add(element.itemName!);
          }
          
            

      });
      update();
     }


     fetchUnits()async{
      update();
      await ExamRepository().getUnits().then((value){
        unitPayload=value.payload??[];
        for (var element in unitPayload) {
          unitsList.add(element.unitsName!);
        }
      });
      update();
    }
    fetchSubjects()async{
      update();
      await ExamRepository().getSubjects().then((value){
        subjectPayload=value.payload??[];
        for (var element in subjectPayload) {
          subjectList.add(element.subjectName!);
        }
      });
      update();
    }

    fetchQuestionType()async{
      update();
      await ExamRepository().questionType().then((value){
        questiontypePayload =value.payload??[];
        for (var element in questiontypePayload) {
          questiontypelist.add(element.questionTypeName!);
        }
      });
      update();
    }
List<exam> examlist=[];

   @override
  void onInit() {
   fetchlevel();
   fetchItem();
   fetchSubjects();
   fetchUnits();
   fetchQuestionType();
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