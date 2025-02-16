
import 'dart:convert';

class GetItemsModel {
  List<GetItemsPayload>? payload;
  bool? status;
  String? resultMessage;
  dynamic refNo;

  GetItemsModel({
    this.payload,
    this.status,
    this.resultMessage,
    this.refNo,
  });

  factory GetItemsModel.fromRawJson(String str) => GetItemsModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory GetItemsModel.fromJson(Map<String, dynamic> json) => GetItemsModel(
    payload: json["payload"] == null ? [] : List<GetItemsPayload>.from(json["payload"]!.map((x) => GetItemsPayload.fromJson(x))),
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

class GetItemsPayload {
  int? itemNo;
  String? itemName;
  dynamic itemImg;

  GetItemsPayload({
    this.itemNo,
    this.itemName,
    this.itemImg,
  });

  factory GetItemsPayload.fromRawJson(String str) => GetItemsPayload.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory GetItemsPayload.fromJson(Map<String, dynamic> json) => GetItemsPayload(
    itemNo: json["ITEM_NO"],
    itemName: json["ITEM_NAME"],
    itemImg: json["ITEM_IMG"],
  );

  Map<String, dynamic> toJson() => {
    "ITEM_NO": itemNo,
    "ITEM_NAME": itemName,
    "ITEM_IMG": itemImg,
  };
}