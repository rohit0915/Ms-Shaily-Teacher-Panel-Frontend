// To parse this JSON data, do
//
//     final createStudentModel = createStudentModelFromJson(jsonString);

import 'dart:convert';

CreateStudentModel? createStudentModelFromJson(String str) =>
    CreateStudentModel.fromJson(json.decode(str));

String createStudentModelToJson(CreateStudentModel? data) =>
    json.encode(data!.toJson());

class CreateStudentModel {
  CreateStudentModel({
    this.data,
    this.message,
  });

  Data? data;
  String? message;

  factory CreateStudentModel.fromJson(Map<String, dynamic> json) =>
      CreateStudentModel(
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
    this.id,
    this.createdAt,
    this.updatedAt,
    this.v,
  });

  String? userId;
  String? firstName;
  String? lastName;
  String? userType;
  int? phoneNumber;
  String? qualification;
  List<int?>? dataClass;
  List<String?>? category;
  List<String?>? subjectStream;
  List<String?>? subject;
  List<dynamic>? notifications;
  String? id;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? v;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
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
            : List<String?>.from(json["category"]!.map((x) => x)),
        subjectStream: json["subjectStream"] == null
            ? []
            : List<String?>.from(json["subjectStream"]!.map((x) => x)),
        subject: json["subject"] == null
            ? []
            : List<String?>.from(json["subject"]!.map((x) => x)),
        notifications: json["notifications"] == null
            ? []
            : List<dynamic>.from(json["notifications"]!.map((x) => x)),
        id: json["_id"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
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
        "_id": id,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "__v": v,
      };
}
