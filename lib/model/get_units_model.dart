import 'dart:convert';

class UnitsModel {
  List<Payload>? payload;
  bool? status;
  String? resultMessage;
  dynamic refNo;

  UnitsModel({
    this.payload,
    this.status,
    this.resultMessage,
    this.refNo,
  });

  factory UnitsModel.fromRawJson(String str) => UnitsModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UnitsModel.fromJson(Map<String, dynamic> json) => UnitsModel(
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
  int? unitsNo;
  String? unitsName;

  Payload({
    this.unitsNo,
    this.unitsName,
  });

  factory Payload.fromRawJson(String str) => Payload.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Payload.fromJson(Map<String, dynamic> json) => Payload(
    unitsNo: json["UNITS_NO"],
    unitsName: json["UNITS_NAME"],
  );

  Map<String, dynamic> toJson() => {
    "UNITS_NO": unitsNo,
    "UNITS_NAME": unitsName,
  };
}
