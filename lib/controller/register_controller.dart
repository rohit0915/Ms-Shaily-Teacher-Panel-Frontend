import 'dart:convert';
import 'dart:io';

import 'package:cloudinary_sdk/cloudinary_sdk.dart';
import 'package:flutter/cupertino.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:permission_handler/permission_handler.dart';
import 'package:shaily/common/endpoint.dart';
import 'package:shaily/controller/login_controller.dart';
import 'package:shaily/model/create_student_model.dart';
import 'package:shaily/model/student_model.dart';
import 'package:shaily/model/teacher_model.dart';
import 'package:shaily/model/teacher_register_model.dart';

class RegisterController extends GetxController {
  LoginController loginController = Get.put(LoginController());


  RxString _imageUrl = "".obs;
  TextEditingController firstnameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();
  TextEditingController qualificationController = TextEditingController();
  TextEditingController classController = TextEditingController();
  TextEditingController gaurdianController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController reliegonController = TextEditingController();
  TextEditingController nationalityController = TextEditingController();

  CreateStudentModel? data;
  StudentModel? studentdata;
  TeacherRegisterModel? teacherdata;
  TeacherModel? teacher;
  RxBool isLoading = true.obs;
  RxBool isLoading1 = true.obs;
  RxBool isLoading2 = true.obs;
  RxBool isLoading3 = true.obs;
  RxBool isLoading4 = true.obs;
  RxBool isLoading5 = true.obs;
  RxString Category = "".obs;
  RxString Stream = "".obs;
  RxString Subject = "".obs;
  RxString lat = "".obs;
  RxString long = "".obs;

  sturegister() async {
    var respose = await http.post(
      Uri.parse(EndPoint.createStudent),
      body: jsonEncode({
        "firstName": firstnameController.text,
        "lastName": lastnameController.text,
        "phoneNumber": loginController.numberController.text,
        "Qualification": qualificationController.text,
        "class": [classController.text],
        "category": Category.value,
        "subjectStream": Stream.value,
        "subject": Subject.value,
        "location": {"longitude": long.value, "lattitude": lat.value},
        "guardian": gaurdianController.text,
        "latestQualification": qualificationController.text,
        "religion": reliegonController.text,
        "nationality": nationalityController.text,
        "address": addressController.text
      }),
      headers: {
        "Content-Type": "application/json",
        'x-access-token': loginController.otpdata!.accessToken!
      },
    );
    print(respose.statusCode);
    if (respose.statusCode == 201) {
      isLoading(false);

      data = createStudentModelFromJson(respose.body);
    } else {
      print(respose.statusCode);
    }
  }



   Future uploadImagetoCloud(File file) async {
    final cloudinary = Cloudinary.full(
      apiKey: "479457454347338",
      apiSecret: "JnnD89o0AjOzO8BVZkmyq86mYmk",
      cloudName: "dobdmbei8",
    );

    if (file != null) {
      String filename = DateTime.now()
          .toString()
          .replaceAll("-", "")
          .replaceAll(" ", "")
          .replaceAll(".", "");
      print(filename);
      final response = await cloudinary.uploadResource(CloudinaryUploadResource(
          filePath: file.path,
          fileBytes: file.readAsBytesSync(),
          resourceType: CloudinaryResourceType.image,
          folder: "shaily",
          fileName: 'image$filename',
          progressCallback: (count, total) {
            print('Uploading image from file with progress: $count/$total');
          }));

      if (response.isSuccessful) {
        print('Get your image from with ${response.secureUrl}');
        _imageUrl.value = response.secureUrl!;
      }
    }
  }


  topicChange() async {
    var response =
        await http.put(Uri.parse(EndPoint.changeTopic + data!.data!.id!),
            headers: {
              "Content-Type": "application/json",
              'x-access-token': loginController.otpdata!.accessToken!
            },
            body: jsonEncode({
              "subjectStream": Stream.value,
              "subject": Subject.value,
              "category": Category.value
            }));
    print(response.statusCode);
    if (response.statusCode == 200) {
      isLoading1(false);
      print(response.body);
    } else {
      print(response.statusCode);
    }
  }

  getStudent() async {
    var response = await http.get(
      Uri.parse(EndPoint.getstudent + loginController.otpdata!.data!.id!),
      headers: {
        "Content-Type": "application/json",
        'x-access-token': loginController.otpdata!.accessToken!
      },
    );
    print(response.statusCode);
    if (response.statusCode == 200) {
      isLoading2(false);
      studentdata = studentModelFromJson(response.body);
      print(response.body);
    } else {
      print(response.statusCode);
    }
  }

  createTeacher() async {
    var response = await http.post(Uri.parse(EndPoint.createteacher),
        headers: {
          "Content-Type": "application/json",
          'x-access-token': loginController.otpdata!.accessToken!
        },
        body: jsonEncode({
          "firstName": firstnameController.text,
          "lastName": lastnameController.text,
          "phoneNumber": loginController.numberController.text,
          "Qualification": qualificationController.text,
          "class": [classController.text],
          "category": Category.value,
          "subjectStream": Stream.value,
          "subject": Subject.value,
          "location": {"longitude": long.value, "lattitude": lat.value},

      

    "latestQualification":qualificationController.text,
    "religion":reliegonController.text,
    "nationality":nationalityController.text,
    "address":addressController.text
    
        }));
    print(response.statusCode);
    if (response.statusCode == 201) {
      teacherdata = teacherRegisterModelFromJson(response.body);
      isLoading3(false);
      print(response.body);
    } else {
      print(response.statusCode);
    }
  }

  teacherupdateTopic() async {
    var response =
        await http.put(Uri.parse(EndPoint.updatetopic + teacherdata!.data.id),
            headers: {
              "Content-Type": "application/json",
              'x-access-token': loginController.otpdata!.accessToken!
            },
            body: jsonEncode({
              "subjectStream": Stream.value,
              "category": Category.value,
              "subject": Subject.value
            }));
    print(response.statusCode);
    if (response.statusCode == 200) {
      isLoading4(false);
      print(response.body);
    } else {
      print(response.statusCode);
    }
  }

  getTeacher() async {
    var response = await http.get(
      Uri.parse(EndPoint.getteacher + loginController.otpdata!.data!.id!),
      headers: {
        "Content-Type": "application/json",
        'x-access-token': loginController.otpdata!.accessToken!
      },
    );
    print(response.statusCode);
    if (response.statusCode == 200) {
      isLoading5(false);
      teacher = teacherModelFromJson(response.body);
      print(response.body);
    } else {
      print(response.statusCode);
    }
  }

  getLocation() async {
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied.');
      }
    }
    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request.');
    }
    return await Geolocator.getCurrentPosition();
  }

  livelocation() {
    LocationSettings locationSettings = const LocationSettings(
        accuracy: LocationAccuracy.high, distanceFilter: 100);
    Geolocator.getPositionStream(locationSettings: locationSettings)
        .listen((Position position) {
      lat.value = position.latitude.toString();
      long.value = position.longitude.toString();
    });
  }
}
