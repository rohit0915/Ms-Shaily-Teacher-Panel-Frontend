import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shaily/common/style.dart';
import 'package:shaily/controller/register_controller.dart';
import 'package:shaily/widget/bluebox.dart';

import 'sport1.dart';

class Sport extends StatelessWidget {
  Sport({super.key});
  RegisterController registerController = Get.find();
  List<String> topics = [
    "Batminton",
    "Basketball",
    "Tumbling",
    "Weight Lifting",
    "Dead Lifting",
    "Archery",
    "Bowling",
    "Hockey",
    "Lawn Hockey",
    "Cricket",
    "Driving",
    "Dietician",
    "Gym Trainer",
    "Yoga"
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
          "Sports & Gymnasiam",
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
              physics: NeverScrollableScrollPhysics(),
              itemCount: topics.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    InkWell(
                      onTap: () {
                        registerController.Subject.value = topics[index];
                        print(registerController.Subject.value);
                        Get.to(() => Sport1());
                      },
                      child: BlueBox2(
                        text: topics[index],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03,
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
