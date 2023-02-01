import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:shaily/common/endpoint.dart';
import 'package:shaily/controller/login_controller.dart';
import 'package:shaily/model/subscription_model.dart';

class SubscriptionController extends GetxController {
  LoginController loginController = Get.find();
  RxBool isLoading = true.obs;
  SubscriptionModel? data;
  subscriptionpack() async {
    var response =
        await http.get(Uri.parse(EndPoint.subscriptionpack), headers: {
      "Content-Type": "application/json",
      'x-access-token': loginController.otpdata!.accessToken!
    });
    print(response.statusCode);
    if (response.statusCode == 200) {
      isLoading(false);
      data = subscriptionModelFromJson(response.body);
      print(response.body);
    } else {
      print(response.statusCode);
    }
  }

  createorderpayment() async {
    var response = await http.post(
        Uri.parse(EndPoint.createteacher + "id/subscriptions/id/payments"),
        headers: {
          "Content-Type": "application/json",
          'x-access-token': loginController.otpdata!.accessToken!
        },
        body: jsonEncode({"paymentStatus": "success"}));
    print(response.statusCode);
    if (response.statusCode == 200) {
    } else {
      print(response.statusCode);
    }
  }
}
