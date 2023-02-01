import 'package:flutter/material.dart';

import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shaily/common/style.dart';
import 'package:shaily/controller/register_controller.dart';
import 'package:shaily/widget/bluebox.dart';
import 'dart:ui' as ui;

import 'package:shaily/widget/redbox.dart';

import 'educational.dart';
import 'noneducational.dart';

class Categories extends StatelessWidget {
  Categories({super.key});
  RegisterController registerController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.bgColor,
      appBar: AppBar(
        backgroundColor: Style.bgColor,
        centerTitle: true,
        elevation: 0,
        title: Text(
          "Choose Categories",
          style: GoogleFonts.roboto(
              fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
              onTap: () {
                registerController.Category.value = "Educational";
                print(registerController.Category.value);
                Get.to(() => Educational());
              },
              child: RedBox(text: "Educational")),
          SizedBox(height: MediaQuery.of(context).size.height * 0.06),
          InkWell(
            onTap: () {
              registerController.Category.value = "Non - Educational";
              print(registerController.Category.value);
              Get.to(() => NonEducational());
            },
            child: BlueBox(
              text: "Non Educational",
            ),
          )
        ],
      ),
    );
  }
}

//Add this CustomPaint widget to the Widget Tree

//Copy this CustomPainter code to the Bottom of the File
