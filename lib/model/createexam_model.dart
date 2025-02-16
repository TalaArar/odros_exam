
import 'dart:convert';

class CreateExamModel {
  final bool? status;
  final String? resultMessage;
  final dynamic refNo;

  CreateExamModel({
    this.status,
    this.resultMessage,
    this.refNo,
  });

  factory CreateExamModel.fromJson(Map<String, dynamic> json) => CreateExamModel(
    status: json["status"],
    resultMessage: json["resultMessage"],
    refNo: json["refNo"],
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "resultMessage": resultMessage,
    "refNo": refNo,
  };
}
