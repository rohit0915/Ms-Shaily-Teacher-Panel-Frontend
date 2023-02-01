import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shaily/common/style.dart';
import 'package:shaily/controller/register_controller.dart';
import 'package:shaily/screens/teacher/languages.dart';

import 'package:shaily/widget/bluebox.dart';

import 'cooking.dart';
import 'craft.dart';
import 'music.dart';
import 'sport.dart';

class NonEducational extends StatefulWidget {
  const NonEducational({super.key});

  @override
  State<NonEducational> createState() => _NonEducationalState();
}

class _NonEducationalState extends State<NonEducational> {
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
                // setState(() {
                //   isTapped = true;
                //   isCooking = true;
                //   isCraft = false;
                //   isMusic = false;
                //   isSport = false;
                // });
                registerController.Stream.value = "Cooking / Baking";
                print(registerController.Stream.value);
                Get.to(() => Cooking());
              },
              child: BlueBox(text: "Cooking / Baking")),
          SizedBox(height: MediaQuery.of(context).size.height * 0.06),
          InkWell(
              onTap: () {
                // setState(() {
                //   isTapped = true;
                //   isCooking = false;
                //   isCraft = false;
                //   isMusic = true;
                //   isSport = false;
                // });
                registerController.Stream.value = "Music / Dance";
                print(registerController.Stream.value);
                Get.to(() => Music());
              },
              child: BlueBox(text: "Music / Dance")),
          SizedBox(height: MediaQuery.of(context).size.height * 0.06),
          InkWell(
              onTap: () {
                registerController.Stream.value = "Sports / Gymnasiam";
                print(registerController.Stream.value);
                Get.to(() => Sport());
              },
              child: BlueBox(text: "Sports / Gymnasiam")),
          SizedBox(height: MediaQuery.of(context).size.height * 0.06),
          InkWell(
              onTap: () {
                registerController.Stream.value = "Arts / Crafts";
                print(registerController.Stream.value);
                Get.to(() => Craft());
              },
              child: BlueBox(text: "Arts / Crafts")),
          SizedBox(height: MediaQuery.of(context).size.height * 0.08),
          InkWell(
              onTap: () {
                registerController.Stream.value = "Languages";
                print(registerController.Stream.value);
                Get.to(() => Languages());
              },
              child: BlueBox(text: "Languages")),
        ],
      ),
    );
  }
}
