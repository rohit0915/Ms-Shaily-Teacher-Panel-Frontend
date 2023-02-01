import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shaily/controller/login_controller.dart';
import 'package:shaily/controller/subscription_controller.dart';
import 'package:shaily/screens/teacher/query.dart';

import 'aboutus.dart';
import 'categories.dart';
import 'legal.dart';
import 'locate_student.dart';
import 'rating.dart';
import 'subscription.dart';

class Home extends StatelessWidget {
  Home({super.key});
  LoginController loginController = Get.find();
  SubscriptionController subscriptionController =
      Get.put(SubscriptionController());

  openMap(String long, String lat) async {
    String googleUrl = "";
  }

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
              onTap: () {
                Get.to(() => LocateStudent());
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
                  "Locate Students Near you >",
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
                Get.to(() => Categories());
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
                  "Change Topic to Teach  >",
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
                Get.to(() => Query());
              },
              child: Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 20, right: 20),
                padding: EdgeInsets.only(left: 20),
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xFF008000).withOpacity(0.54),
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
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            InkWell(
              onTap: () async {
                await subscriptionController.subscriptionpack();
                Get.to(() => Subscription());
              },
              child: Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 20, right: 20),
                padding: EdgeInsets.only(left: 20),
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xFFFBBC05).withOpacity(0.54),
                    ),
                    borderRadius: BorderRadius.circular(4.0)),
                child: Text(
                  "Subscription Plans >",
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
                      Get.to(() => Rating());
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
                      await loginController.about();
                      Get.to(() => AboutUs());
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
                      Get.to(() => Legal());
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
