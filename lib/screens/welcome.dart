import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:shaily/common/style.dart';
import 'package:shaily/screens/login.dart';
import 'package:shaily/widget/logo.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.bgColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Logo(),
            Container(
              width: MediaQuery.of(context).size.width - 75,
              child: Text.rich(
                TextSpan(
                    text: "Welcome",
                    style: GoogleFonts.roboto(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Style.blue),
                    children: [
                      TextSpan(
                          text:
                              " Lorem ipsum dolor sit amet, consectetur adipiscing elit. Purus tristique vel blandit a nulla interdum eu. Vestibulum massa ut ac amet adipiscing mus vehicula pellentesque sed.",
                          style: GoogleFonts.roboto(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.black))
                    ]),
                textAlign: TextAlign.center,
              ),
            ),
            Center(
              child: InkWell(
                onTap: () {
                  Get.to(() => Login());
                },
                child: Container(
                  alignment: Alignment.center,
                  height: MediaQuery.of(context).size.height * 0.065,
                  width: MediaQuery.of(context).size.width - 80,
                  decoration: BoxDecoration(
                    color: Color(0xFF0065FC),
                    borderRadius: BorderRadius.circular(7.0),
                  ),
                  child: Text(
                    "Proceed",
                    style: GoogleFonts.roboto(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
