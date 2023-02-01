import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:shaily/common/style.dart';
import 'package:shaily/controller/login_controller.dart';
import 'package:shaily/screens/choose_panel.dart';
import 'package:shaily/screens/otp.dart';
import 'package:shaily/widget/button.dart';
import 'package:shaily/widget/logo.dart';

class Login extends StatelessWidget {
  Login({super.key});
  LoginController loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.bgColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Logo(),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width - 50,
              child: IntlPhoneField(
                controller: loginController.numberController,
                style: TextStyle(color: Style.fontColor),
                decoration: InputDecoration(
                    labelText: '  Enter Mobile Number',
                    labelStyle: GoogleFonts.roboto(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                        color: Style.fontColor),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
                initialCountryCode: 'IN',
                onChanged: (phone) {
                  // phonenumber = phone.number;
                },
              ),
            ),
          ),
          InkWell(
              onTap: () async {
                await loginController.login();
                if (loginController.isLoading == false) {
                  Get.defaultDialog(
                    title: "Success",
                    content: Text("Your OTP is ${loginController.data!.otp}"),
                    onConfirm: () {
                      Get.to(() => Otp());
                    },
                    onCancel: () {
                      Get.back();
                    },
                  );
                } else {
                  Get.defaultDialog(
                      title: "Error", content: Text("Something went wrong."));
                }
              },
              child: Button(
                text: "Continue",
                height: MediaQuery.of(context).size.height * 0.06,
                width: MediaQuery.of(context).size.width / 2,
              )),
          Text(
            "OR",
            style: GoogleFonts.inter(
                fontSize: 12, fontWeight: FontWeight.w400, color: Colors.black),
          ),
          Column(
            children: [
              InkWell(
                onTap: () async {
                  await signInWithGoogle();
                  if (loginController.isLoading3 == false) {
                    Get.to(() => ChoosePanel());
                  }
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/google.png",
                      scale: 4,
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.04),
                    Text(
                      "Continue With Google",
                      style: GoogleFonts.inter(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    )
                  ],
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              InkWell(
                onTap: () async {
                  await loginController.loginWithFacebook();
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/face.png",
                      scale: 4,
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.04),
                    Text(
                      "Continue With Facebook",
                      style: GoogleFonts.inter(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Future<bool> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    var userEmail = googleUser!.email;
    print(userEmail);
    await loginController.socialLogin(userEmail);
    // Once signed in, return the UserCredential
    await FirebaseAuth.instance.signInWithCredential(credential);
    return true;
  }
}
