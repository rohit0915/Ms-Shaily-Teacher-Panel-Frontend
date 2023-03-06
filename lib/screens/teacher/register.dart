import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shaily/common/style.dart';
import 'package:shaily/controller/login_controller.dart';
import 'package:shaily/controller/register_controller.dart';

import 'package:shaily/widget/button.dart';
import 'package:shaily/widget/logo.dart';

import 'categories.dart';

class Register extends StatefulWidget {
  Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  RegisterController registerController = Get.put(RegisterController());

  LoginController loginController = Get.find();

  final ImagePicker _picker = ImagePicker();

  XFile? certificate;

  XFile? id;

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
                keyboard: TextInputType.name,
                controller: registerController.firstnameController,
                readonly: false,
              ),
              TField(
                text: "Last Name",
                keyboard: TextInputType.name,
                controller: registerController.lastnameController,
                readonly: false,
              ),
              TField(
                text: "Phone Number",
                keyboard: TextInputType.phone,
                controller: loginController.numberController,
                readonly: true,
              ),
              TField(
                  text: "Email",
                  controller: registerController.emailcontroller,
                  readonly: false,
                  keyboard: TextInputType.emailAddress),
              TField(
                text: "High Qualifications",
                keyboard: TextInputType.name,
                controller: registerController.qualificationController,
                readonly: false,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Upload Latest Certificate",
                      style: GoogleFonts.roboto(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                    certificate != null
                        ? Icon(Icons.check)
                        : OutlinedButton(
                            onPressed: () async {
                              final temp = await _picker.pickImage(
                                  source: ImageSource.gallery);

                              setState(() {
                                certificate = temp;
                              });
                            },
                            child: Text("Upload"))
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              TField(
                text: "Select class you prefer ",
                keyboard: TextInputType.name,
                controller: registerController.classController,
                readonly: false,
              ),
              TField(
                  keyboard: TextInputType.name,
                  text: "Nationality ",
                  controller: registerController.nationalityController,
                  readonly: false),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Government Id",
                      style: GoogleFonts.roboto(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                    id != null
                        ? Icon(Icons.check)
                        : OutlinedButton(
                            onPressed: () async {
                              final temp = await _picker.pickImage(
                                  source: ImageSource.gallery);
                              setState(() {
                                id = temp;
                              });
                            },
                            child: Text("Upload"))
                  ],
                ),
              ),
              
              TField(
                  keyboard: TextInputType.name,
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
                    await registerController.uploadImagetoCloud(
                        File(id!.path), File(certificate!.path));
                    print(registerController.lat.value);
                    print(registerController.long.value);
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
  final TextEditingController controller;
  final bool readonly;
  final String text;
  final TextInputType keyboard;
  const TField({
    super.key,
    required this.text,
    required this.controller,
    required this.readonly,
    required this.keyboard,
  });

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
              readOnly: readonly,
              keyboardType: keyboard,
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
