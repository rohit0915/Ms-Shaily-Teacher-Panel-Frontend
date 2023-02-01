import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shaily/common/style.dart';
import 'package:shaily/controller/register_controller.dart';
import 'package:shaily/widget/bluebox.dart';

import 'cooking1.dart';

class Cooking extends StatelessWidget {
  Cooking({super.key});
  RegisterController registerController = Get.find();

  List<String> topics = [
    "Cooking/Baking"
    // "Indian Cuisine",
    // "Italian Cuisine",
    // "Chinese Cuisine",
    // "Japanese Cuisine",
    // "French Cuisine",
    // "Mexican Cuisine",
    // "Thai Cuisine",
    // "Spanish Cuisine",
    // "American Cuisine",
    // "Greek Cuisine",
    // "Korean Cuisine",
    // "German Cuisine",
    // "Labanese Cuisine",
    // "Russian Cuisine",
    // "Turkish Cuisine",
    // "Indonesian Cuisine",
    // "Malaysian Cuisine",
    // "Ethopian Cuisine",
    // "Brazillian Cuisine",
    // "Vietnamese Cuisine",
    // "Cuban Cuisine",
    // "Middle Eastern Cuisine"
  ];

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
            ListView.builder(
              shrinkWrap: true,
              itemCount: topics.length,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    InkWell(
                      onTap: () {
                        registerController.Subject.value = topics[index];
                        print(registerController.Subject.value);
                        Get.to(() => Cooking1());
                      },
                      child: BlueBox2(
                        text: topics[index],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                  ],
                );
              },
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.08),
          ],
        ),
      ),
    );
  }
}
