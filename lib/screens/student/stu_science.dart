import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shaily/common/style.dart';
import 'package:shaily/widget/redbox.dart';

import 'stu_science1.dart';


class StuScience extends StatelessWidget {
  const StuScience({super.key});

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
          "Science",
          style: GoogleFonts.roboto(
              fontSize: 22, color: Colors.black, fontWeight: FontWeight.w500),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            InkWell(
              onTap: () {
                Get.to(() => StuScience1());
              },
              child: RedBox2(
                text: "Mathematics",
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            InkWell(
              onTap: () {
                Get.to(() => StuScience1());
              },
              child: RedBox2(
                text: "Chemistry",
              ),
            ),
            InkWell(
              onTap: () {
                Get.to(() => StuScience1());
              },
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
            ),
            InkWell(
              onTap: () {
                Get.to(() => StuScience1());
              },
              child: RedBox2(
                text: "Computer Science",
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            InkWell(
              onTap: () {
                Get.to(() => StuScience1());
              },
              child: RedBox2(
                text: "Physics",
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            InkWell(
              onTap: () {
                Get.to(() => StuScience1());
              },
              child: RedBox2(
                text: "Psychology",
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            InkWell(
              onTap: () {
                Get.to(() => StuScience1());
              },
              child: RedBox2(
                text: "Biology",
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            InkWell(
              onTap: () {
                Get.to(() => StuScience1());
              },
              child: RedBox2(
                text: "Home SCience",
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            RedBox2(
              text: "Zoology",
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            RedBox2(
              text: "Bio technology",
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            RedBox2(
              text: "Botany",
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            RedBox2(
              text: "Microbiology",
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            RedBox2(
              text: "Electronics",
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            RedBox2(
              text: "Bio- chemistry",
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            RedBox2(
              text: "Geology",
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            RedBox2(
              text: "Environmental science",
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            RedBox2(
              text: "Anthrology",
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            RedBox2(
              text: "statics",
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            RedBox2(
              text: "Nursing",
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            RedBox2(
              text: "Software Engineering",
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            RedBox2(
              text: "Computer Graphics",
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.08),
          ],
        ),
      ),
    );
  }
}
