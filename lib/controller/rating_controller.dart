import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:shaily/common/endpoint.dart';
import 'package:shaily/controller/login_controller.dart';

class RatingController extends GetxController {
  LoginController loginController = Get.find();
  rating() async {
    var response = await http.post(Uri.parse(EndPoint.rating),
        headers: {
          "Content-Type": "application/json",
          'x-access-token': loginController.otpdata!.accessToken!,
        },
        body: jsonEncode({
          "teacherId": "63a95ae11b373ceed88b7c09",
          "studentId": "63a939c3f3827a8906bea997",
          "rating": 10,
          "review": "it's good"
        }));
    print(response.statusCode);
    if (response.statusCode == 200) {
      print(response.body);
    } else {
      print(response.statusCode);
    }
  }
}
