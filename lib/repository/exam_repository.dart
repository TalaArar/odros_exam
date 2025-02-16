import 'dart:convert';

import 'package:flutterweb_priv/model/createexam_model.dart';
import 'package:flutterweb_priv/model/educationtype_model.dart';
import 'package:flutterweb_priv/model/exam_category_model.dart';
import 'package:flutterweb_priv/model/item_model.dart';
import 'package:flutterweb_priv/model/level_model.dart';
import 'package:http/http.dart' as http;

import '../helper/apiUrl.dart';


class ExamRepository{
  Future<CreateExamModel> CreateExam()async{
    var headers = {
      'Content-Type': 'application/json'
    };
    var request = http.Request('POST', Uri.parse('${ApiUrls.api}/CreateExam'));
    request.body = json.encode({
      "LEVEL_SER": 265,
      "ITEM_SER": 248,
      "EXAM_CATEGORY_NO": 1,
      "EXAM_QUESTION_TEXT": "do you what  ?",
      "ANSWER_ONE": "3",
      "ANSWER_TWO": "6",
      "ANSWER_THREE": "2",
      "ANSWER_FOUR": "4",
      "ANSWER_IS_CORRECT": "3"
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
    var request = http.Request('GET', Uri.parse('${ApiUrls.api}/GetLevels?EDUCTION_TYPE=$educationtype'));


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
}