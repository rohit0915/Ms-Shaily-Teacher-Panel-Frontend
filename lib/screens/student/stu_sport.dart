import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shaily/common/style.dart';
import 'package:shaily/widget/bluebox.dart';

import 'stu_sport1.dart';


class StuSport extends StatelessWidget {
  const StuSport({super.key});

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
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          InkWell(
            onTap: () {
              Get.to(() => StuSport1());
            },
            child: BlueBox2(
              text: "Tumbling",
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          InkWell(
            onTap: () {
              Get.to(() => StuSport1());
            },
            child: BlueBox2(
              text: "Weight Lifting",
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          InkWell(
            onTap: () {
              Get.to(() => StuSport1());
            },
            child: BlueBox2(
              text: "Dead Lifting",
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          InkWell(
            onTap: () {
              Get.to(() => StuSport1());
            },
            child: BlueBox2(
              text: "Archery",
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          InkWell(
            onTap: () {
              Get.to(() => StuSport1());
            },
            child: BlueBox2(
              text: "Bowling",
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          InkWell(
            onTap: () {
              Get.to(() => StuSport1());
            },
            child: BlueBox2(
              text: "Hockey",
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          InkWell(
            onTap: () {
              Get.to(() => StuSport1());
            },
            child: BlueBox2(
              text: "Lawn Hockey",
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          InkWell(
            onTap: () {
              Get.to(() => StuSport1());
            },
            child: BlueBox2(
              text: "Cricket",
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          InkWell(
            onTap: () {
              Get.to(() => StuSport1());
            },
            child: BlueBox2(
              text: "Driving",
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          InkWell(
            onTap: () {
              Get.to(() => StuSport1());
            },
            child: BlueBox2(
              text: "Dietician",
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          InkWell(
            onTap: () {
              Get.to(() => StuSport1());
            },
            child: BlueBox2(
              text: "Gym Trainer",
            ),
          ),
        ],
      ),
    );
  }
}
