import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shaily/common/style.dart';
import 'package:shaily/controller/register_controller.dart';
import 'package:shaily/screens/student/stu_languages.dart';

import 'package:shaily/widget/bluebox.dart';

import 'stu_cooking.dart';
import 'stu_craft.dart';
import 'stu_music.dart';
import 'stu_sport.dart';

class StuNonEducational extends StatefulWidget {
  const StuNonEducational({super.key});

  @override
  State<StuNonEducational> createState() => _StuNonEducationalState();
}

class _StuNonEducationalState extends State<StuNonEducational> {
  RegisterController registerController = Get.find();
  // bool isTapped = false;
  // bool isCooking = false;
  // bool isMusic = false;
  // bool isSport = false;
  // bool isCraft = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.bgColor,
      appBar: AppBar(
        backgroundColor: Style.bgColor,
        centerTitle: true,
        elevation: 0,
        title: Text(
          "Non Educational",
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
              onTap: () {
                registerController.Stream.value = "Cooking / Baking";
                print(registerController.Stream.value);
                Get.to(() => StuCooking());
              },
              child: BlueBox(text: "Cooking / Baking")),
          SizedBox(height: MediaQuery.of(context).size.height * 0.06),
          InkWell(
              onTap: () {
                registerController.Stream.value = "Music / Dance";
                print(registerController.Stream.value);
                Get.to(() => StuMusic());
              },
              child: BlueBox(text: "Music / Dance")),
          SizedBox(height: MediaQuery.of(context).size.height * 0.06),
          InkWell(
              onTap: () {
                registerController.Stream.value = "Sports / Gymnasiam";
                print(registerController.Stream.value);
                Get.to(() => StuSport());
              },
              child: BlueBox(text: "Sports / Gymnasiam")),
          SizedBox(height: MediaQuery.of(context).size.height * 0.06),
          InkWell(
              onTap: () {
                registerController.Stream.value = "Arts / Crafts";
                print(registerController.Stream.value);
                Get.to(() => StuCraft());
              },
              child: BlueBox(text: "Arts / Crafts")),
          SizedBox(height: MediaQuery.of(context).size.height * 0.08),
          InkWell(
              onTap: () {
                registerController.Stream.value = "Languages";
                print(registerController.Stream.value);
                Get.to(() => StuLanguages());
              },
              child: BlueBox(text: "Languages")),
        ],
      ),
    );
  }
}
