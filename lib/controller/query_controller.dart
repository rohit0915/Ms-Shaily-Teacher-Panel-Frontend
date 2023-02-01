import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:shaily/common/endpoint.dart';
import 'package:shaily/controller/login_controller.dart';
import 'package:shaily/controller/register_controller.dart';

class QueryController extends GetxController {
  RxBool isLoading = true.obs;
  RxBool isLoading1 = true.obs;
  LoginController loginController = Get.find();
  RegisterController registerController = Get.find();
  TextEditingController messageController = TextEditingController();
  addquery() async {
    var response = await http.post(Uri.parse(EndPoint.addquery),
        headers: {
          "Content-Type": "application/json",
          'x-access-token': loginController.otpdata!.accessToken!
        },
        body: jsonEncode({
          "message": messageController.text,
          "studentId": registerController.studentdata!.data!.id
        }));
    print(response.statusCode);
    if (response.statusCode == 201) {
      isLoading(false);
      print(response.body);
    } else {
      print(response.statusCode);
    }
  }

  addquerybyteacher() async {
    var response = await http.post(
        Uri.parse(EndPoint.addquerybyteacher +
            registerController.teacher!.data.id +
            "/queries"),
        headers: {
          "Content-Type": "application/json",
          'x-access-token': loginController.otpdata!.accessToken!
        },
        body: jsonEncode({"message": messageController.text}));
    print(response.statusCode);
    if (response.statusCode == 201) {
      isLoading1(false);
      print(response.body);
    } else {
      print(response.statusCode);
    }
  }
}
