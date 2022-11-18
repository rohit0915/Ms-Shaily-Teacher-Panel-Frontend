import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shaily/common/style.dart';
import 'package:shaily/widget/button.dart';

class LocateStudent extends StatelessWidget {
  const LocateStudent({super.key});

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
        centerTitle: true,
        title: Text(
          "Locate students near you",
          style: GoogleFonts.poppins(
              fontSize: 20, color: Colors.black, fontWeight: FontWeight.w400),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "assets/map.png",
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            Padding(
              padding: const EdgeInsets.only(left: 15, bottom: 20),
              child: Container(
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.width - 150,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(20.0)),
                child: Text(
                  "Select your prefered distance",
                  style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Style.blue),
                ),
              ),
            ),
            Center(child: Button2())
          ],
        ),
      ),
    );
  }
}
