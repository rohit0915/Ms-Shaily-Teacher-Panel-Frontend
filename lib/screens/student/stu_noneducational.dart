import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shaily/common/style.dart';

import 'package:shaily/widget/bluebox.dart';

import 'stu_cooking.dart';
import 'stu_craft.dart';
import 'stu_music.dart';
import 'stu_sport.dart';



class StuNonEducational extends StatefulWidget {
  const StuNonEducational({super.key});

  @override
  State<StuNonEducational> createState() => _StuNonEducationalState();
}

class _StuNonEducationalState extends State<StuNonEducational> {
  // bool isTapped = false;
  // bool isCooking = false;
  // bool isMusic = false;
  // bool isSport = false;
  // bool isCraft = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.bgColor,
      appBar: AppBar(
        backgroundColor: Style.bgColor,
        centerTitle: true,
        elevation: 0,
        title: Text(
          "Non Educational",
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
              onTap: () {
                // setState(() {
                //   isTapped = true;
                //   isCooking = true;
                //   isCraft = false;
                //   isMusic = false;
                //   isSport = false;
                // });
                Get.to(() => StuCooking());
              },
              child: BlueBox(text: "Cooking / Baking")),
          SizedBox(height: MediaQuery.of(context).size.height * 0.06),
          InkWell(
              onTap: () {
                // setState(() {
                //   isTapped = true;
                //   isCooking = false;
                //   isCraft = false;
                //   isMusic = true;
                //   isSport = false;
                // });
                Get.to(() => StuMusic());
              },
              child: BlueBox(text: "Music / Dance")),
          SizedBox(height: MediaQuery.of(context).size.height * 0.06),
          InkWell(
              onTap: () {
                // setState(() {
                //   isTapped = true;
                //   isCooking = false;
                //   isCraft = false;
                //   isMusic = false;
                //   isSport = true;
                // });
                Get.to(() => StuSport());
              },
              child: BlueBox(text: "Sports / Gymnasiam")),
          SizedBox(height: MediaQuery.of(context).size.height * 0.06),
          InkWell(
              onTap: () {
                // setState(() {
                //   isTapped = true;
                //   isCooking = false;
                //   isCraft = true;
                //   isMusic = false;
                //   isSport = false;
                // });
                Get.to(() => StuCraft());
              },
              child: BlueBox(text: "Arts / Crafts")),
          SizedBox(height: MediaQuery.of(context).size.height * 0.08),
          // isTapped
          //     ? InkWell(
          //         onTap: () {
          //           // Get.to(() => LocateStudent());
          //           if (isCooking) {
          //             Get.to(() => Cooking());
          //           }
          //           if (isMusic) {
          //             Get.to(() => Music());
          //           }
          //           if (isSport) {
          //             Get.to(() => Sport());
          //           }
          //           if (isCraft) {
          //             Get.to(() => Craft());
          //           }
          //         },
          //         child: Button2())
          //     : Container()
        ],
      ),
    );
  }
}
