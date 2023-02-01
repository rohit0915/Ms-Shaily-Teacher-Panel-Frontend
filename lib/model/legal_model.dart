// To parse this JSON data, do
//
//     final legalModel = legalModelFromJson(jsonString);

import 'dart:convert';

LegalModel legalModelFromJson(String str) => LegalModel.fromJson(json.decode(str));

String legalModelToJson(LegalModel data) => json.encode(data.toJson());

class LegalModel {
    LegalModel({
        required this.message,
        required this.data,
    });

    String message;
    List<Datum> data;

    factory LegalModel.fromJson(Map<String, dynamic> json) => LegalModel(
        message: json["message"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class Datum {
    Datum({
        required this.id,
        required this.v,
        required this.legalInformation,
    });

    String id;
    int v;
    String legalInformation;

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["_id"],
        v: json["__v"],
        legalInformation: json["legalInformation"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "__v": v,
        "legalInformation": legalInformation,
    };
}
