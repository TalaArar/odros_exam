import 'dart:convert';

class SubjectModel {
  List<SubjectPayload>? payload;
  bool? status;
  String? resultMessage;
  dynamic refNo;

  SubjectModel({
    this.payload,
    this.status,
    this.resultMessage,
    this.refNo,
  });

  factory SubjectModel.fromRawJson(String str) => SubjectModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SubjectModel.fromJson(Map<String, dynamic> json) => SubjectModel(
    payload: json["payload"] == null ? [] : List<SubjectPayload>.from(json["payload"]!.map((x) => SubjectPayload.fromJson(x))),
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

class SubjectPayload {
  int? subjectNo;
  String? subjectName;

  SubjectPayload({
    this.subjectNo,
    this.subjectName,
  });

  factory SubjectPayload.fromRawJson(String str) => SubjectPayload.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SubjectPayload.fromJson(Map<String, dynamic> json) => SubjectPayload(
    subjectNo: json["SUBJECT_NO"],
    subjectName: json["SUBJECT_NAME"],
  );

  Map<String, dynamic> toJson() => {
    "SUBJECT_NO": subjectNo,
    "SUBJECT_NAME": subjectName,
  };
}
