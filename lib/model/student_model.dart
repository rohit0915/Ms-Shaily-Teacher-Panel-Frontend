// To parse this JSON data, do
//
//     final studentModel = studentModelFromJson(jsonString);

import 'dart:convert';

StudentModel? studentModelFromJson(String str) =>
    StudentModel.fromJson(json.decode(str));

String studentModelToJson(StudentModel? data) => json.encode(data!.toJson());

class StudentModel {
  StudentModel({
    this.data,
    this.message,
  });

  Data? data;
  String? message;

  factory StudentModel.fromJson(Map<String, dynamic> json) => StudentModel(
        data: Data.fromJson(json["data"]),
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "data": data!.toJson(),
        "message": message,
      };
}

class Data {
  Data({
    this.id,
    this.userId,
    this.firstName,
    this.lastName,
    this.userType,
    this.phoneNumber,
    this.qualification,
    this.dataClass,
    this.category,
    this.subjectStream,
    this.subject,
    this.notifications,
    this.createdAt,
    this.updatedAt,
    this.v,
  });

  String? id;
  String? userId;
  String? firstName;
  String? lastName;
  String? userType;
  int? phoneNumber;
  String? qualification;
  List<int?>? dataClass;
  List<dynamic>? category;
  List<dynamic>? subjectStream;
  List<dynamic>? subject;
  List<dynamic>? notifications;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? v;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["_id"],
        userId: json["userId"],
        firstName: json["firstName"],
        lastName: json["lastName"],
        userType: json["userType"],
        phoneNumber: json["phoneNumber"],
        qualification: json["Qualification"],
        dataClass: json["class"] == null
            ? []
            : List<int?>.from(json["class"]!.map((x) => x)),
        category: json["category"] == null
            ? []
            : List<dynamic>.from(json["category"]!.map((x) => x)),
        subjectStream: json["subjectStream"] == null
            ? []
            : List<dynamic>.from(json["subjectStream"]!.map((x) => x)),
        subject: json["subject"] == null
            ? []
            : List<dynamic>.from(json["subject"]!.map((x) => x)),
        notifications: json["notifications"] == null
            ? []
            : List<dynamic>.from(json["notifications"]!.map((x) => x)),
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "userId": userId,
        "firstName": firstName,
        "lastName": lastName,
        "userType": userType,
        "phoneNumber": phoneNumber,
        "Qualification": qualification,
        "class": dataClass == null
            ? []
            : List<dynamic>.from(dataClass!.map((x) => x)),
        "category":
            category == null ? [] : List<dynamic>.from(category!.map((x) => x)),
        "subjectStream": subjectStream == null
            ? []
            : List<dynamic>.from(subjectStream!.map((x) => x)),
        "subject":
            subject == null ? [] : List<dynamic>.from(subject!.map((x) => x)),
        "notifications": notifications == null
            ? []
            : List<dynamic>.from(notifications!.map((x) => x)),
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "__v": v,
      };
}
