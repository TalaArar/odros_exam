import 'dart:convert';

class SubjectModel {
  List<Payload>? payload;
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
  int? subjectNo;
  String? subjectName;

  Payload({
    this.subjectNo,
    this.subjectName,
  });

  factory Payload.fromRawJson(String str) => Payload.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Payload.fromJson(Map<String, dynamic> json) => Payload(
    subjectNo: json["SUBJECT_NO"],
    subjectName: json["SUBJECT_NAME"],
  );

  Map<String, dynamic> toJson() => {
    "SUBJECT_NO": subjectNo,
    "SUBJECT_NAME": subjectName,
  };
}
