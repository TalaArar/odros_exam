import 'dart:convert';

class GetlevelsModel {
  List<levelPayload>? payload;
  bool? status;
  String? resultMessage;
  dynamic refNo;

  GetlevelsModel({
    this.payload,
    this.status,
    this.resultMessage,
    this.refNo,
  });

  factory GetlevelsModel.fromRawJson(String str) => GetlevelsModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory GetlevelsModel.fromJson(Map<String, dynamic> json) => GetlevelsModel(
    payload: json["payload"] == null ? [] : List<levelPayload>.from(json["payload"]!.map((x) => levelPayload.fromJson(x))),
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

class levelPayload {
  int? levelSer;
  String? levelName;

  levelPayload({
    this.levelSer,
    this.levelName,
  });

  factory levelPayload.fromRawJson(String str) => levelPayload.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory levelPayload.fromJson(Map<String, dynamic> json) => levelPayload(
    levelSer: json["LEVEL_SER"],
    levelName: json["LEVEL_NAME"],
  );

  Map<String, dynamic> toJson() => {
    "LEVEL_SER": levelSer,
    "LEVEL_NAME": levelName,
  };
}