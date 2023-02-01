// To parse this JSON data, do
//
//     final loginModel = loginModelFromJson(jsonString);

import 'dart:convert';

LoginModel? loginModelFromJson(String str) => LoginModel.fromJson(json.decode(str));

String loginModelToJson(LoginModel? data) => json.encode(data!.toJson());

class LoginModel {
    LoginModel({
        this.otp,
        this.message,
    });

    String? otp;
    String? message;

    factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        otp: json["OTP"],
        message: json["message"],
    );

    Map<String, dynamic> toJson() => {
        "OTP": otp,
        "message": message,
    };
}
