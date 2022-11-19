import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shaily/common/style.dart';

import 'payment.dart';

class Subscription extends StatelessWidget {
  const Subscription({super.key});

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
          "Subscription Plans",
          style: GoogleFonts.poppins(
              fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
        child: Column(
          children: [
            InkWell(
                onTap: () {
                  Get.to(() => Payment());
                },
                child: Image.asset("assets/one.png")),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            InkWell(
                onTap: () {
                  Get.to(() => Payment());
                },
                child: Image.asset("assets/six.png")),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            InkWell(
                onTap: () {
                  Get.to(() => Payment());
                },
                child: Image.asset("assets/twelve.png")),
          ],
        ),
      ),
    );
  }
}
