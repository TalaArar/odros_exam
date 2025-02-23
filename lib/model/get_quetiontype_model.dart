import 'dart:convert';

class QuestionTypeModel {
  List<Payload>? payload;
  bool? status;
  String? resultMessage;
  dynamic refNo;

  QuestionTypeModel({
    this.payload,
    this.status,
    this.resultMessage,
    this.refNo,
  });

  factory QuestionTypeModel.fromRawJson(String str) => QuestionTypeModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory QuestionTypeModel.fromJson(Map<String, dynamic> json) => QuestionTypeModel(
    payload: json["payload"] == null ? [] : List<Payload>.from(json["payload"]!.map((x) => Payload.fromJson(x))),
    status: json["status"],
    resultMessage: json["resultMessage"],
    refNo: json["refNo"],
  );

  Map<String, dynamic> toJson() => {
    "payload": payload == null ? [] : List<dynamic>.from(payload!.map((x) => x.toJson())),
    "status": status,
    "resultMessage": resultMessage,
    "refNo": refNo,
  };
}

class Payload {
  int? questionTypeNo;
  String? questionTypeName;

  Payload({
    this.questionTypeNo,
    this.questionTypeName,
  });

  factory Payload.fromRawJson(String str) => Payload.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Payload.fromJson(Map<String, dynamic> json) => Payload(
    questionTypeNo: json["QUESTION_TYPE_NO"],
    questionTypeName: json["QUESTION_TYPE_NAME"],
  );

  Map<String, dynamic> toJson() => {
    "QUESTION_TYPE_NO": questionTypeNo,
    "QUESTION_TYPE_NAME": questionTypeName,
  };
}
