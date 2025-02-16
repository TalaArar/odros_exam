
import 'dart:convert';

class GetEducationTypeModel {
  List<EducationTypePayload>? payload;
  bool? status;
  String? resultMessage;
  dynamic refNo;

  GetEducationTypeModel({
    this.payload,
    this.status,
    this.resultMessage,
    this.refNo,
  });

  factory GetEducationTypeModel.fromRawJson(String str) => GetEducationTypeModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory GetEducationTypeModel.fromJson(Map<String, dynamic> json) => GetEducationTypeModel(
    payload: json["payload"] == null ? [] : List<EducationTypePayload>.from(json["payload"]!.map((x) => EducationTypePayload.fromJson(x))),
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

class EducationTypePayload {
  int? eductionTypeNo;
  String? eductionTypeName;
  String? eductionTypeNameL2;

  EducationTypePayload({
    this.eductionTypeNo,
    this.eductionTypeName,
    this.eductionTypeNameL2,
  });

  factory EducationTypePayload.fromRawJson(String str) => EducationTypePayload.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory EducationTypePayload.fromJson(Map<String, dynamic> json) => EducationTypePayload(
    eductionTypeNo: json["EDUCTION_TYPE_NO"],
    eductionTypeName: json["EDUCTION_TYPE_NAME"],
    eductionTypeNameL2: json["EDUCTION_TYPE_NAME_L2"],
  );

  Map<String, dynamic> toJson() => {
    "EDUCTION_TYPE_NO": eductionTypeNo,
    "EDUCTION_TYPE_NAME": eductionTypeName,
    "EDUCTION_TYPE_NAME_L2": eductionTypeNameL2,
  };
}
