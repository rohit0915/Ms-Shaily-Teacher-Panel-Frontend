import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:shaily/common/endpoint.dart';
import 'package:shaily/model/aboutus_model.dart';
import 'package:shaily/model/legal_model.dart';
import 'package:shaily/model/login_model.dart';
import 'package:shaily/model/otp_model.dart';
import 'package:shaily/model/social_model.dart';

import 'package:shaily/screens/teacher/aboutus.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginController extends GetxController {
  TextEditingController numberController = TextEditingController();
  TextEditingController otpController = TextEditingController();
  RxBool isLoading = true.obs;
  RxBool isLoading1 = true.obs;
  RxBool isLoading2 = true.obs;
  RxBool isLoading3 = true.obs;
  LegalModel? leggaldata;
  AboutusModel? aboutdata;
  LoginModel? data;
  OtpModel? otpdata;
  SocialModel? socialdata;
 
  login() async {
    var response = await http.post(Uri.parse(EndPoint.login),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode({"phone": int.parse(numberController.text)}));
    print(response.statusCode);
    if (response.statusCode == 200) {
      data = loginModelFromJson(response.body);
      print(response.body);
      isLoading(false);
    } else {
      print(response.statusCode);
    }
  }

  verifyOtp() async {
    var response = await http.post(Uri.parse(EndPoint.verifyOtp),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode(
            {"phone": numberController.text, "OTP": otpController.text}));
    print(response.statusCode);
    if (response.statusCode == 200) {
      isLoading1(false);
      otpdata = otpModelFromJson(response.body);
       final prefs = await SharedPreferences.getInstance();


  await prefs.setString('token', otpdata!.accessToken.toString());
    await prefs.setString('id', otpdata!.data!.id.toString());

      print(response.body);
    } else {
      print(response.statusCode);
    }
  }

  about() async {
    var response = await http.get(Uri.parse(EndPoint.aboutus));
    print(response.statusCode);
    if (response.statusCode == 200) {
      isLoading2(false);
      aboutdata = aboutusModelFromJson(response.body);
      print(response.body);
    } else {
      print(response.statusCode);
    }
  }

  Future<bool> loginWithFacebook() async {
    try {
      final result = await FacebookAuth.instance
          .login(permissions: ['public_profile', 'email']);
      if (result.status == LoginStatus.success) {
        final userData = await FacebookAuth.i.getUserData();
        var name = userData['name'];
        var email = userData['email'];
        var code = userData['id'];
        var password = "password";
        if (email != null) {
          // await socialLogin("facebook", email, password, code, name, "code");
          // socialLogin(code, email, name);
        } else {
          // Get.defaultDialog(
          //   title: 'Error!!!',
          //   content: Text(
          //     'No email associated to this id',
          //   ),
          // );
        }
        return true;
      } else {
        return false;
      }
    } catch (error) {
      print(error);
      return false;
    }
  }

  socialLogin(String id) async {
    var response = await http.post(Uri.parse(EndPoint.sociallogin),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode({"socialId": id}));
    print(response.statusCode);
    if (response.statusCode == 200) {
      print(response.body);
      isLoading3(false);
      socialdata = socialModelFromJson(response.body);
    } else {
      print(response.statusCode);
    }
  }

  legal() async {
    var response = await http.get(Uri.parse(EndPoint.legal));
    print(response.statusCode);
    if (response.statusCode == 200) {
      leggaldata = legalModelFromJson(response.body);
    } else {
      print(response.statusCode);
    }
  }
}
