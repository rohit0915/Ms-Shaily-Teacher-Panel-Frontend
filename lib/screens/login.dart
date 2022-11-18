import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:shaily/common/style.dart';
import 'package:shaily/screens/otp.dart';
import 'package:shaily/widget/button.dart';
import 'package:shaily/widget/logo.dart';

class Login extends StatelessWidget {
  const Login({super.key});

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
              onTap: () {
                Get.to(() => Otp());
              },
              child: Button(text: "Continue",
             height: MediaQuery.of(context).size.height * 0.06,
              width: MediaQuery.of(context).size.width/2,
              )),
          Text(
            "OR",
            style: GoogleFonts.inter(
                fontSize: 12, fontWeight: FontWeight.w400, color: Colors.black),
          ),
          Column(
            children: [
              Row(
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
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              Row(
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
              )
            ],
          )
        ],
      ),
    );
  }
}
