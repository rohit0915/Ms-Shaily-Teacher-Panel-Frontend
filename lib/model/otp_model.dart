// To parse this JSON data, do
//
//     final otpModel = otpModelFromJson(jsonString);

import 'dart:convert';

OtpModel? otpModelFromJson(String str) => OtpModel.fromJson(json.decode(str));

String otpModelToJson(OtpModel? data) => json.encode(data!.toJson());

class OtpModel {
    OtpModel({
        this.data,
        this.message,
        this.accessToken,
        this.refreshToken,
    });

    Data? data;
    String? message;
    String? accessToken;
    String? refreshToken;

    factory OtpModel.fromJson(Map<String, dynamic> json) => OtpModel(
        data: Data.fromJson(json["data"]),
        message: json["message"],
        accessToken: json["accessToken"],
        refreshToken: json["refreshToken"],
    );

    Map<String, dynamic> toJson() => {
        "data": data!.toJson(),
        "message": message,
        "accessToken": accessToken,
        "refreshToken": refreshToken,
    };
}

class Data {
    Data({
        this.id,
        this.phone,
        this.otp,
        this.createdAt,
        this.updatedAt,
        this.v,
    });

    String? id;
    String? phone;
    int? otp;
    DateTime? createdAt;
    DateTime? updatedAt;
    int? v;

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["_id"],
        phone: json["phone"],
        otp: json["OTP"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        v: json["__v"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "phone": phone,
        "OTP": otp,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "__v": v,
    };
}
