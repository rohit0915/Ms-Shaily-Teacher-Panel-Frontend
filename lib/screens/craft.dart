import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../common/style.dart';
import '../widget/bluebox.dart';

class Craft extends StatelessWidget {
  const Craft({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.bgColor,
      appBar: AppBar(
        backgroundColor: Style.bgColor,
        // centerTitle: true,
        elevation: 0,
        title: Text(
          "Art & Crafts",
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
            child: BlueBox2(
              text: "Ceremics Crafts",
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          InkWell(
            child: BlueBox2(
              text: "Fibre & Textiles Crafts",
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          InkWell(
            child: BlueBox2(
              text: "Flowers Crafts",
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          InkWell(
            child: BlueBox2(
              text: "Leather works",
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          InkWell(
            child: BlueBox2(
              text: "Homeware",
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          InkWell(
            child: BlueBox2(
              text: "Fashions",
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          InkWell(
            child: BlueBox2(
              text: "Needle works",
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          InkWell(
            child: BlueBox2(
              text: "Paper Crafts",
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          InkWell(
            child: BlueBox2(
              text: "Woods & Furnitures Crafts",
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          InkWell(
            child: BlueBox2(
              text: "Stone Crafts",
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          InkWell(
            child: BlueBox2(
              text: "Metals Crafts",
            ),
          ),
        ],
      ),
    );
  }
}
