// To parse this JSON data, do
//
//     final teacherModel = teacherModelFromJson(jsonString);

import 'dart:convert';

TeacherModel teacherModelFromJson(String str) =>
    TeacherModel.fromJson(json.decode(str));

String teacherModelToJson(TeacherModel data) => json.encode(data.toJson());

class TeacherModel {
  TeacherModel({
    required this.data,
    required this.message,
  });

  Data data;
  String message;

  factory TeacherModel.fromJson(Map<String, dynamic> json) => TeacherModel(
        data: Data.fromJson(json["data"]),
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "data": data.toJson(),
        "message": message,
      };
}

class Data {
  Data({
    required this.distance,
    required this.id,
    required this.userId,
    required this.firstName,
    required this.lastName,
    required this.phoneNumber,
    required this.userType,
    required this.qualification,
    required this.dataClass,
    required this.category,
    required this.subjectStream,
    required this.subject,
    required this.review,
    required this.notifications,
    required this.studentNotifications,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
  });

  int distance;
  String id;
  String userId;
  String firstName;
  String lastName;
  int phoneNumber;
  String userType;
  String qualification;
  List<int> dataClass;
  List<String> category;
  List<String> subjectStream;
  List<String> subject;
  List<dynamic> review;
  List<dynamic> notifications;
  List<dynamic> studentNotifications;
  DateTime createdAt;
  DateTime updatedAt;
  int v;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        distance: json["distance"],
        id: json["_id"],
        userId: json["userId"],
        firstName: json["firstName"],
        lastName: json["lastName"],
        phoneNumber: json["phoneNumber"],
        userType: json["userType"],
        qualification: json["Qualification"],
        dataClass: List<int>.from(json["class"].map((x) => x)),
        category: List<String>.from(json["category"].map((x) => x)),
        subjectStream: List<String>.from(json["subjectStream"].map((x) => x)),
        subject: List<String>.from(json["subject"].map((x) => x)),
        review: List<dynamic>.from(json["review"].map((x) => x)),
        notifications: List<dynamic>.from(json["notifications"].map((x) => x)),
        studentNotifications:
            List<dynamic>.from(json["studentNotifications"].map((x) => x)),
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "distance": distance,
        "_id": id,
        "userId": userId,
        "firstName": firstName,
        "lastName": lastName,
        "phoneNumber": phoneNumber,
        "userType": userType,
        "Qualification": qualification,
        "class": List<dynamic>.from(dataClass.map((x) => x)),
        "category": List<dynamic>.from(category.map((x) => x)),
        "subjectStream": List<dynamic>.from(subjectStream.map((x) => x)),
        "subject": List<dynamic>.from(subject.map((x) => x)),
        "review": List<dynamic>.from(review.map((x) => x)),
        "notifications": List<dynamic>.from(notifications.map((x) => x)),
        "studentNotifications":
            List<dynamic>.from(studentNotifications.map((x) => x)),
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "__v": v,
      };
}
