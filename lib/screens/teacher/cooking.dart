import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shaily/common/style.dart';
import 'package:shaily/widget/bluebox.dart';

import 'cooking1.dart';


class Cooking extends StatelessWidget {
  const Cooking({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.bgColor,
      appBar: AppBar(
        backgroundColor: Style.bgColor,
        // centerTitle: true,
        elevation: 0,
        title: Text(
          "Cooking / Baking",
          style: GoogleFonts.roboto(
              fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),
        ),
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            InkWell(
              onTap: () {
                Get.to(() => Cooking1());
              },
              child: BlueBox2(
                text: "Indian Cuisine",
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            InkWell(
              onTap: () {
                Get.to(() => Cooking1());
              },
              child: BlueBox2(
                text: "Italian Cuisine",
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            InkWell(
              onTap: () {
                Get.to(() => Cooking1());
              },
              child: BlueBox2(
                text: "Chinese Cuisine",
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            InkWell(
              onTap: () {
                Get.to(() => Cooking1());
              },
              child: BlueBox2(
                text: "Japanese Cuisine",
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            InkWell(
              onTap: () {
                Get.to(() => Cooking1());
              },
              child: BlueBox2(
                text: "French Cuisine",
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            InkWell(
              onTap: () {
                Get.to(() => Cooking1());
              },
              child: BlueBox2(
                text: "Mexican Cuisine",
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            InkWell(
              onTap: () {
                Get.to(() => Cooking1());
              },
              child: BlueBox2(
                text: "Thai Cuisine",
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            InkWell(
              onTap: () {
                Get.to(() => Cooking1());
              },
              child: BlueBox2(
                text: "spanish Cuisine",
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            InkWell(
              onTap: () {
                Get.to(() => Cooking1());
              },
              child: BlueBox2(
                text: "American Cuisine",
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            InkWell(
              onTap: () {
                Get.to(() => Cooking1());
              },
              child: BlueBox2(
                text: "Greek Cuisine",
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            InkWell(
              onTap: () {
                Get.to(() => Cooking1());
              },
              child: BlueBox2(
                text: "Korean Cuisine",
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            InkWell(
              onTap: () {
                Get.to(() => Cooking1());
              },
              child: BlueBox2(
                text: "German Cuisine",
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            InkWell(
              onTap: () {
                Get.to(() => Cooking1());
              },
              child: BlueBox2(
                text: "Labanese Cuisine",
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            InkWell(
              onTap: () {
                Get.to(() => Cooking1());
              },
              child: BlueBox2(
                text: "Russian Cuisine",
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            InkWell(
              onTap: () {
                Get.to(() => Cooking1());
              },
              child: BlueBox2(
                text: "Turkish Cuisine",
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            InkWell(
              onTap: () {
                Get.to(() => Cooking1());
              },
              child: BlueBox2(
                text: "Indonesian Cuisine",
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            InkWell(
              onTap: () {
                Get.to(() => Cooking1());
              },
              child: BlueBox2(
                text: "Malaysian Cuisine",
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            InkWell(
              onTap: () {
                Get.to(() => Cooking1());
              },
              child: BlueBox2(
                text: "Ethopian Cuisine",
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            InkWell(
              onTap: () {
                Get.to(() => Cooking1());
              },
              child: BlueBox2(
                text: "Brazillian Cuisine",
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            InkWell(
              onTap: () {
                Get.to(() => Cooking1());
              },
              child: BlueBox2(
                text: "Vietnamese Cuisine",
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            InkWell(
              onTap: () {
                Get.to(() => Cooking1());
              },
              child: BlueBox2(
                text: "Cuban Cuisine",
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            InkWell(
              onTap: () {
                Get.to(() => Cooking1());
              },
              child: BlueBox2(
                text: "Middle Eastern Cuisine ",
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.08),
          ],
        ),
      ),
    );
  }
}
