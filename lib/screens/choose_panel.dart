import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shaily/common/style.dart';

import 'student/stu_register.dart';
import 'teacher/register.dart';

class ChoosePanel extends StatefulWidget {
  const ChoosePanel({super.key});

  @override
  State<ChoosePanel> createState() => _ChoosePanelState();
}

class _ChoosePanelState extends State<ChoosePanel> {
  bool isStudent = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.bgColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: () {
                Get.to(() => Register());
              },
              child: Column(
                children: [
                  Image.asset(
                    "assets/teacher.png",
                    scale: 5,
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                  Text(
                    "I’m a Teacher",
                    style: GoogleFonts.roboto(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  isStudent = true;
                });
                Get.to(() => StuRegister());
              },
              child: Column(
                children: [
                  Image.asset(
                    "assets/student.png",
                    scale: 5,
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                  Text(
                    "I’m a Student ",
                    style: GoogleFonts.roboto(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width - 20,
                child: Column(
                  children: [
                    Text(
                      "Terms and conditions",
                      style: GoogleFonts.roboto(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc ullamcorper risus quis feugiat urna sit elementum sed.",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.roboto(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
