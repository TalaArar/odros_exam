import 'dart:convert';

import 'package:flutterweb_priv/model/add_question_model.dart';
import 'package:flutterweb_priv/model/createexam_model.dart';
import 'package:flutterweb_priv/model/educationtype_model.dart';
import 'package:flutterweb_priv/model/exam_category_model.dart';
import 'package:flutterweb_priv/model/get_quetiontype_model.dart';
import 'package:flutterweb_priv/model/get_subject_model.dart';
import 'package:flutterweb_priv/model/get_units_model.dart';
import 'package:flutterweb_priv/model/item_model.dart';
import 'package:flutterweb_priv/model/level_model.dart';
import 'package:http/http.dart' as http;

import '../helper/apiUrl.dart';


class ExamRepository{
  Future<CreateExamModel> createExam(levelser,itemser,subjectser,unitser,levelname,itemname,unitname,subjectname,odrosexam)async{
    var headers = {
      'Access-Control-Allow-Origin': '*',
      'Content-Type': 'application/json',
      'Accept': '*/*'
    };
    var request = http.Request('POST', Uri.parse('${ApiUrls.api}/CreateExam'));
    request.body = json.encode({
      "LEVEL_SER": levelser,
      "ITEM_SER": itemser,
      "LEVEL_NAME": "$levelname",
      "ITEM_NAME": "$itemname",
      "UNIT_SER": unitser,
      "UNIT_NAME": "$unitname",
      "SUBJECT_SER": subjectser,
      "SUBJECT_NAME": "$subjectname",
      "ODROS_EXAMS_ANSWERs":odrosexam
    });

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();
    String res=await response.stream.bytesToString();
    if (response.statusCode == 200) {
      return CreateExamModel.fromJson(json.decode(res));
    }
    else {
      print(response.reasonPhrase);
      return CreateExamModel.fromJson(json.decode(res));

    }

  }

  Future<EducationTypePayload> getEducationType()async{
    var request = http.Request('GET', Uri.parse('${ApiUrls.api}/GetEducationType'));


    http.StreamedResponse response = await request.send();
     String res=await response.stream.bytesToString();
    if (response.statusCode == 200) {
      return EducationTypePayload.fromJson(json.decode(res));
    }
    else {
    print(response.reasonPhrase);
    return EducationTypePayload.fromJson(json.decode(res));

    }

  }

  Future<GetlevelsModel> getlevels(educationtype)async{
    var headers = {
      'Access-Control-Allow-Origin': '*',
      'Content-Type': 'application/json',
      'Accept': '*/*'
    };
    var request = http.Request('GET', Uri.parse('${ApiUrls.api}/GetLevels?EDUCTION_TYPE=$educationtype'));
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();
  String res=await response.stream.bytesToString();
    if (response.statusCode == 200) {
     return GetlevelsModel.fromJson(json.decode(res));
    }
    else {
    print(response.reasonPhrase);
    return GetlevelsModel.fromJson(json.decode(res));

    }

  }

  Future<GetItemsModel> getItems()async{
    var headers = {
      'Lang': '1'
    };
    var request = http.Request('GET', Uri.parse('${ApiUrls.api}/GetItems'));

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();
     String res=await response.stream.bytesToString();
    if (response.statusCode == 200) {
     return GetItemsModel.fromJson(json.decode(res));
    }
    else {
    print(response.reasonPhrase);
    return GetItemsModel.fromJson(json.decode(res));

    }

  }

  Future<GetExamCategoryModel> getExamCategory()async{
    var request = http.Request('GET', Uri.parse('${ApiUrls.api}/GetExamCategory'));


    http.StreamedResponse response = await request.send();
     String res=await response.stream.bytesToString();
    if (response.statusCode == 200) {
     return GetExamCategoryModel.fromJson(json.decode(res));
    }
    else {
    print(response.reasonPhrase);
    return GetExamCategoryModel.fromJson(json.decode(res));

    }

  }


 Future<UnitsModel> getUnits()async{
    var request = http.Request('GET', Uri.parse('${ApiUrls.api}/GetUnits?lang=1'));


    http.StreamedResponse response = await request.send();
    String res=await response.stream.bytesToString();
    if (response.statusCode == 200) {
  return UnitsModel.fromJson(json.decode(res));
    }
    else {
    print(response.reasonPhrase);
    return UnitsModel.fromJson(json.decode(res));

    }

  }

  Future<SubjectModel>getSubjects()async{
    var request = http.Request('GET', Uri.parse('${ApiUrls.api}/GetSubjects?lang=1'));
    http.StreamedResponse response = await request.send();
    String res=await response.stream.bytesToString();
    if (response.statusCode == 200) {
  return SubjectModel.fromJson(json.decode(res));
    }
    else {
    print(response.reasonPhrase);
    return SubjectModel.fromJson(json.decode(res));

    }
  }

  Future<QuestionTypeModel> questionType()async{
    var request = http.Request('GET', Uri.parse('${ApiUrls.api}/GetQuestionType?lang=1'));


    http.StreamedResponse response = await request.send();
     String res=await response.stream.bytesToString();
    if (response.statusCode == 200) {
   return QuestionTypeModel.fromJson(json.decode(res));
    }
    else {
    print(response.reasonPhrase);
    return QuestionTypeModel.fromJson(json.decode(res));

    }

  }
}


class AnswerExamModel {
  String? answerOne;
  String? answerTwo;
  String? answerThree;
  String? answerFour;
  String? answerIsCorrect;
  String? examQuestionText;
  String? subjectTitle;
  int? questionTypeSer;
  String? questionTypeName;

  AnswerExamModel({
    this.answerOne,
    this.answerTwo,
    this.answerThree,
    this.answerFour,
    this.answerIsCorrect,
    this.examQuestionText,
    this.subjectTitle,
    this.questionTypeSer,
    this.questionTypeName,
  });

  factory AnswerExamModel.fromJson(Map<String, dynamic> json) => AnswerExamModel(
    answerOne: json["ANSWER_ONE"],
    answerTwo: json["ANSWER_TWO"],
    answerThree: json["ANSWER_THREE"],
    answerFour: json["ANSWER_FOUR"],
    answerIsCorrect: json["ANSWER_IS_CORRECT"],
    examQuestionText: json["EXAM_QUESTION_TEXT"],
    subjectTitle: json["SUBJECT_TITLE"],
    questionTypeSer: json["QUESTION_TYPE_SER"],
    questionTypeName: json["QUESTION_TYPE_NAME"],
  );

  Map<String, dynamic> toJson() => {
    "ANSWER_ONE": answerOne,
    "ANSWER_TWO": answerTwo,
    "ANSWER_THREE": answerThree,
    "ANSWER_FOUR": answerFour,
    "ANSWER_IS_CORRECT": answerIsCorrect,
    "EXAM_QUESTION_TEXT": examQuestionText,
    "SUBJECT_TITLE": subjectTitle,
    "QUESTION_TYPE_SER": questionTypeSer,
    "QUESTION_TYPE_NAME": questionTypeName,
  };
}
