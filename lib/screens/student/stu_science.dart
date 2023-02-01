import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shaily/common/style.dart';
import 'package:shaily/controller/register_controller.dart';
import 'package:shaily/widget/redbox.dart';

import 'stu_science1.dart';

class StuScience extends StatelessWidget {
  StuScience({super.key});
  RegisterController registerController = Get.find();
  List<String> topics = [
    "Mathematics",
    "Chemistry",
    "Computer Science",
    "Physics",
    "Psychology",
    "Biology",
    "Home Science",
    "Zoology",
    "Bio Technology",
    "Botany",
    "Microbiology",
    "Electronics",
    "Bio-chemistry",
    "Geology",
    "Environmental Science",
    "Anthrology",
    "Statics",
    "Nursing",
    "Software Engineering",
    "Computer Graphics"
  ];

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
            ListView.builder(
              shrinkWrap: true,
              itemCount: topics.length,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    InkWell(
                      onTap: () {
                        registerController.Subject.value = topics[index];
                        print(registerController.Subject.value);
                        Get.to(() => StuScience1());
                      },
                      child: RedBox2(
                        text: topics[index],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                  ],
                );
              },
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.08),
          ],
        ),
      ),
    );
  }
}
