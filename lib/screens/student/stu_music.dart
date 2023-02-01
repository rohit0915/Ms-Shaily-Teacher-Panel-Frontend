import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shaily/common/style.dart';
import 'package:shaily/controller/register_controller.dart';
import 'package:shaily/screens/teacher/register.dart';
import 'package:shaily/widget/bluebox.dart';

import 'stu_music1.dart';

class StuMusic extends StatelessWidget {
  StuMusic({super.key});
  RegisterController registerController = Get.find();
  List<String> topics = [
    "Flute",
    "Voilin",
    "Guitar",
    "Keyboard Instruments",
    "Clarinet",
    "String Instruments",
    "Bass Guitar",
    "Percussion",
    "Piano",
    "Trumnpet",
    "Banjo",
    "Drums",
    "Ubulele",
    "Brass",
    "Drusmet",
    "Xylophone",
    "WoodWind",
    "French horn",
    "Tabla",
    "Ballet Dance",
    "Ballroom",
    "Contemporary",
    "HipHop",
    "Jazz",
    "Folk Dance",
    "Irish Dance",
    "Mordern Dance",
    "Swing Dance",
    "Bharatnatyam",
    "Khatakali",
    "Kathaak",
    "Kutchipudi",
    "Odissi",
    "Sattriya",
    "Manipuri",
    "Mohiniyattam",
    "Western Dance"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.bgColor,
      appBar: AppBar(
        backgroundColor: Style.bgColor,
        // centerTitle: true,
        elevation: 0,
        title: Text(
          "Music & Dancing",
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: topics.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    InkWell(
                      onTap: () {
                        registerController.Subject.value = topics[index];
                        print(registerController.Subject.value);
                        Get.to(() => StuMusic1());
                      },
                      child: BlueBox2(
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
