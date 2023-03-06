import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shaily/common/style.dart';
import 'package:shaily/controller/login_controller.dart';
import 'package:shaily/controller/register_controller.dart';
import 'package:shaily/widget/button.dart';
import 'package:shaily/widget/logo.dart';

import 'stu_categories.dart';

class StuRegister extends StatelessWidget {
  StuRegister({super.key});
  RegisterController registerController = Get.put(RegisterController());
  LoginController loginController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.bgColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Logo(),
              TField(
                  text: "First Name",
                  keyboardtype: TextInputType.name,
                  controller: registerController.firstnameController,
                  readonly: false),
              TField(
                  keyboardtype: TextInputType.name,
                  text: "Last Name",
                  controller: registerController.lastnameController,
                  readonly: false),
              TField(
                  keyboardtype: TextInputType.phone,
                  text: "Phone Number",
                  controller: loginController.numberController,
                  readonly: true),
                  TField(text: "Email", controller : registerController.emailcontroller, readonly: false, keyboardtype : TextInputType.emailAddress),
              TField(
                  keyboardtype: TextInputType.name,
                  text: "High Qualifications",
                  controller: registerController.qualificationController,
                  readonly: false),
              TField(
                  keyboardtype: TextInputType.name,
                  text: "Select class you prefer ",
                  controller: registerController.classController,
                  readonly: false),
                    TField(
                  keyboardtype: TextInputType.number,
                  text: "Gaurdian's Name ",
                  controller: registerController.gaurdianController,
                  readonly: false),
                  TField(
                  keyboardtype: TextInputType.number,
                  text: "AADHAR Card",
                  controller: registerController.aadharController,
                  readonly: false),
                    TField(
                  keyboardtype: TextInputType.number,
                  text: "PAN Card ",
                  controller: registerController.pancardController,
                  readonly: false),
                    TField(
                  keyboardtype: TextInputType.number,
                  text: "Voter ID ",
                  controller: registerController.voteridController,
                  readonly: false),
                    TField(
                  keyboardtype: TextInputType.name,
                  text: "Nationality ",
                  controller: registerController.nationalityController,
                  readonly: false),
  TField(
                  keyboardtype: TextInputType.name,
                  text : "Reliegon",
                  controller: registerController.reliegonController,
                  readonly: false),
                    TField(
                  keyboardtype: TextInputType.name,
                  text: "Address ",
                  controller: registerController.addressController,
                  readonly: false),

              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              InkWell(
                  onTap: () async {
                    await registerController.getLocation().then((value) {
                      registerController.lat.value = "${value.latitude}";
                      registerController.long.value = "${value.longitude}";
                    });
                    print(registerController.lat.value);
                    print(registerController.long.value);
                    Get.to(() => StuCategories());
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
  final bool readonly;
  final TextInputType keyboardtype;
  final TextEditingController controller;
  const TField(
      {super.key,
      required this.text,
      required this.controller,
      required this.readonly,
      required this.keyboardtype});

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
              controller: controller,
              keyboardType: keyboardtype,
              readOnly: readonly,
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
