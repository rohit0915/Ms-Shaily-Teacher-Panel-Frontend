import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shaily/common/style.dart';
import 'package:shaily/screens/categories.dart';
import 'package:shaily/widget/button.dart';
import 'package:shaily/widget/logo.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.bgColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Logo(),
              TField(text: "First Name"),
              TField(text: "Last Name"),
              TField(text: "Phone Number"),
              TField(text: "High Qualifications"),
              TField(text: "Select class you prefer "),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              InkWell(
                  onTap: () {
                    Get.to(() => Categories());
                  },
                  child: Button(
                    text: "Continue",
                    height: MediaQuery.of(context).size.height * 0.06,
                    width: MediaQuery.of(context).size.width / 2,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

class TField extends StatelessWidget {
  final String text;
  const TField({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: GoogleFonts.roboto(
                fontSize: 18, fontWeight: FontWeight.w400, color: Colors.black),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          TextFormField(
              decoration: InputDecoration(
                  constraints: BoxConstraints(
                      maxHeight: MediaQuery.of(context).size.height * 0.045,
                      maxWidth: MediaQuery.of(context).size.width - 50),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          BorderSide(color: Style.borderColor, width: 0.5)))),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          )
        ],
      ),
    );
  }
}
