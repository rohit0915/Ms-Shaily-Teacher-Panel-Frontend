import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shaily/common/style.dart';
import 'package:shaily/controller/register_controller.dart';

import 'package:shaily/widget/bluebox.dart';
import 'package:shaily/widget/button.dart';
import 'package:shaily/widget/redbox.dart';

import 'art.dart';
import 'commerce.dart';
import 'science.dart';

class Educational extends StatefulWidget {
  const Educational({super.key});

  @override
  State<Educational> createState() => _EducationalState();
}

class _EducationalState extends State<Educational> {
  RegisterController registerController = Get.find();
  // bool isScience = false;
  // bool isArt = false;
  // bool isCommerce = false;
  // bool isTapped = false;

  // List<String> sub = ["Science", "Art", "Commerce"];

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
          "Educational",
          style: GoogleFonts.roboto(
              fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
              onTap: () {
                // setState(() {
                //   isScience = true;
                //   isCommerce = false;
                //   isArt = false;
                //   isTapped = true;
                // });
                registerController.Subject.value = "Science";
                print(registerController.Subject.value);
                Get.to(() => Science());
              },
              child
                  // isScience
                  //     ? BlueBox(text: "Science")
                  : RedBox(text: "Science")),
          SizedBox(height: MediaQuery.of(context).size.height * 0.06),
          InkWell(
              onTap: () {
                // setState(() {
                //   isArt = true;
                //   isCommerce = false;
                //   isScience = false;
                //   isTapped = true;
                // });
                registerController.Subject.value = "Art";
                print(registerController.Subject.value);
                Get.to(() => Art());
              },
              child
                  //  isArt ? BlueBox(text: "Art")
                  : RedBox(text: "Art")),
          SizedBox(height: MediaQuery.of(context).size.height * 0.06),
          InkWell(
              onTap: () {
                // setState(() {
                //   isCommerce = true;
                //   isArt = false;
                //   isScience = false;
                //   isTapped = true;
                // });
                registerController.Subject.value = "Commerce";
                print(registerController.Subject.value);
                Get.to(() => Commerce());
              },
              child
                  // isCommerce
                  //     ? BlueBox(text: "Commerce")
                  : RedBox(text: "Commerce")),
          SizedBox(height: MediaQuery.of(context).size.height * 0.08),
          // isTapped
          //     ? InkWell(
          //         onTap: () {
          //           // Get.to(() => LocateStudent());
          //           if (isCommerce) {
          //             Get.to(() => Commerce());
          //           }
          //           if (isArt) {
          //             Get.to(() => Art());
          //           }
          //           if (isScience) {
          //             Get.to(() => Science());
          //           }
          //         },
          //         child: Button2())
          //     : Container()
        ],
      ),
    );
  }
}
