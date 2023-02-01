import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:shaily/controller/login_controller.dart';
import 'package:shaily/controller/register_controller.dart';

import 'package:shaily/screens/teacher/query.dart';
import 'package:shaily/screens/teacher/rating.dart';

import 'stu_aboutus.dart';
import 'stu_categories.dart';
import 'stu_legal.dart';
import 'stu_query.dart';
import 'stu_rating.dart';

class StuHome extends StatelessWidget {
  StuHome({super.key});
  RegisterController registerController = Get.find();
  LoginController loginController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Center(
              child: Text(
                "You’re all Set to go",
                style: GoogleFonts.roboto(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            InkWell(
              onTap: () async {
                Get.to(() => StuCategories());
              },
              child: Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 20, right: 20),
                padding: EdgeInsets.only(left: 20),
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xFF0065FC).withOpacity(0.54),
                    ),
                    borderRadius: BorderRadius.circular(4.0)),
                child: Text(
                  "Change topic to study >",
                  style: GoogleFonts.roboto(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            InkWell(
              onTap: () {
                Get.to(() => StuQuery());
              },
              child: Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 20, right: 20),
                padding: EdgeInsets.only(left: 20),
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xFFEE7D15).withOpacity(0.54),
                    ),
                    borderRadius: BorderRadius.circular(4.0)),
                child: Text(
                  "Send your query, If any >",
                  style: GoogleFonts.roboto(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      Get.to(() => StuRating());
                    },
                    child: Text(
                      "Rate your experience",
                      style: GoogleFonts.roboto(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  InkWell(
                    onTap: () async {
                      loginController.about();
                      Get.to(() => StuAboutUs());
                    },
                    child: Text(
                      "About us",
                      style: GoogleFonts.roboto(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  InkWell(
                    onTap: () async {
                      await loginController.legal();
                      Get.to(() => StuLegal());
                    },
                    child: Text(
                      "Privacy Policy",
                      style: GoogleFonts.roboto(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFEB4335)),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
