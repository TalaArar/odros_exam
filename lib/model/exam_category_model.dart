import 'dart:convert';

class GetExamCategoryModel {
  List<ExamCategoryPayload>? payload;
  bool? status;
  String? resultMessage;
  dynamic refNo;

  GetExamCategoryModel({
    this.payload,
    this.status,
    this.resultMessage,
    this.refNo,
  });

  factory GetExamCategoryModel.fromRawJson(String str) => GetExamCategoryModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory GetExamCategoryModel.fromJson(Map<String, dynamic> json) => GetExamCategoryModel(
    payload: json["payload"] == null ? [] : List<ExamCategoryPayload>.from(json["payload"]!.map((x) => ExamCategoryPayload.fromJson(x))),
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

class ExamCategoryPayload {
  int? examCategoryNo;
  String? examCategoryName;
  String? examCategoryNameEn;

  ExamCategoryPayload({
    this.examCategoryNo,
    this.examCategoryName,
    this.examCategoryNameEn,
  });

  factory ExamCategoryPayload.fromRawJson(String str) => ExamCategoryPayload.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ExamCategoryPayload.fromJson(Map<String, dynamic> json) => ExamCategoryPayload(
    examCategoryNo: json["EXAM_CATEGORY_NO"],
    examCategoryName: json["EXAM_CATEGORY_NAME"],
    examCategoryNameEn: json["EXAM_CATEGORY_NAME_EN"],
  );

  Map<String, dynamic> toJson() => {
    "EXAM_CATEGORY_NO": examCategoryNo,
    "EXAM_CATEGORY_NAME": examCategoryName,
    "EXAM_CATEGORY_NAME_EN": examCategoryNameEn,
  };
}
