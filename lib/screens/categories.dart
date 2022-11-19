import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shaily/common/style.dart';
import 'package:shaily/screens/teacher/educational.dart';
import 'package:shaily/screens/teacher/noneducational.dart';

import 'package:shaily/widget/bluebox.dart';


import 'package:shaily/widget/redbox.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

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
                Get.to(() => Educational());
              },
              child: RedBox(text: "Educational")),
          SizedBox(height: MediaQuery.of(context).size.height * 0.06),
          InkWell(
            onTap: () {
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
