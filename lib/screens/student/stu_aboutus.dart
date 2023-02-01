import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shaily/controller/login_controller.dart';

import '../../common/style.dart';

class StuAboutUs extends StatelessWidget {
  StuAboutUs({super.key});
  LoginController loginController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.bgColor,
      appBar: AppBar(
        backgroundColor: Style.bgColor,
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        title: Text(
          "About us ",
          style: GoogleFonts.roboto(
              fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Column(
          children: [
            Obx(() {
              return loginController.isLoading2 == true
                  ? CircularProgressIndicator()
                  : Text(
                      loginController.aboutdata!.data![0]!.content!,
                      style: GoogleFonts.roboto(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    );
            }),
            // SizedBox(
            //   height: MediaQuery.of(context).size.height * 0.02,
            // ),
            // Text(
            //   "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Et et mattis quisque ridiculus nam sagittis, felis velit. Consectetur pharetra posuere lobortis odio diam. Fringilla nisi, iaculis aliquam, aenean et, sapien sed vitae. Erat nisi quam bibendum imperdiet. Eu congue ullamcorper porta in sit bibendum nam purus neque. Tortor mattis ante feugiat ipsum. Ornare mauris ac nunc in. Gravida tellus volutpat faucibus mattis pulvinar morbi. Sed bibendum tristique ipsum eu integer massa quis ligula ultrices.",
            //   style: GoogleFonts.roboto(
            //       fontSize: 16,
            //       fontWeight: FontWeight.w400,
            //       color: Colors.black),
            // ),
          ],
        ),
      ),
    );
  }
}
