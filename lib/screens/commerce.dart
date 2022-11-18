import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shaily/widget/redbox.dart';

import '../common/style.dart';

class Commerce extends StatelessWidget {
  const Commerce({super.key});

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
          "Commerce",
          style: GoogleFonts.roboto(
              fontSize: 22, color: Colors.black, fontWeight: FontWeight.w500),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          InkWell(
            child: RedBox2(
              text: "Accounting",
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.06,
          ),
          RedBox2(
            text: "Bussiness studies",
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.06,
          ),
          RedBox2(
            text: "Economics",
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.06,
          ),
          RedBox2(
            text: "Bussiness Mathematics",
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.06,
          ),
          RedBox2(
            text: "Informatics",
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.06,
          ),
          RedBox2(
            text: "GST",
          )
        ],
      ),
    );
  }
}
