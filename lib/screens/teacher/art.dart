import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shaily/common/style.dart';
import 'package:shaily/widget/redbox.dart';

import 'art1.dart';

class Art extends StatelessWidget {
  const Art({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.bgColor,
      appBar: AppBar(
        backgroundColor: Style.bgColor,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        // centerTitle: true,
        title: Text(
          "Art",
          style: GoogleFonts.roboto(
              fontSize: 22, color: Colors.black, fontWeight: FontWeight.w500),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          InkWell(
            onTap: () {
              Get.to(() => Art1());
            },
            child: RedBox2(
              text: "History",
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.06,
          ),
          InkWell(
            onTap: () {
              Get.to(() => Art1());
            },
            child: RedBox2(
              text: "Sociology",
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.06,
          ),
          InkWell(
            onTap: () {
              Get.to(() => Art1());
            },
            child: RedBox2(
              text: "Philosophy",
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.06,
          ),
          InkWell(
            onTap: () {
              Get.to(() => Art1());
            },
            child: RedBox2(
              text: "Geography",
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.06,
          ),
          InkWell(
            onTap: () {
              Get.to(() => Art1());
            },
            child: RedBox2(
              text: "Political Science",
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.06,
          ),
          InkWell(
            onTap: () {
              Get.to(() => Art1());
            },
            child: RedBox2(
              text: "Law",
            ),
          )
        ],
      ),
    );
  }
}
