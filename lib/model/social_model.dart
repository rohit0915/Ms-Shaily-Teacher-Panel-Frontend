// To parse this JSON data, do
//
//     final socialModel = socialModelFromJson(jsonString);

import 'dart:convert';

SocialModel socialModelFromJson(String str) =>
    SocialModel.fromJson(json.decode(str));

String socialModelToJson(SocialModel data) => json.encode(data.toJson());

class SocialModel {
  SocialModel({
    required this.msg,
    required this.accessToken,
    required this.data,
  });

  String msg;
  String accessToken;
  Data data;

  factory SocialModel.fromJson(Map<String, dynamic> json) => SocialModel(
        msg: json["msg"],
        accessToken: json["accessToken"],
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "msg": msg,
        "accessToken": accessToken,
        "data": data.toJson(),
      };
}

class Data {
  Data({
    required this.phone,
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
  });

  String phone;
  String id;
  DateTime createdAt;
  DateTime updatedAt;
  int v;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        phone: json["phone"],
        id: json["_id"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "phone": phone,
        "_id": id,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "__v": v,
      };
}
