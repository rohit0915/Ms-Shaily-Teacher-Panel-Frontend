// To parse this JSON data, do
//
//     final aboutusModel = aboutusModelFromJson(jsonString);

import 'dart:convert';

AboutusModel? aboutusModelFromJson(String str) => AboutusModel.fromJson(json.decode(str));

String aboutusModelToJson(AboutusModel? data) => json.encode(data!.toJson());

class AboutusModel {
    AboutusModel({
        this.message,
        this.data,
    });

    String? message;
    List<Datum?>? data;

    factory AboutusModel.fromJson(Map<String, dynamic> json) => AboutusModel(
        message: json["message"],
        data: json["data"] == null ? [] : List<Datum?>.from(json["data"]!.map((x) => Datum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "message": message,
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x!.toJson())),
    };
}

class Datum {
    Datum({
        this.id,
        this.content,
        this.createdAt,
        this.updatedAt,
        this.v,
    });

    String? id;
    String? content;
    DateTime? createdAt;
    DateTime? updatedAt;
    int? v;

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["_id"],
        content: json["content"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        v: json["__v"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "content": content,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "__v": v,
    };
}
