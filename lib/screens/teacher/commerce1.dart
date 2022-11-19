import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shaily/common/style.dart';
import 'package:shaily/widget/bluebox.dart';
import 'package:shaily/widget/button.dart';

import 'home.dart';

class Commerce1 extends StatelessWidget {
  const Commerce1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.bgColor,
      appBar: AppBar(
        backgroundColor: Style.bgColor,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        title: Text(
          "Educational",
          style: GoogleFonts.roboto(
              fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),
        ),
        elevation: 0,
      ),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          BlueBox(text: "Commerce"),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.2,
          ),
          InkWell(
              onTap: () {
                Get.to(() => Home());
              },
              child: Button2())
        ],
      ),
    );
    ;
  }
}
