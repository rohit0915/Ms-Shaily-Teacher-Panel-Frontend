import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shaily/controller/register_controller.dart';

import '../../common/style.dart';
import '../../widget/bluebox.dart';
import '../../widget/button.dart';
import 'stu_home.dart';

class StuArt1 extends StatelessWidget {
  StuArt1({super.key});
  RegisterController registerController = Get.find();

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
          BlueBox(text: "Art"),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.2,
          ),
          InkWell(
              onTap: () async {
                await registerController.sturegister();
                await registerController.topicChange();
                await registerController.getStudent();
                if (registerController.isLoading == false ||
                    registerController.isLoading1 == false) {
                  Get.defaultDialog(
                    title: "Success",
                    content: Text("Your Profile is Created."),
                    onConfirm: () {
                      Get.to(() => StuHome());
                    },
                  );
                } else {
                  Get.defaultDialog(
                      title: "Error", content: Text("Something went wrong."));
                }
              },
              child: Button2())
        ],
      ),
    );
    ;
  }
}
